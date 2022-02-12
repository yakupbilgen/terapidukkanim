import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'open_url_widget.dart';

class MyFBA extends StatelessWidget {
  const MyFBA({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String phoneNumber = '+905453798993';

    return FloatingActionButton(
      child: Icon(FontAwesomeIcons.whatsapp),
      backgroundColor: Colors.green,
      onPressed: () => openUrl('tel:$phoneNumber'),
    );
  }
}
