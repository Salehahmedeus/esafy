import 'package:esafy/helpers/const.dart';
import 'package:esafy/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then((_) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const MyHomePage(title: 'Flutter Demo Home Page')));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: SvgPicture.asset('assets/Logo.svg'),
      ),
    );
  }
}
