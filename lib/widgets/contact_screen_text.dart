import 'package:flutter/material.dart';

class ContactScreenText extends StatelessWidget {
  ContactScreenText({Key key, @required this.text}):super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize: Theme.of(context).textTheme.headline5.fontSize),);
  }
}