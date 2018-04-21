const videoApp = {
  movieGenres(data, genres) {
    genres.forEach((genre, index) => {
      videoApp.vm.genres.push({
        name : genre,
        movies : data.filter(movie => movie.genre_name === genre)
      })
    })
  },

  vm : new Vue({
    el: "#app",

    data : {
      message : "Welcome to OscarNoms",

      genres: []
    },

    methods : {

    },

    delimiters : ["${", "}"]
  })
}

videoApp.movieGenres(appData.movies, ["Drama", "Comedy", "Adventure"]);
