

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



module.exports = { selectAll };
