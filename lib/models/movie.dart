import 'genre.dart';

class Movie {
  final int id;
  final String title;
  final List<Genre> genres;
  final String releaseDate;
  final String posterPath;
  final String overview;

  Movie(
      {this.id,
      this.title,
      this.genres,
      this.releaseDate,
      this.posterPath,
      this.overview});

  factory Movie.fromJson(Map<String, dynamic> json, List<Genre> genreList) {
    return Movie(
        id: json['id'],
        title: json['title'],
        genres: genreList,
        releaseDate: json['release_date'],
        posterPath: json['poster_path'],
        overview: json['overview']);
  }
}
