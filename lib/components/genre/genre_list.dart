import 'package:flutter/material.dart';
import 'package:upcomingmovieapp/models/genre.dart';

class GenreList extends StatelessWidget {
  final List<Genre> genres;
  double height;
  double width;

  GenreList(this.genres, {this.height, this.width});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: this.height,
      width: this.width,
      child: ListView.builder(
        addAutomaticKeepAlives: true,
        itemCount: this.genres.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Text(this.genres[index].name,
                textAlign: TextAlign.left, style: TextStyle(fontSize: 16.0)),
            semanticContainer: true,
          );
        },
      ),
    );
  }
}
