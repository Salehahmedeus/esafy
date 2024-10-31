import 'package:esafy/helpers/const.dart';
import 'package:flutter/material.dart';

class AnimatedCustomIndicator extends StatelessWidget {
  final double dotIndex;

  const AnimatedCustomIndicator({super.key, required this.dotIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          width: dotIndex.round() == index ? 10.0 : 8.0,
          height: dotIndex.round() == index ? 10.0 : 8.0,
          decoration: BoxDecoration(
            color: dotIndex.round() == index ? cream : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: cream),
          ),
        );
      }),
    );
  }
}
