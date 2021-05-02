import 'package:flutter/material.dart';
import 'package:terapidukkanim/widgets/appointment_card.dart';

class AppointmentScreen extends StatelessWidget {
  String appBarTitle = 'Online Randevu Al';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(appBarTitle),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          
          children: [
            Text('data'),
            AppointmentCardWidget(
                imageAsset: 'imageAsset',
                contentText: 'Bireysel Terapi\n(Yetişkin)',
                linkUrl: 'linkUrl'),
            AppointmentCardWidget(
                imageAsset: 'imageAsset',
                contentText: 'Bireysel Terapi|n(Ergen)',
                linkUrl: 'linkUrl'),
            AppointmentCardWidget(
                imageAsset: 'imageAsset',
                contentText: 'Yapılandırılmış Oyun Terapisi\n(Ebeveyn)',
                linkUrl: 'linkUrl'),
            Text('data'),
          ],
        )),
      ),
    );
  }
}
