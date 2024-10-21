import 'package:esafy/helpers/const.dart';
import 'package:esafy/helpers/get_size.dart';
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
                child: SvgPicture.asset('assets/icons/ambulanceLogo.svg'),
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
          SizedBox(height: 30),
          // Options List
          Column(
            children: [
              optionItem("Be a hero "),
              optionItem("Be a man"),
              optionItem("Dont be a coward"),
              optionItem("Call for an ambulance"),
            ],
          ),
          SizedBox(height: 30),
          // Buttons
          const Button(
            title: "Login",
            backgroudcolor: redColor,
            textColor: white,
          ),
          const SizedBox(height: 20),
          const Button(
            title: "Register",
            backgroudcolor: white,
            textColor: redColor,
          )
        ],
      ),
    );
  }

  Widget optionItem(String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          SizedBox(width: 20),
          Icon(Icons.local_hospital, color: Colors.red),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
