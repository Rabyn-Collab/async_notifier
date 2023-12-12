import 'package:dio/dio.dart';
import 'movie.dart';


class Api{
  static const String baseUrl = 'https://api.themoviedb.org/3/movie';
  static const String getPopularMovie = '$baseUrl/popular';
  static const String getTopRatedMovie = '$baseUrl/top_rated';
  static const String getUpComingMovie = '$baseUrl/upcoming';
  static const String getSearchMovie = 'https://api.themoviedb.org/3/search/movie';
  static const String getGenreMovie = 'https://api.themoviedb.org/3/discover/movie';


}


class  MovieService {

  static Future<MovieList>  searchMovieBy({required int page, required String searchText}) async{

    final dio = Dio();

    try{
      final response = await dio.get(Api.getSearchMovie,
          queryParameters: {
            'api_key': 'f3ad2eea7599eade545772ddb286d350',
            'page': page,
            'query': searchText
          }
      );

      if((response.data['results'] as List).isEmpty){
        throw  'search not match';
      }else{
        final data = MovieList.fromJson (response.data);
        return data;
      }
     }on DioException catch(err){
      print(err);
     throw '${err.message}';
      }
  }


}