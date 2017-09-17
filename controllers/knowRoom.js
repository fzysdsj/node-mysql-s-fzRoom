//索阁模块
var express = require('express');
var router = express.Router();
router.get('/', function(req, res, next) {
  res.render('author');
  return;
});
module.exports = router;