const router = require('express').Router();
const doctorController = require("../controllers/doctor.controller");

router.get("/", doctorController.selectAll);

module.exports = router;
