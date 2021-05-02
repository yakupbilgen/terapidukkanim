import 'package:flutter/material.dart';
import 'package:terapidukkanim/widgets/appointment_card.dart';

class AppointmentScreen extends StatelessWidget {
  String appBarTitle = 'Online Randevu Al';
  String yetiskinLinkUrl="https://www.terapidukkanim.com/bookings-checkout/bireysel-terapi-yeti%C5%9Fkin/book";
  String ergenLinkUrl="https://www.terapidukkanim.com/bookings-checkout/bireysel-terapi-ergen/book";
  String ebeveynLinkUrl="https://www.terapidukkanim.com/service-page/yap%C4%B1land%C4%B1r%C4%B1lm%C4%B1%C5%9F-oyun-terapisi-ebeveyn";

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
            AppointmentCardWidget(
              theraphyImage: 'bireysel_terapi_yetiskin.png',
              therapyName: 'Bireysel Terapi (Yetişkin)',
              theraphyUrl: yetiskinLinkUrl
            ),
            AppointmentCardWidget(
              theraphyImage: 'bireysel_terapi_ergen.png',
              therapyName: 'Bireysel Terapi (Ergen)',
              theraphyUrl: ergenLinkUrl,
            ),
            AppointmentCardWidget(
              theraphyImage: 'yapilandirilmis_oyun_terapisi.png',
              therapyName: 'Yapılandırılmış Oyun Terapisi (Ebeveyn)',
              theraphyUrl: ebeveynLinkUrl,
            ),
          ],
        )),
      ),
    );
  }
}
