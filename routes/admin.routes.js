const router = require('express').Router();
const adminController = require("../controllers/admin.controller");

router.get("/", adminController.selectAll);
router.get("/api/getUsers",adminController.getUsers);
router.delete("/api/deleteUsers/:id",adminController.deleteUsers);
router.get("/api/getDoctors",adminController.getDocs);
router.delete("/api/deleteDocs/:id",adminController.deleteDocs)
module.exports = router;
