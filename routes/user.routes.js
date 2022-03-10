const router = require('express').Router();
const userController = require("../controllers/user.controller");

// router.get("/", userController.selectAll);
router.post("/usersignup", userController.signup);
router.post("/userlogin", userController.login);
router.get("/profileUser/:id_user",userController.selectAll)
router.post("/appointement/:id/:id_user",userController.appointement)
router.get("/appointementapp/:id_user",userController.selectapp)





module.exports = router;
