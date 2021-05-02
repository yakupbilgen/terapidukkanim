import 'package:flutter/material.dart';

class AppointmentCardWidget extends StatelessWidget {
  AppointmentCardWidget(
      {Key key,
      @required String imageAsset,
      @required String contentText,
      @required String linkUrl})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset('name'),
          Text('terapi türü'),
          ElevatedButton(onPressed: () {}, child: Text('Hemen Yer Ayırtın'))
        ],
      ),
    );
  }
}
