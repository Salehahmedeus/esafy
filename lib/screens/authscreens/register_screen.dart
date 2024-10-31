import 'package:esafy/helpers/const.dart';
import 'package:esafy/helpers/get_size.dart';
import 'package:esafy/providers/auth_provider.dart';
import 'package:esafy/screens/authscreens/login_screen.dart';
import 'package:esafy/screens/welcom_screen.dart';
import 'package:esafy/widgets/clickable/button.dart';
import 'package:esafy/widgets/clickable/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool hidePassword = false;
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthenticationProvider>(builder: (context, AthC, child) {
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
                      'Register',
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Phone is Required!";
                      }

                      if (value.length != 10) {
                        return "Enter Valid Phone!";
                      }

                      return null;
                    },
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
                    onTap: () {},
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                      child: Icon(
                        hidePassword ? Icons.visibility : Icons.visibility_off,
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
                    controller: passwordController,
                    label: "Password",
                    prefixIcon: Image.asset(
                      'assets/icons/password2.png',
                      width: 24,
                      height: 24,
                      color: redColor,
                    ),
                    obSecure: hidePassword,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
                CustomTextField(
                    onTap: () {},
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                      child: Icon(
                        hidePassword ? Icons.visibility : Icons.visibility_off,
                        size: 16,
                        color: redColor,
                      ),
                    ),
                    controller: confirmPasswordController,
                    label: "Confirm Password",
                    prefixIcon: Image.asset(
                      'assets/icons/password2.png',
                      width: 24,
                      height: 24,
                      color: redColor,
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
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
                GestureDetector(
                  onTap: () {
                    showDatePicker(
                            context: context,
                            firstDate: DateTime(1997),
                            lastDate: DateTime(2006))
                        .then((selectedDate) {
                      setState(() {
                        dobController.text =
                            selectedDate!.toIso8601String().substring(0, 10);
                      });
                    });
                  },
                  child: CustomTextField(
                      controller: dobController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "DOB is Required!";
                        }

                        return null;
                      },
                      onTap: () {
                        showDatePicker(
                                context: context,
                                firstDate: DateTime(1997),
                                lastDate: DateTime(2006))
                            .then((selectedDate) {
                          setState(() {
                            dobController.text = selectedDate!
                                .toIso8601String()
                                .substring(0, 10);
                          });
                        });
                      },
                      label: "Date of birth",
                      prefixIcon: Image.asset(
                        'assets/icons/Date.png',
                        width: 20,
                        height: 20,
                        color: redColor,
                      ),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 25,
                ),
                Button(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      Provider.of<AuthenticationProvider>(context,
                              listen: false)
                          .register({
                        "phone": phoneController.text,
                        "password": passwordController.text,
                        "DOB": dobController.text,
                        "latitude": "0.1",
                        "longitude": "0.1"
                      }).then((created) {
                        if (created.first) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(created.last),
                          ));
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => LoginScreen()));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(created.last),
                          ));
                        }
                      });
                    }
                  },
                  title: "Continue",
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
