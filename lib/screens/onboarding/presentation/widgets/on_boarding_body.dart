import 'package:esafy/helpers/const.dart';
import 'package:esafy/helpers/get_size.dart';
import 'package:esafy/screens/onboarding/presentation/widgets/custom_button.dart';
import 'package:esafy/screens/onboarding/presentation/widgets/animated_custom_indicator.dart';
import 'package:esafy/screens/onboarding/presentation/widgets/custom_page_view.dart';
import 'package:esafy/screens/welcom_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;
  bool _isLastPage = false;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {
          _isLastPage = (pageController?.page ?? 0).round() == 2;
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Stack(
        children: [
          CustomPageView(
            pageController: pageController,
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: getSize(context).height * 0.20,
            child: AnimatedBuilder(
              animation: pageController!,
              builder: (context, child) {
                return AnimatedCustomIndicator(
                  dotIndex: pageController?.page ?? 0,
                );
              },
            ),
          ),
          Visibility(
            visible: !_isLastPage,
            child: Positioned(
              top: getSize(context).height * 0.075,
              right: getSize(context).width * 0.08,
              child: Container(
                width: 61,
                height: 50,
                decoration: ShapeDecoration(
                  color: white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Skip',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 2.5,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              left: getSize(context).width * 0.1,
              right: getSize(context).width * 0.1,
              bottom: getSize(context).height * 0.06,
              child: CustomGeneralButton(
                onTap: () {
                  if (pageController!.page! < 2) {
                    pageController?.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  } else {
                    Get.to(() => const WelcomScreen());
                  }
                },
                text: pageController!.hasClients
                    ? (pageController?.page == 2 ? 'Get started' : 'Next')
                    : 'Next',
              )),
        ],
      ),
    );
  }
}
