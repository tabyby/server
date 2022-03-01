const router = require('express').Router();
const userController = require("../controllers/user.controller");

router.get("/", userController.selectAll);
router.post("/usersignup", userController.signup);
router.post("/userlogin", userController.login);
router.get("/profileUser",userController.selectAll)


module.exports = router;
