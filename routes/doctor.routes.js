const router = require("express").Router();
const doctorController = require("../controllers/doctor.controller");

router.get("/", doctorController.selectAll);
router.post("/signup", doctorController.signup);
router.post("/login", doctorController.login);
router.post("/api/postBlogs", doctorController.insertBlogs);
router.get("/api/selectBlogs", doctorController.selectBlogs);
router.delete("/api/deleteBlog/:id_blog",doctorController.deleteBlog);
router.get("/api/getAppointment",doctorController.getAppointment);
module.exports = router;
