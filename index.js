const express = require("express");
const adminroutes = require("./routes/admin.routes.js");
const userroutes = require("./routes/user.routes.js");
const doctorroutes = require("./routes/doctor.routes.js");
const cors = require("cors");
var items = require("./database-mysql");

const app = express();
const PORT = process.env.PORT || 3000;

app.use(express.json());
app.use(cors());
app.use(express.urlencoded({ extended: true }));
app.use(express.static(__dirname + "/../client/public"));

app.use("/user", userroutes);
app.use("/doctor", doctorroutes);
app.use("/admin", adminroutes);
app.listen(PORT, function () {
  console.log("listening on port 3000!");
});
