const router = require('express').Router();
const adminController = require("../controllers/admin.controller");

router.get("/", adminController.selectAll);

module.exports = router;
