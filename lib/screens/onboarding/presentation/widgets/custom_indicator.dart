import 'package:dots_indicator/dots_indicator.dart';
import 'package:esafy/helpers/const.dart';
import 'package:flutter/material.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key, @required this.dotIndex});
  final double? dotIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: dotIndex!.toInt(),
      decorator: DotsDecorator(
        color: Colors.transparent,
        activeColor: cream,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: cream),
        ),
      ),
    );
  }
}
