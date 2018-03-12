var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET home page. */

 router.get('/', function(req, res) {
   connect.query(`SELECT * FROM tbl_movies`, (err, result) => {
     if (err) {
       throw err; console.log(err);
     } else {
      console.log (result);

       res.render( 'allMovies', {
         title: 'OscarNoms adults',
         movData: result
       });
     }
   });
});


router.get('/:movie', function(req, res){
  connect.query(`SELECT * FROM tbl_movies where movie_id="${req.params.movie}"`, (err, result) => {
    if (err) {
      throw err;
      console.log(err);
    } else {
      console.log(result[0]);

      res.render('singleMovie', {
        title: "Movies",
        movData: result[0]
      });
    }
  });
});

// router.get('/', function(req, res, next) {
//   connect.query(`SELECT * FROM tbl_movies where movie_genre = "drama"`, (err, drama) => {
//     if (err) {
//       throw err; console.log(err);
//     } else {
//       console.log (drama);
//       res.render( 'adults', {
//         title: 'OscarNoms adults',
//         drama: drama
//       });
//     }
//   });
// });

// router.get('/', function(req, res, next) {
//   connect.query(`SELECT * FROM tbl_movies where movie_genre = "comedy"`, (err, comedy) => {
//     if (err) {
//       throw err; console.log(err);
//     } else {
//       console.log (comedy);
//       res.render( 'adults', {
//         title: 'OscarNoms adults',
//         comedy: comedy
//       });
//     }
//   });
// });

module.exports = router;
