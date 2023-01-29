import 'package:dycca_user_app/utils/constants.dart';
import 'package:flutter/material.dart';


class ButtonWidget extends StatelessWidget {
  String placeholder;
  bool disabled;
  VoidCallback buttonClickCallback;
  double fontSize;
  ButtonWidget({Key? key,required this.placeholder, required this.disabled, required this.buttonClickCallback,this.fontSize = 16}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!disabled) {
          buttonClickCallback();
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: disabled ? whiteColour : primaryColor.withOpacity(1),
          borderRadius: BorderRadius.circular(3.0),
        ),
        height: 56,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              placeholder,
              style: appFontStyle(
                color: disabled ? neutral4Color : Colors.white.withOpacity(0.9),
                fontSize: fontSize,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
