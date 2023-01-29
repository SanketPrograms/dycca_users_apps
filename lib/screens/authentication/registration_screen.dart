import 'package:dycca_user_app/custom_widgets/button_widget.dart';
import 'package:dycca_user_app/custom_widgets/textfield_widget.dart';
import 'package:dycca_user_app/utils/constants.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({Key? key}) : super(key: key);

  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                projectName,
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 40.0, bottom: 30, left: 10),
                      child: Text("Register",
                          style: fontStyle(neutral6Color, FontWeight.w700, 25)),
                    ),
                    Container()
                  ],
                ),
                TextfieldWidget(
                  controller: userName,
                  placeholder: "Mobile No.",
                  fillColor: neutral2Color,
                  prefixSvgImage: const Icon(Icons.person),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: TextfieldWidget(
                    prefixSvgImage: const Icon(Icons.email),
                    isObscure: true,
                    controller: email,
                    placeholder: "Email address",
                    fillColor: neutral2Color,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: TextfieldWidget(
                    prefixSvgImage: const Icon(Icons.lock),
                    isObscure: true,
                    controller: password,
                    placeholder: "Password",
                    fillColor: neutral2Color,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your password should be 8 characters long",
                        style: fontStyle(neutral6Color, FontWeight.w400, 12),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: TextfieldWidget(
                    prefixSvgImage: const Icon(Icons.lock),
                    isObscure: true,
                    controller: confirmPassword,
                    placeholder: "Confirm Password",
                    fillColor: neutral2Color,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ButtonWidget(
                    placeholder: "CONTIUNUE",
                    disabled: false,
                    buttonClickCallback: () {
                      Navigator.pushNamed(context, selectYourProfessionRoute);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Already account? ",
                        style: fontStyle(neutral4Color, FontWeight.w400, 16),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, registrationVerifyNumberRoute);
                        },
                        child: Text(
                          "Login",
                          style: fontStyle(primaryColor, FontWeight.w600, 16),
                        ),
                      ),
                    ],
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
