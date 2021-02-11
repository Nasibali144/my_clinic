import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:my_clinic/pages/clinic_catalog.dart';
import 'package:my_clinic/pages/main_page.dart';

class HomePage extends StatefulWidget {

  static final String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var _pages = [
    MainPage(),
    ClinicCatalog(),
    ClinicCatalog(),
    ClinicCatalog()
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('My Clinic', style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            padding: EdgeInsets.symmetric(horizontal: 15),
              icon: Icon(AntDesign.notification,
              color: Colors.black, size: 25,),
              onPressed: () {}
              )
        ],
      ),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.grey[900],
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesome.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(AntDesign.appstore_o),
            label: 'menu'
          ),
          BottomNavigationBarItem(
            icon: Icon(Entypo.location),
            label: 'location'
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'account'
          ),
        ],
      ),
    );
  }
}
