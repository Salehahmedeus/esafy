import 'package:esafy/helpers/const.dart';
import 'package:esafy/helpers/get_size.dart';
import 'package:esafy/providers/auth_provider.dart';
import 'package:esafy/screens/mainscreens/home.dart';
import 'package:esafy/screens/authscreens/register_screen.dart';
import 'package:esafy/screens/welcom_screen.dart';
import 'package:esafy/widgets/clickable/button.dart';
import 'package:esafy/widgets/clickable/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
  bool hidePassword = false;
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthenticationProvider>(builder: (context, athC, _) {
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
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) => WelcomScreen()));
                              },
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
                        ),
                      )
                    ]),
                    SizedBox(
                      height: getSize(context).height * 0.001,
                    ),
                    CustomTextField(
                  onTap: () {},

                        controller: phoneController,
                        label: "Phone number",
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Phone is Required!";
                          }

                          if (value.length != 10) {
                            return "Enter Valid Phone!";
                          }

                          return null;
                        },
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
                  onTap: () {},

                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              hidePassword = !hidePassword;
                            });
                          },
                          child: Icon(
                            hidePassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            size: 16,
                            color: redColor,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password is Required!";
                          }

                          if (value.length < 8) {
                            return "Password Must be 8 charachters at least";
                          }

                          return null;
                        },
                        obSecure: hidePassword,
                        controller: passwordController,
                        label: "Password",
                        prefixIcon: Image.asset(
                          'assets/icons/password2.png',
                          width: 24,
                          height: 24,
                          color: redColor,
                        ),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    Button(
                      title: "Login",
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          Provider.of<AuthenticationProvider>(context,
                                  listen: false)
                              .login({
                            "phone": phoneController.text.toString(),
                            "password": passwordController.text.toString()
                          }).then((logedIn) {
                            if (logedIn.first) {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => HomeScreen()));
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text(logedIn.last),
                              ));
                            }
                          });
                        }
                      },
                    )
                  ],
                ),
              )));
    });
  }
}
