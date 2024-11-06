import 'package:esafy/helpers/get_size.dart';
import 'package:flutter/material.dart';

class HorizintalSpace extends StatelessWidget {
  const HorizintalSpace(int i, {super.key, this.value});
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getSize(context).width * value!,
    );
  }
}

class VerticalSpace extends StatelessWidget {
  const VerticalSpace({super.key, this.value});
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getSize(context).height * value!,
    );
  }
}
