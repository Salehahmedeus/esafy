import 'package:esafy/helpers/get_size.dart';
import 'package:esafy/screens/onboarding/presentation/widgets/space_widget.dart';
import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      this.title,
      this.subtitle,
      this.image,
      this.width,
      this.height});
  final String? title;
  final String? subtitle;
  final String? image;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const verticalSpace(value: 0.15),
        SizedBox(
          height: getSize(context).height * 0.48,
          child: Container(
            alignment: Alignment.center,
            child: Image.asset(
              image!,
              width: width!,
              height: height!,
              alignment: const Alignment(1, 0.2),
            ),
          ),
        ),
        const verticalSpace(value: 0.005),
        Text(
          title!,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        const verticalSpace(value: 0.025),
        Text(
          subtitle!,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
      ],
    );
  }
}
