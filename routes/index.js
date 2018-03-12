var express = require('express');
var router = express.Router();
var config = require('../config');

var toRender = (config.kidsmode) ? 'main_kids' : 'index';

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render( toRender, {
    title: 'OscarNoms'
  });
});

module.exports = router;
