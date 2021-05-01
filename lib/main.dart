import 'package:flutter/material.dart';

import './screen/homepage_screen.dart';

main(List<String> args) {
runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: "/",
  routes: {
    "/":(context)=> HomePage(),
  },
))  ;
}
