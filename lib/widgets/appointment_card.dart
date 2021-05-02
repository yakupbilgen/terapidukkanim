import 'package:flutter/material.dart';
import '../widgets/open_url_widget.dart';

class AppointmentCardWidget extends StatelessWidget {
  AppointmentCardWidget(
      {Key key,
      @required this.theraphyImage,
      @required this.therapyName,
      @required this.theraphyUrl})
      : super(key: key);

  final String theraphyImage;
  final String therapyName;
  final String theraphyUrl;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        child: Column(
          children: [
            Image.asset("assets/images/$theraphyImage"),
            Center(
                child: Text(
              therapyName,
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            ElevatedButton(
                onPressed: () => openUrl(theraphyUrl),
                child: Text('Hemen Yer Ayırtın'))
          ],
        ),
      ),
    );
  }
}
