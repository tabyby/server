const router = require('express').Router();
const doctorController = require("../controllers/user.controller");

router.get("/", doctorController.selectAll);

module.exports = router;
