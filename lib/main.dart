import 'package:flutter/material.dart';
import 'package:text_to_speech/screens/home.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:text_to_speech/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokemon Characters',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
        ),
      ),
      home: SplashScreen(),
    );
  }
}
