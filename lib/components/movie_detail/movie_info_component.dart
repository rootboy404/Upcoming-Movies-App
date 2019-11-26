import 'package:flutter/material.dart';
import 'package:upcomingmovieapp/components/genre/genre_list.dart';
import 'package:upcomingmovieapp/components/text_components/data_release_component.dart';
import 'package:upcomingmovieapp/components/text_components/title_component.dart';
import 'package:upcomingmovieapp/models/genre.dart';

class MovieInfoComponent extends StatelessWidget {
  final String _title;
  final String _releaseDate;
  final List<Genre> _genres;

  MovieInfoComponent(this._title, this._releaseDate, this._genres);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.0,
      child: Card(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TitleComponent(this._title),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DataReleaseComponent(this._releaseDate),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GenreList(this._genres, height: 150, width: 100),
              ),
            ]),
      ),
    );
  }
}
