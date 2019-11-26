import 'package:flutter/material.dart';
import 'package:upcomingmovieapp/components/image_components/poster_component.dart';
import 'package:upcomingmovieapp/components/movie_detail/movie_info_component.dart';
import 'package:upcomingmovieapp/components/movie_detail/movie_overview_component.dart';
import 'package:upcomingmovieapp/models/movie.dart';

class UpcomingMoviesDetails extends StatelessWidget {
  final Movie movie;

  UpcomingMoviesDetails(this.movie);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Upcoming Movies Detail'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            PosterComponent(this.movie.posterPath),
            Padding(
                padding: const EdgeInsets.all(12.0),
                child: MovieInfoComponent(this.movie.title,
                    this.movie.releaseDate, this.movie.genres)),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: MovieOverViewComponent(this.movie.overview),
            )
          ],
        ),
      ),
    );
  }
}
