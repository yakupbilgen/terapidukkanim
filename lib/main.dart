import 'package:flutter/material.dart';

import './screen/homepage_screen.dart';
import './screen/appointment_screen.dart';

main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/appointmentScreen": (context) => AppointmentScreen(),
      },
    ),
  );
}
