import 'package:esafy/helpers/const.dart';
import 'package:esafy/screens/login_screen.dart';
import 'package:esafy/screens/register_screen.dart';
import 'package:esafy/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 330,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/chipShapeW.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/ambulanceLogo.svg',
                    height: 132.54,
                  ),
                  const Text(
                    'Esafy',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 64,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.asset(
                      'assets/icons/welcomeIcon.png',
                      height: 36.23,
                      width: 36.94,
                    ),
                  ),
                  const Text(
                    'SOS Emergency Request ',
                    style: TextStyle(
                      color: Color(0xFF10112B),
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Image.asset(
                  'assets/icons/welcomeIcon.png',
                  height: 36.23,
                  width: 36.94,
                ),
              ),
              const Text(
                'Notify Passerby ',
                style: TextStyle(
                  color: Color(0xFF10112B),
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Image.asset(
                  'assets/icons/welcomeIcon.png',
                  height: 36.23,
                  width: 36.94,
                ),
              ),
              const Text(
                'Deaf Special Needs feature ',
                style: TextStyle(
                  color: Color(0xFF10112B),
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ],
          ),
          const SizedBox(height: 64),
          // Buttons
          Button(
            title: "Login",
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
            backgroudcolor: redColor,
            textColor: white,
          ),
          const SizedBox(height: 12),
          Button(
            title: "Register",
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const RegisterScreen(),
                ),
              );
            },
            backgroudcolor: white,
            textColor: redColor,
          ),
        ],
      ),
    );
  }
}
