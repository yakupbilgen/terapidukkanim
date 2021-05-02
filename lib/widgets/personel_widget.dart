import 'package:flutter/material.dart';

class PersonelWidget extends StatelessWidget {
  PersonelWidget(
      {Key key, @required this.title, @required this.name, @required this.text})
      : super(key: key);
  final String title;
  final String name;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headline5.fontSize,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              name,
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headline5.fontSize,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headline6.fontSize),
            ),
            ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, "/appointmentScreen"),
                child: Text('Randevu Almak İçin Tıklayınız.'))
          ],
        ),
      ),
    );
  }
}
