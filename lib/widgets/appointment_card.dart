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
    return SingleChildScrollView(
      child: Card(
        child: Column(
          children: [
            Image.asset("assets/images/$theraphyImage"),
            Center(child: Text(therapyName,style: TextStyle(fontWeight: FontWeight.bold),)),
            ElevatedButton(onPressed: () {}, child: Text('Hemen Yer Ayırtın'))
          ],
        ),
      ),
    );
  }
}
