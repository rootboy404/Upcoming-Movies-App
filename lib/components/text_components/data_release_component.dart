import 'package:flutter/material.dart';

class DataReleaseComponent extends StatelessWidget {
  final String _releaseDate;
  static const _RELEASE_DATA = 'Release Date: ';

  DataReleaseComponent(this._releaseDate);

  @override
  Widget build(BuildContext context) {
    return Text(
      _RELEASE_DATA + this._releaseDate,
      style: TextStyle(
          fontSize: 18.0, fontStyle: FontStyle.italic, color: Colors.grey[800]),
    );
  }
}
