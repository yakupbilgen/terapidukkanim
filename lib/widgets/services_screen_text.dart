import 'package:flutter/material.dart';

class FirstText extends StatelessWidget {
  FirstText({Key key, @required this.firstText}) : super(key: key);
  final String firstText;
  @override
  Widget build(BuildContext context) {
    return Text(
      firstText,
      style: TextStyle(
        fontSize: Theme.of(context).textTheme.headline5.fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class SubText extends StatelessWidget {
  SubText({Key key, @required this.subText}) : super(key: key);
  final String subText;
  @override
  Widget build(BuildContext context) {
    return Text(
      subText,
      style: TextStyle(
        fontSize: Theme.of(context).textTheme.headline6.fontSize,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
