import 'package:flutter/material.dart';

import '../../widgets/contact_screen_text.dart';
import '../../widgets/open_url_widget.dart';

class ContactScreenBottomBar extends StatelessWidget {
  String mailAdress = "iletisim@terapidukkanim.com";
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return Center(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Expanded(
              child: Column(
            children: [
              ContactScreenText(text: 'Bizlere'),
              ElevatedButton(
                onPressed: () => openUrl("mailto:$mailAdress"),
                child: Text('iletisim@terapidukkanim.com'),
              ),
              ContactScreenText(text: 'Adresinden ulabilirsiniz.'),
              ContactScreenText(text: '\nUnutmayın!'),
              ContactScreenText(text: 'Sizler için buradayız.'),
            ],
          )),
          Expanded(
            flex: 1,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
