const router = require("express").Router();
const adminController = require("../controllers/admin.controller");

router.post("/login", adminController.login);
router.post("/signup", adminController.signup);
router.get("/", adminController.selectAll);
router.post("/insertadmin", adminController.insertAdmins);
module.exports = router;
