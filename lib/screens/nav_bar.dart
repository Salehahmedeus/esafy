import 'package:esafy/helpers/const.dart';
import 'package:esafy/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        index == 0
            ? const HomeScreen()
            : const Center(
                child: Text("Profile"),
              ),
        Positioned(
          bottom: 12,
          right: 5,
          left: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // height: getSize(context).height * 0.1,
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: redColor, width: 2),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            index = 0;
                          });
                        },
                        icon: (index == 0
                            ? SvgPicture.asset(
                                'assets/icons/home_icon_fill.svg',
                                height: 30,
                                width: 30)
                            : SvgPicture.asset(
                                'assets/icons/home_icon_outlined.svg',
                                height: 30,
                                width: 30)),
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          color: redColor,
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            index = 1;
                          });
                        },
                        icon: (index == 0
                            ? SvgPicture.asset(
                                'assets/icons/user_Icon_outlined.svg',
                                height: 30,
                                width: 30)
                            : SvgPicture.asset(
                                'assets/icons/user_icon_filled.svg',
                                height: 30,
                                width: 30)),
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                          color: redColor,
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 50,
          left: MediaQuery.of(context).size.width / 2 - 37, // Center the button
          width: 74,
          child: Container(
            width: 75,
            height: 75,
            decoration: ShapeDecoration(
              color: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side: BorderSide(
                    color: Color(0xffFC7885), width: 6), // Add border
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'SOS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
