import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upcomingmovieapp/components/genre/genre_list.dart';
import 'package:upcomingmovieapp/components/image_components/poster_component.dart';
import 'package:upcomingmovieapp/components/text_components/data_release_component.dart';
import 'package:upcomingmovieapp/components/text_components/title_component.dart';
import 'package:upcomingmovieapp/models/movie.dart';
import 'package:upcomingmovieapp/screens/upcoming_movies_details.dart';

class MovieListItem extends StatelessWidget {
  final Movie movie;

  MovieListItem(this.movie);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => callMovieDetailsScreen(context),
        child: Material(
          borderRadius: new BorderRadius.circular(6.0),
          elevation: 2.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: PosterComponent(this.movie.posterPath, width: 150.0),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TitleComponent(this.movie.title)),
                    Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: DataReleaseComponent(this.movie.releaseDate)),
                    GenreList(this.movie.genres, height: 180.0, width: 110.0)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void callMovieDetailsScreen(BuildContext context) {
    debugPrint(this.movie.title);
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return UpcomingMoviesDetails(this.movie);
    }));
  }
}
