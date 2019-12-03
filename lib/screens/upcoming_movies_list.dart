import 'package:flutter/material.dart';
import 'package:upcomingmovieapp/components/movie_list/movie_list.dart';

class UpcomingMoviesList extends StatefulWidget {
  @override

  _UpcomingMoviesListState createState() => _UpcomingMoviesListState();

}

class _UpcomingMoviesListState extends State<UpcomingMoviesList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Upcoming Movies App - UMA'),
        ),
        body: MovieList());
  }
}
