import 'package:flutter/material.dart';

class MovieOverViewComponent extends StatelessWidget {
  final String _overview;

  MovieOverViewComponent(this._overview);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600.0,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Overview :',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  this._overview.toString() != null
                      ? this._overview.toString()
                      : 'Sorry this movie dont have overview.',
                  style: TextStyle(
                    fontSize: 16.0,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
