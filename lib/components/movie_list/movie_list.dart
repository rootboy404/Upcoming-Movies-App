import 'package:flutter/material.dart';
import 'package:flutter_paginator/flutter_paginator.dart';
import 'package:upcomingmovieapp/components/movie_list/movie_list_item.dart';
import 'package:upcomingmovieapp/models/movie.dart';
import 'package:upcomingmovieapp/models/movie_list_data.dart';
import 'package:upcomingmovieapp/service/movies_service.dart';

class MovieList extends StatefulWidget {
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {

  MovieService movieService = MovieService();
  GlobalKey<PaginatorState> paginatorGlobalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Paginator.listView(
      pageLoadFuture: sendCountriesDataRequest,
      pageItemsGetter: listItemsGetter,
      listItemBuilder: listItemBuilder,
      loadingWidgetBuilder: loadingWidgetMaker,
      errorWidgetBuilder: errorWidgetMaker,
      emptyListWidgetBuilder: emptyListWidgetMaker,
      totalItemsGetter: totalPagesGetter,
      pageErrorChecker: pageErrorChecker,
      scrollPhysics: BouncingScrollPhysics(),
    );
  }

  Future<MovieListData> sendCountriesDataRequest(int page) async {
    return movieService.sendMoviesDataRequest(page);
  }

  List<Movie> listItemsGetter(MovieListData movieListData) {
    List<Movie> list = [];
    movieListData.movieList.forEach((value) {
      list.add(value);
    });
    return list;
  }

  Widget listItemBuilder(value, int index) {
    return MovieListItem(value);
  }

  Widget loadingWidgetMaker() {
    return Container(
      alignment: Alignment.center,
      height: 160.0,
      child: CircularProgressIndicator(),
    );
  }

  Widget errorWidgetMaker(MovieListData movieListData, retryListener) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(movieListData.errorMessage),
        ),
        FlatButton(
          onPressed: retryListener,
          child: Text('Retry'),
        )
      ],
    );
  }

  Widget emptyListWidgetMaker(MovieListData movieListData) {
    return Center(
      child: Text('No Movie in the list'),
    );
  }

  int totalPagesGetter(MovieListData movieListData) {

    return movieListData.total;
  }

  bool pageErrorChecker(MovieListData movieListData) {
    return movieListData.statusCode != 200;
  }


}
