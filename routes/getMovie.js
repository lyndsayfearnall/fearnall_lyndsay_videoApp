var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET home page. */
router.get('/:movie', function(req, res){
  connect.query(`SELECT * FROM tbl_movies where movie_id="${req.params.movie}"`, (err, result) => {
    if (err) {
      throw err;
      console.log(err);
    } else {
      console.log(result[0]);

      res.render('singleMovie', {
        title: "Browse Movies",
        movData: result[0]
      });
    }
  });
});

module.exports = router;
