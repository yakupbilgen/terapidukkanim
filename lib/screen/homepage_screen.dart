import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screen/bottomappbar/about_us.dart';
import '../screen/bottomappbar/contact.dart';
import '../screen/bottomappbar/home.dart';
import '../screen/bottomappbar/personel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  bottomNavigatorBarSelectedItem(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return HomeScreenBottomBar();
        break;
      case 1:
        return PersonelScreenBottomBar();
        break;
      case 2:
        return AboutUsScreenBottomBar();
        break;
      case 3:
        return ContactScreenBottomBar();
        break;
      default:
        return HomeScreenBottomBar();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.instagram),
            onPressed: () {},
          )
        ],
        title: Text('Terapi Dükkanım'),
      ),
      body: bottomNavigatorBarSelectedItem(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.home),
            label: 'Anasayfa',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.people_alt),
            label: 'Personel',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.source),
            label: 'Hakkımızda',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.contact_phone),
            label: 'İletişim',
          ),
        ],
        onTap: (int index) {
          selectedIndex = index;
          setState(() {});
        },
      ),
    );
  }
}
