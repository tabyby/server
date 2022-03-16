var db = require("../database-mysql");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
// var JWTR =  require('jwt-redis').default;
// var redisClient = redis.createClient();
// var jwtr = new JWTR(redisClient);

//////
var selectAll = function (req, res) {
  db.query("SELECT * FROM doctor", (err, result) => {
    if (err) {
      res.status(500).send(err);
    } else {
      res.status(200).send(result);
      console.log(result);
    }
  });
};
var getAppointment = function (req, res) {
  db.query("SELECT * FROM appointment", (err, data) => {
    if (err) {
      res.status(500).send(err);
    } else {
      res.status(200).send(data);
    }
  });
};
var selectBlogs = function (req, res) {
  db.query("SELECT * FROM blogs", (err, items) => {
    if (err) {
      res.status(500).send(err);
    } else {
      res.status(200).send(items);
    }
  });
};

var insertBlogs = function (req, res) {
  var str = "INSERT INTO blogs (title,img,texte) VALUES (?,?,?) ";
  var params = [req.body.title, req.body.img, req.body.texte];
  db.query(str, params, (err, result) => {
    err ? console.log(err) : res.send(result);
  });
};

var deleteBlog = function (req, res) {
  console.log(req.params);
  var par = req.params.id_blog;
  console.log(par);
  var strDelete = "DELETE FROM blogs WHERE id_blog = ?";
  db.query(strDelete, par, (err, result) => {
    if (err) {
      console.log(err);
      res.send(err);
    } else {
      res.send(result);
    }
  });
};

/////// signup for doctors
var signup = function (req, res) {
  var {
    firstName,
    lastName,
    email,
    password,
    phoneNumber,
    field,
    location,
    profilePicture,
    university,
    categoryId,
  } = req.body;
  bcrypt.hash(password, 10, (err, hash) => {
    if (err) {
      return res.status(500).send({ msg: err });
    } else {
      db.query(
        "INSERT INTO doctor (firstName,lastName,email,password,phoneNumber,field,location,profilePicture,university,yearsofexperience,cnam,latitude,longtitude,categoryId) VALUES (?,?,?,?,?,?,?,?,?,?)",
        [
          firstName,
          lastName,
          email,
          hash,
          phoneNumber,
          field,
          location,
          profilePicture,
          university,
          yearsofexperience,
          req.body.latitude,
          req.body.longtitude,
          categoryId,
        ],
        (err, items) => {
          if (err) {
            res.status(500).send(err);
          } else {
            res.status(200).send(items);
          }
        }
      );
    }
  });
};
///////////// login for doctors

var login = function (req, res) {
  var { email } = req.body;
  db.query(`SELECT * FROM doctor WHERE email = ?`, [email], (err, result) => {
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
          return res.status(401).send({
            msg: "Email or password is incorrect!",
          });
        }
        if (bResult) {
          const token = jwt.sign(
            { id: result[0].id },
            "the-super-strong-secrect",
            { expiresIn: "1h" }
          );

          return res.status(200).send({
            msg: "logged in successfully",
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
/////////// this is for evry doctor appointement

var doctorapp = function (req, res) {
  var str =
    "select * from appointment where id=(SELECT ID FROM doctor WHERE id=?)";
  var params = [req.params.id];
  db.query(str, params, (err, result) => {
    if (err) {
      console.log(err);
    } else {
      res.send(result);
    }
  });
};

module.exports = {
  selectBlogs,
  selectAll,
  signup,
  login,
  insertBlogs,
  deleteBlog,
  getAppointment,
  doctorapp,
};
