const router = require("express").Router();
const doctorController = require("../controllers/doctor.controller");

router.get("/", doctorController.selectAll);
router.post("/signup", doctorController.signup);
router.post("/login", doctorController.login);
router.post("/api/postBlogs", doctorController.insertBlogs);
router.get("/api/selectBlogs", doctorController.selectBlogs);

module.exports = router;
