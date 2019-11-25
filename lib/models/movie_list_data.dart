import 'package:upcomingmovieapp/models/movie.dart';

class MovieListData{

  List<Movie> movieList;
  int statusCode;
  String errorMessage;
  int total;
  int nItems;

  MovieListData({this.movieList, this.statusCode,this.errorMessage,this.total,this.nItems});


  MovieListData.withError(String errorMessage) {
    this.errorMessage = errorMessage;
  }

}