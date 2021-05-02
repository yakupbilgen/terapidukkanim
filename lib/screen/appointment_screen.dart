import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  String appBarTitle = 'Online Randevu Al';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(appBarTitle),
      ),
      body: Center(
        child: Text('data'),
      ),
    );
  }
}
