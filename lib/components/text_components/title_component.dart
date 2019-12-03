import 'package:flutter/material.dart';

class TitleComponent extends StatelessWidget {
  final String title;

  TitleComponent(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.title,
      overflow: TextOverflow.clip,
      maxLines: 2,
      softWrap: false,
      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
    );
  }
}
