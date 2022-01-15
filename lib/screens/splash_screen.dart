import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:text_to_speech/screens/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    doIt();
  }

  Future<void> doIt() async {
    await Future.delayed(Duration(milliseconds: 10000));
    Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 350),
        pageBuilder: (context, _, __) => Home(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Image.asset(
      'assets/images/ezgif.com-gif-maker(2).gif',
      fit: BoxFit.cover,
      height: screenHeight,
      width: screenWidth,
    );
  }
}
