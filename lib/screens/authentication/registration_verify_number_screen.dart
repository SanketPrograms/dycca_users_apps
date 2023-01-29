import 'package:dycca_user_app/custom_widgets/button_widget.dart';
import 'package:dycca_user_app/utils/constants.dart';
import 'package:flutter/material.dart';

class RegistrationVerifyNumberScreen extends StatelessWidget {
   RegistrationVerifyNumberScreen({Key? key}) : super(key: key);

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
            Text(
              "Enter your phone number",
              style: fontStyle(neutral6Color, FontWeight.w600, 16),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                controller: mobileNumber,
                decoration: InputDecoration(
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(top: 13.0),
                      child: Text("India (+91)"),
                    ),
                    hintText: '  Your phone number',
                    hintStyle: fontStyle(neutral4Color, FontWeight.w400, 14)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "We will send you one time password (OTP) to verify",
                style: fontStyle(neutral5Color, FontWeight.w400, 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 50),
              child: ButtonWidget(
                  placeholder: "SEND",
                  disabled: false,
                  buttonClickCallback: () {
                    Navigator.pushNamed(context, registrationVerifyOtpRoute);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
