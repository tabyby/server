const router = require("express").Router();
const doctorController = require("../controllers/doctor.controller");

router.get("/", doctorController.selectAll);
router.post("/signup", doctorController.signup);
router.post("/login", doctorController.login);
// router.get('/logout',auth,function(req,res){
//   req.user.deleteToken(req.token,(err,user)=>{
//       if(err) return res.status(400).send(err);
//       res.sendStatus(200);
//   });
// });

module.exports = router;
