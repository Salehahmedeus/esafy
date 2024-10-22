import 'package:esafy/helpers/const.dart';
import 'package:esafy/helpers/get_size.dart';
import 'package:esafy/screens/home_screen.dart';
import 'package:esafy/widgets/button.dart';
import 'package:esafy/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            key: formkey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(children: [
                    Image.asset("assets/chipShape2.png"),
                    Positioned(
                      top: getSize(context).height * 0.12,
                      left: getSize(context).width * 0.1,
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 64,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                color: cream,
                              ),
                              height: getSize(context).height * 0.06,
                              width: getSize(context).width * 0.13,
                              child: const Icon(
                                Icons.arrow_back_rounded,
                                size: 28,
                              )),
                        ),
                      ),
                    )
                  ]),
                  SizedBox(
                    height: getSize(context).height * 0.001,
                  ),
                  CustomTextField(
                      controller: phoneController,
                      label: "Phone number",
                      prefixIcon: Image.asset(
                        'assets/icons/phone2.png',
                        width: 21,
                        height: 20,
                        color: redColor,
                      ),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                  SizedBox(
                    height: getSize(context).height * 0.0001,
                  ),
                  CustomTextField(
                      controller: passwordController,
                      label: "Password",
                      prefixIcon: Image.asset(
                        'assets/icons/password2.png',
                        width: 24,
                        height: 24,
                        color: redColor,
                      ),
                      suffixIcon: Image.asset(
                        'assets/icons/eye.png',
                        width: 20,
                        height: 20,
                        color: redColor,
                      ),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                  Button(
                    title: "Login",
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                  )
                ],
              ),
            )));
  }
}
