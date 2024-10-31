import 'package:esafy/helpers/get_size.dart';
import 'package:flutter/material.dart';

class horizintalSpace extends StatelessWidget {
  const horizintalSpace(int i, {super.key, this.value});
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getSize(context).width * value!,
    );
  }
}

class verticalSpace extends StatelessWidget {
  const verticalSpace({super.key, this.value});
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getSize(context).height * value!,
    );
  }
}
