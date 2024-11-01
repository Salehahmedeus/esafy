import 'package:esafy/screens/onboarding/presentation/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, @required this.pageController});
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        PageViewItem(
          image: 'assets/onboarding1.1.png',
          width: 390,
          height: 302,
          title: 'Fast SOS Emergency Request',
          subtitle:
              'Smart and Fast Gateway for the Esafy Corporation for Ambulance Services',
        ),
        PageViewItem(
          image: 'assets/onboarding2.2.png',
          width: 390,
          height: 390,
          title: 'Notify Passerby',
          subtitle: 'Try our new smart E Service Request',
        ),
        PageViewItem(
          image: 'assets/onboarding3.png',
          width: 390,
          height: 390,
          title: 'Deaf Special Needs feature',
          subtitle:
              'Easily Identify the Condition of a Deaf Patient through Pre-Prepared Options',
        )
      ],
    );
  }
}
