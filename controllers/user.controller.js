var db = require("../database-mysql");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");


//////////////// signup for users 
var signup = function (req, res) {
  var {
    userName,
    email,
    password,
    phoneNumber,
  } = req.body;
   if(req.body.userName.length>=5&&req.body.email.length>6&&req.body.password.length>8 &&req.body.password.length<25){
  bcrypt.hash(password, 10, (err, hash) => {
    if (err) {
      return res.status(500).send({ msg: err });
    } else  {
      db.query(
        "INSERT INTO users (userName,email,password,phoneNumber) VALUES (?,?,?,?)",
        [
          userName,
          email,
          hash,
          phoneNumber,
          
        ],
        (err, items) => {
          if (err) {
            res.status(500).send(err);
          } else {
            res.status(200).send(items);
            console.log(items);
            
          }
        }
      );
    }
  })}else{
    console.log("nope");
  }
};

///////////// login for Users

var login = function (req, res) {
  var { email } = req.body;
  db.query(`SELECT * FROM users WHERE email = ?`, [email], (err, result) => {
    // user does not exists
    if (err) {
      throw err;
    }
    if (!result.length) {
      return res.status(401).send({
        msg: "Email or password is incorrect!",
      });
    }
    // check password
    bcrypt.compare(
      req.body.password,
      result[0]["password"],
      (bErr, bResult) => {
        // wrong password
        if (bErr) {
          throw bErr;
          // return res.status(401).send({
          //   msg: "Email or password is incorrect!",
          // });
        }
        if (bResult) {
          const token = jwt.sign(
            { id: result[0].id },
            "the-super-strong-secrect",
            { expiresIn: "1h" }
          );

          return res.status(200).send({
            token,
            user: result[0],
          });
        }
        return res.status(401).send({
          msg: "Username or password is incorrect!",
        });
      }
    );
  });
};
////// profile for user 
var selectAll = function (req, res) {
  var str="SELECT (userName) FROM users WHERE id_user=? "
  var params=req.params.id_user
  db.query(str,params, (err, result) => {
    if (err) {
      res.status(500).send(err);
      console.log(err);
    } else {
      res.status(200).send(result);
    }
  });
};
///// user appointement  
var appointement=function(req,res){
  var {date ,
      name ,
      dateOfBirth ,
      phoneNumber ,
      time }=req.body
      
      var str=`INSERT INTO appointment (date,name,dateOfBirth,phoneNumber,time,id,id_user) VALUES (?,?,?,?,?,(SELECT id from doctor where id=?),(SELECT id_user from users where id_user=?))`
  var str1="SELECT * FROM appointment"
  db.query(str1,(err,result)=>{
    if(err){
      console.log(err);
    }else{
      for(var i=0;i<result.length;i++){
        if(result[i]["date"]===req.body.date && result[i]["time"]===req.body.time){
          console.log("there is appoinetement in this time");
          return "mawjooud"
        }
      }
      var para=[req.params.id]
      var k=[req.params.id_user]
          db.query(str,[date,name,dateOfBirth,phoneNumber,time,para,k],(err,result)=>{
              if(err){
                res.status(500).send(err)
              }else{
               
                res.status(200).send(result)
               console.log("appointement has been set be on time :)")
              }
            })
        
    }
  })
}
var selectapp=function(req,res){
  var str="select * from appointment where id_user=(select id_user from users where id_user=?)"
  var params=[req.params.id_user]
  db.query(str,params,(err,result)=>{
    if(err){
      console.log(err);
    }else{
      res.send(result)
    }
  })
}






module.exports = { selectAll,signup,login,appointement,selectapp };
