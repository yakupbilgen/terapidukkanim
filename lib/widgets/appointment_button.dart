import 'package:flutter/material.dart';

class AppointmentButton extends StatelessWidget {
  const AppointmentButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Container(
      width: deviceSize.width,
      height: deviceSize.height * 0.05,
      color: Colors.grey,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.all(Radius.circular(100)),
      //   color: Colors.black,
      // ),
      child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, "/appointmentScreen"),
          child: Text('Randevu Almak İçin Tıklayın')),
    );
  }
}
