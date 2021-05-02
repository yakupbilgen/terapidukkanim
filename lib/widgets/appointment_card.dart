import 'package:flutter/material.dart';

class AppointmentCardWidget extends StatelessWidget {
  AppointmentCardWidget(
      {Key key,
      @required this.theraphyImage,
      @required this.therapyName,
      @required this.theraphyUrl})
      : super(key: key);
String theraphyImage;
String therapyName;
String theraphyUrl;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset("assets/images/${theraphyImage}"),
          Text('terapi türü'),
          ElevatedButton(onPressed: () {}, child: Text('Hemen Yer Ayırtın'))
        ],
      ),
    );
  }
}
