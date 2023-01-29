import 'package:dycca_user_app/custom_widgets/button_widget.dart';
import 'package:dycca_user_app/custom_widgets/textfield_widget.dart';
import 'package:dycca_user_app/utils/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                projectName,
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 40.0, bottom: 30, left: 10),
                      child: Text("Login",
                          style: fontStyle(neutral6Color, FontWeight.w700, 20)),
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
                    prefixSvgImage: const Icon(Icons.lock),
                    isObscure: true,
                    controller: password,
                    placeholder: "Password",
                    fillColor: neutral2Color,
                  ),
                ),
                Row(
                  children: [
                    Container(),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, forgotPasswordRoute);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 30.0, bottom: 5, right: 20),
                        child: Text(
                          "Forgot Password ?",
                          style: fontStyle(primaryColor, FontWeight.w400, 16),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ButtonWidget(
                    placeholder: "LOGIN",
                    disabled: false,
                    buttonClickCallback: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    "Not a member yet?",
                    style: fontStyle(neutral4Color, FontWeight.w400, 16),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, registrationVerifyNumberRoute);
                    },
                    child: Text(
                      "Register",
                      style: fontStyle(primaryColor, FontWeight.w600, 18),
                    ),
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
