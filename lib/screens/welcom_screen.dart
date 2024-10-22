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
          Stack(
            children: [
              Image.asset("assets/chipShapeW.png"),
              Center(
                heightFactor: 1.4,
                child: SvgPicture.asset('assets/icons/ambulanceLogo.svg')
              ),
              const Center(
                heightFactor: 6,
                child: Text(
                  'Esafy',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 64,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              )
            ],
          ),
          const Text(
            'Esafy',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 1),
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
          const SizedBox(height: 20),
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
          )
        ],
      ),
    );
  }
}
