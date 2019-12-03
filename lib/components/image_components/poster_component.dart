import 'package:flutter/material.dart';

class PosterComponent extends StatelessWidget {
  final String posterPath;
  double width;

  PosterComponent(this.posterPath, {this.width});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage(this.posterPath.toString() != null
          ? 'https://image.tmdb.org/t/p/original/' + this.posterPath.toString()
          : 'https://cdn5.vectorstock.com/i/1000x1000/60/19/404-error-the-page-not-found-with-ghost-vector-20356019.jpg'),
      width: this.width,
    );
  }
}
