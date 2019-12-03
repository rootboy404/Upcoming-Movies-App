import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:query_params/query_params.dart';
import 'package:upcomingmovieapp/models/genre.dart';
import 'package:upcomingmovieapp/constant/constant.dart';

class GenreService {

  Future<List<Genre>> genreList() async {

    List<Genre> genres = new List();

    URLQueryParams queryParams = new URLQueryParams();
    queryParams.append('api_key', API_KEY_VALUE);
    Response res =
        await get(GENRE_MOVIE_LIST + queryParams.toString(), headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
    });
    if (res.statusCode == 200) {
      var data = jsonDecode(res.body);

      var rest = data['genres'] as List;
      rest.forEach((json) {
        genres.add(Genre.fromJson(json));
      });
      return genres;
    } else {
      throw 'Unable to load genre list ';
    }
  }
}
