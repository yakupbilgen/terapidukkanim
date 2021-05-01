import 'package:flutter/material.dart';

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
        return AppBarHomeScreen();
        break;
      case 1:
        return AppBarPersonelScreen();
        break;
      case 2:
        return AppBarAboutUsScreen();
        break;
      case 3:
        return AppBarContactScreen();
        break;
      default:
        return AppBarHomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
            icon: Icon(Icons.contact_mail),
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
