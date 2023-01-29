import 'package:dycca_user_app/custom_widgets/button_widget.dart';
import 'package:dycca_user_app/custom_widgets/textfield_widget.dart';
import 'package:dycca_user_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class ForgotPasswordScreen extends StatelessWidget {
   ForgotPasswordScreen({Key? key}) : super(key: key);
  TextEditingController mobileNumber = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmnNewPassword = TextEditingController();
  String userToken = "";
  bool visibleEnterOTP = false;
  bool visibleEnterPassword = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0,bottom: 10),
                  child: Text(
                    "Forgot Password ?",
                    style: fontStyle(neutral6Color, FontWeight.w500, 19),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: TextField(
                          // controller: mobileNumber,
                          decoration: InputDecoration(
                              hintText: '(+91)',
                              hintStyle:
                              fontStyle(neutral6Color, FontWeight.w400, 14)),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 5,
                        child: TextField(
                          controller: mobileNumber,
                          decoration: InputDecoration(
                              hintText: 'enter your registered mobile number',
                              hintStyle:
                              fontStyle(neutral4Color, FontWeight.w400, 13)),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 2,
                        child: TextButton(
                          onPressed: (){

                          },
                          child: Text(
                            "Send OTP",
                            style: fontStyle(primaryColor, FontWeight.w400, 13),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  // visible: visibleEnterOTP,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          "Enter OTP",
                          style: fontStyle(neutral6Color, FontWeight.w400, 15),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10, bottom: 20),
                          child: OTPTextField(
                            onCompleted: (val){

                            },
                            length: 4,
                            width: MediaQuery.of(context).size.width - 40,
                            fieldWidth:
                            ((MediaQuery.of(context).size.width - 60) / 5) - 20,
                            style:  appFontStyle(fontSize: 14),
                            textFieldAlignment: MainAxisAlignment.spaceAround,
                            fieldStyle: FieldStyle.underline,
                            otpFieldStyle: OtpFieldStyle(
                                focusBorderColor: primaryColor,
                                enabledBorderColor: primaryColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  // visible: visibleEnterOTP,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Row(
                      children: [
                        Text(
                          "00:00",
                          style: fontStyle(neutral4Color, FontWeight.w400, 15),
                        ),
                        const Spacer(),
                        Text(
                          "Resend OTP",
                          style: fontStyle(primaryColor, FontWeight.w400, 15),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Visibility(
                  // visible: visibleEnterPassword,
                  child: TextfieldWidget(
                    controller: newPassword,
                    placeholder: "New Password",
                    fillColor: neutral2Color,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Visibility(
                  // visible: visibleEnterPassword,
                  child: TextfieldWidget(
                    controller: confirmnNewPassword,
                    placeholder: "Confirm New Password",
                    fillColor: neutral2Color,
                  ),
                ),
const SizedBox(height: 40,),
                Visibility(
                  // visible: visibleEnterPassword,
                  child: ButtonWidget(
                    placeholder: "Save",
                    disabled: false,
                    buttonClickCallback: () {


                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
