import 'package:flutter/material.dart';
import 'package:upcomingmovieapp/screens/upcoming_movies_list.dart';

void main() => runApp(UpcomingMoviesApp());

class UpcomingMoviesApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UpcomingMoviesList(),
    );
  }
}
