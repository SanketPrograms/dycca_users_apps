import 'package:dycca_user_app/custom_widgets/button_widget.dart';
import 'package:dycca_user_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class RegistrationVerifyOtpScreen extends StatelessWidget {
  RegistrationVerifyOtpScreen({Key? key}) : super(key: key);
  TextEditingController mobileNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            projectName,
            Image.asset(
              'assets/images/verify_mobile.png',
              height: 100,
            ),
            const SizedBox(height: 20,),
            Text(
              "Enter OTP",
              style: fontStyle(neutral6Color, FontWeight.w600, 16),
            ),
            const SizedBox(height: 20,),
            Text(
              "Please type the OTP sent to +91 8346785774",
              style: fontStyle(neutral6Color, FontWeight.w400, 14),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40, bottom: 30,top: 20),
              child: OTPTextField(
                onCompleted: (val) {},
                length: 4,
                width: MediaQuery.of(context).size.width - 40,
                fieldWidth: ((MediaQuery.of(context).size.width - 60) / 5) - 20,
                style: appFontStyle(fontSize: 14),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.underline,
                otpFieldStyle: OtpFieldStyle(
                    focusBorderColor: primaryColor,
                    enabledBorderColor: primaryColor),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Don't receive the OTP ?",
                  style: fontStyle(neutral4Color, FontWeight.w400, 14),
                ),
                Text(
                  " Resend",
                  style: fontStyle(primaryColor, FontWeight.w400, 14),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              child: ButtonWidget(
                  placeholder: "VERIFY NOW", disabled: false, buttonClickCallback: () {
                    Navigator.pushNamed(context, registerationRoute);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
