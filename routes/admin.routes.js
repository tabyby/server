const router = require("express").Router();
const adminController = require("../controllers/admin.controller");

router.post("/login", adminController.login);
router.post("/signup", adminController.signup);
router.get("/", adminController.selectAll);
router.post("/insertadmin", adminController.insertAdmins);
router.get("/api/getUsers",adminController.getUsers);
router.delete("/api/deleteUsers/:id_user",adminController.deleteUsers);
router.get("/api/getDoctors",adminController.getDocs);
router.delete("/api/deleteDocs/:id",adminController.deleteDocs)
module.exports = router;
