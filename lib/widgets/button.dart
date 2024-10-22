import 'package:esafy/helpers/const.dart';
import 'package:esafy/helpers/get_size.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final Color? backgroudcolor;
  final Color? textColor;

  final Function onPressed;
  const Button(
      {super.key,
      required this.title,
      this.backgroudcolor = redColor,
      this.textColor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(backgroudcolor),
          padding: WidgetStateProperty.all(
            EdgeInsets.symmetric(
              horizontal: getSize(context).width * 0.32,
              vertical: getSize(context).height * 0.020,
            ),
            
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(color: redColor, width: 2)),
          ),
        ),
        onPressed: () {
          onPressed();
        },
        child: SizedBox(
          width: getSize(context).width * 0.30,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: textColor ?? white,
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ));
  }
}
