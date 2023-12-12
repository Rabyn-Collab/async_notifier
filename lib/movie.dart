


class MovieList{
  final int page;
  final List<Movie> results;
  MovieList({required this.page, required this.results});

  factory MovieList.fromJson(Map<String, dynamic> json){
    return MovieList(
        page: json['page'],
        results: (json['results'] as List).map((e) => Movie.fromJson(e)).toList()
    );
  }
}

class Movie {


  final int id;
  final String title;
  final String overview;
  final String release_date;
  final double vote_average;
  final bool isFavorite;
  final String poster_path;



  Movie({
    required this.id,
    required this.title,
    required this.overview,
    required this.release_date,
    required this.vote_average,
    required this.poster_path,
    required this.isFavorite,
  });


  factory Movie.fromJson(Map<String, dynamic> json){

    return Movie(
        id: json['id'] ?? '',
        title: json['title'] ?? '',
        overview: json['overview'] ?? '',
        release_date: json['release_date'] ?? '',
        vote_average:json['vote_average'] == null ? 0.0 :double.parse('${json['vote_average']}'),
        poster_path:json['poster_path'] == null ? '': 'https://image.tmdb.org/t/p/w600_and_h900_bestv2${json['poster_path']}',
        isFavorite: false,
    );
  }


  factory  Movie.empty(){
    return Movie(
        id: 0,
        title: 'no-data',
        overview:  '',
        release_date: '',
        vote_average: 0.0,
        poster_path: '',
        isFavorite: false,
    );
  }



}