import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:query_params/query_params.dart';
import 'package:upcomingmovieapp/models/genre.dart';
import 'package:upcomingmovieapp/models/movie.dart';
import 'package:upcomingmovieapp/constant/constant.dart';
import 'package:upcomingmovieapp/models/movie_list_data.dart';

import 'genre_service.dart';

class MovieService {
  GenreService genreService = new GenreService();

  Future<MovieListData> sendMoviesDataRequest(int page) async {

    try {
      List<Genre> genreList = await _getGenreList();
      List<Movie> movieList = List();

      URLQueryParams queryParams = new URLQueryParams();
      queryParams.append('api_key', API_KEY_VALUE);
      queryParams.append('page', page);

      Response res =
          await get(LIST_MOVIE_URL + queryParams.toString(), headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
      });

      var data = jsonDecode(res.body);
      var rest = data['results'] as List;

      if (rest.isNotEmpty) {
        rest.forEach((json) {
          List<Genre> genreByMovie = List();
          var genreListRestId = json['genre_ids'] as List;

          genreListRestId.forEach((idGenre) {
            genreByMovie.add(genreList.firstWhere(
                (value) => value.id.toString() == idGenre.toString()));
          });

          movieList.add(Movie.fromJson(json, genreByMovie));
        });
      }

      return MovieListData(
          movieList: movieList,
          statusCode: res.statusCode,
          total: data['total_results'],
          nItems: movieList.length);
    } catch (e) {
      if (e is IOException) {
        return MovieListData.withError(
            'Please check your internet connection.');
      } else {
        print(e.toString());
        return MovieListData.withError('Something went wrong.');
      }
    }
  }

  Future<List<Genre>> _getGenreList() async {
    return await genreService.genreList().then((lista) {
      return lista;
    });
  }
}
