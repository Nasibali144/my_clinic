import 'package:flutter/material.dart';
import 'package:my_clinic/pages/clinic_catalog.dart';
import 'package:my_clinic/pages/home_page.dart';
import 'package:my_clinic/pages/hospital_page.dart';
import 'package:my_clinic/pages/main_page.dart';
import 'package:my_clinic/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashPage(),
      routes: {
        SplashPage.id: (context) => SplashPage(),
        HomePage.id: (context) => HomePage(),
        MainPage.id: (context) => MainPage(),
        ClinicCatalog.id: (context) => ClinicCatalog(),
        HospitalPage.id: (context) => HospitalPage(),
      },
    );
  }
}


