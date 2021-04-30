import 'package:flutter/material.dart';

import './screen/homepage_screen.dart';

main(List<String> args) {
runApp(MaterialApp(
  initialRoute: "/",
  routes: {
    "/":(context)=> HomePage(),
  },
))  ;
}
