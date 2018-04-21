var express = require('express');
var videoController = require('../controllers/videoController');
var router = express.Router();

router.get('/', videoController.get_all_movies);

router.get('/movies/:id/:movie', videoController.get_one_movie);

// router.post('/api', videoController.pos_new_review);

module.exports = router;
