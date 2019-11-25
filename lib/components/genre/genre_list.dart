import 'package:flutter/material.dart';
import 'package:upcomingmovieapp/models/genre.dart';

class GenreList extends StatelessWidget {
  final List<Genre> genres;


  GenreList(this.genres);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.0,
      width: 110.0,
      child: ListView.builder(
        addAutomaticKeepAlives: true,

        itemCount: this.genres.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(child: Text(this.genres[index].name , textAlign: TextAlign.left, style: TextStyle(fontSize: 16.0)), semanticContainer: true ,);
        },
      ),
    );
  }
}
