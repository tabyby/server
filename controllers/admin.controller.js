

var db = require("../database-mysql");

////// 
var selectAll = function (req, res) {
  db.query("SELECT * FROM items", (err, items) => {
    if (err) {
      res.status(500).send(err);
    } else {
      res.status(200).send(items);
    }
  });
};
var getUsers = function (req,res){
  db.query("SELECT * FROM users",(err,data)=>{
    if(err){
      res.status(404).send(err);
    }
    res.status(200).send(data)
  })
};
var getDocs = function(req,res){
  db.query("SELECT * FROM doctor",(err,data)=>{
    if(err){
      res.status(404).send(err);
    }
    else {
      res.status(200).send(data)
    }
  })
}

var deleteDocs = function(req,res) {
  var par = req.params.id;
  var delStr = "DELETE FROM doctor WHERE id = ?";
  db.query(delStr,par,(err,result)=>{
    if(err){
      res.status(404).send(err);
    }
    else {
      res.status(200).send(result);
    }
  })
}

var deleteUsers = function(req,res){
  var par = req.params.id
  var strDel = "DELETE FROM users WHERE id = ?";
  db.query(strDel,par,(err,result)=>{
    if(err){
      res.status(404).send(err);
    }
    else {
      res.status(200).send(result);
    }
  })
}



module.exports = { selectAll,getUsers,deleteUsers,getDocs,deleteDocs };
