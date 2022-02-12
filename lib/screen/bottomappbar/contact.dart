import 'package:flutter/material.dart';

import '../../widgets/contact_screen_text.dart';
import '../../widgets/open_url_widget.dart';

class ContactScreenBottomBar extends StatelessWidget {
  final String mailAdress = "iletisim@terapidukkanim.com";
  @override
  Widget build(BuildContext context) {
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
              TextButton(
                onPressed: () => openUrl("mailto:$mailAdress"),
                child: Text(
                  'iletisim@terapidukkanim.com',
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: Colors.white, backgroundColor: Colors.blue),
                ),
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
