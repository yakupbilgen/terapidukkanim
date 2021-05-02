import 'package:flutter/material.dart';

import '../../widgets/services_screen_text.dart';

class ServicesScreenBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                FirstText(firstText: 'Aile Terapisi'),
                SubText(subText: 'Nitelikli Hizmet'),
                SizedBox(
                  height: 20,
                ),
                FirstText(firstText: 'Çift Terapisi'),
                SubText(subText: 'Daha Sağlıklı, Daha Mutlu Bir Siz'),
                SizedBox(
                  height: 20,
                ),
                FirstText(firstText: 'Bireysel Terapi'),
                SubText(subText: 'Sizin İçin Buradayım'),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, "/appointmentScreen"),
                    child: Text('Randevu Almak İçin Tıklayın')),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(),
          ),
        ],
      )),
    );
  }
}
