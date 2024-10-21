import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.label,
      this.suffixIcon,
      this.prefixIcon,
      this.fontSize = 24,
      this.fontWeight = FontWeight.w500,
      this.isEnabled = true,
      required this.controller});

  final String label;
  final double? fontSize;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final FontWeight fontWeight;
  final bool isEnabled;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 36, right: 36, top: 10, bottom: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: controller,
            enabled: isEnabled,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red.withOpacity(0.4)),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              suffixIcon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(child: suffixIcon),
                ],
              ),
              prefixIcon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(child: prefixIcon),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
