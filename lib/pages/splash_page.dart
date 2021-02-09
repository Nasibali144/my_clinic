import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_clinic/animations/fade_animation.dart';
import 'package:my_clinic/pages/home_page.dart';

class SplashPage extends StatefulWidget {

  static final String id = 'splash_page';

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  _initTimer() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, HomePage.id);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initTimer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //padding: EdgeInsets.all(40),
        color: Colors.white,
        width: double.infinity,
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FadeAnimation(
              child: Image(
                image: AssetImage('assets/images/splash/splash_3.jpg'),
                height: 350,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 25,),
            FadeAnimation(child: Text("My Clinic", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),),
          ],
        ),
      ),
    );
  }
}
