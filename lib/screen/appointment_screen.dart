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
              theraphyImage: 'imageAsset',
              therapyName: 'Bireysel Terapi\n(Yetişkin)',
              theraphyUrl: 'linkUrl',
            ),
            AppointmentCardWidget(
              theraphyImage: 'imageAsset',
              therapyName: 'Bireysel Terapi|n(Ergen)',
              theraphyUrl: 'linkUrl',
            ),
            AppointmentCardWidget(
              theraphyImage: 'imageAsset',
              therapyName: 'Yapılandırılmış Oyun Terapisi\n(Ebeveyn)',
              theraphyUrl: 'linkUrl',
            ),
            Text('data'),
          ],
        )),
      ),
    );
  }
}
