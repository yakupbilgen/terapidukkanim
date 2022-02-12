import 'package:flutter/material.dart';

import 'appointment_button.dart';

class PersonelWidget extends StatelessWidget {
  final String image;
  final String title;
  final String name;
  final String desc;

  PersonelWidget(
      {Key key,
      @required this.image,
      @required this.title,
      @required this.name,
      @required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            SizedBox(
              width: deviceSize.width,
              height: deviceSize.height * 0.2,
              child: Image.asset(this.image),
            ),
            SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headline5.fontSize,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              name,
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headline5.fontSize,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              desc,
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headline6.fontSize),
            ),
            SizedBox(height: 20),
            AppointmentButton(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
