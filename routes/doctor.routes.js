const router = require("express").Router();
const doctorController = require("../controllers/doctor.controller");
var passport = require("passport");
var GoogleStrategy = require("passport-google-oidc");
require('dotenv').config()

router.get("/", doctorController.selectAll);
router.post("/signup", doctorController.signup);
router.post("/login", doctorController.login);
// router.get('/logout',auth,function(req,res){
//   req.user.deleteToken(req.token,(err,user)=>{
//       if(err) return res.status(400).send(err);
//       res.sendStatus(200);
//   });
// });
router.post("/api/postBlogs", doctorController.insertBlogs);
router.get("/api/selectBlogs", doctorController.selectBlogs);
router.delete("/api/deleteBlog/:id_blog",doctorController.deleteBlog);
router.get("/api/getAppointment",doctorController.getAppointment);
router.get("/doctors",doctorController.selectAll)



module.exports = router;
