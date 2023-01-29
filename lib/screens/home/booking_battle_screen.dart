import 'package:dycca_user_app/custom_widgets/const_appbar.dart';
import 'package:dycca_user_app/utils/constants.dart';
import 'package:flutter/material.dart';

class BookingBattleScreen extends StatefulWidget {
  const BookingBattleScreen({Key? key}) : super(key: key);

  @override
  State<BookingBattleScreen> createState() => _BookingBattleScreenState();
}

class _BookingBattleScreenState extends State<BookingBattleScreen> {
  String checkbox = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColour,
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, homeRoute);
        },
        child: Container(
          decoration: const BoxDecoration(
            color: primaryColor,
          ),
          height: 55,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "Continue",
                style: appFontStyle(
                  color: whiteColour,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
      appBar: AppbarBackButton().AppbarBack(context, "Checkout", ""),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 20,top: 10),
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 100,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: primaryColor,
                    ),
                    // child: FittedBox(
                    //   fit: BoxFit.cover,
                    //     child: Image.asset('assets/images/images.jpeg')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Novlik D-Pac",
                          style: appFontStyle(
                            color: neutral6Color,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: [
                              Text(
                                "02/06/2020 - ",
                                style: appFontStyle(
                                  color: neutral6Color,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "04/06/2020",
                                style: appFontStyle(
                                  color: neutral6Color,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  children: [
                    Text(
                      "Ticket Price",
                      style: appFontStyle(
                        color: neutral6Color,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "INR 500",
                      style: appFontStyle(
                        color: neutral6Color,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  children: [
                    Text(
                      "Booking Fee",
                      style: appFontStyle(
                        color: neutral6Color,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "INR 25",
                      style: appFontStyle(
                        color: neutral6Color,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    "Taxes",
                    style: appFontStyle(
                      color: neutral6Color,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "INR 15",
                    style: appFontStyle(
                      color: neutral6Color,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  children: [
                    Text(
                      "Total Price",
                      style: appFontStyle(
                        color: neutral6Color,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "INR 540",
                      style: appFontStyle(
                        color: primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Terms And Conditions",
                style: appFontStyle(
                  color: neutral6Color,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "1. Before sending for approval Profile of all event partners needs to be verified.",
                style: appFontStyle(
                  color: neutral5Color,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text("2. Event should have all necessary informations ",
                  style: appFontStyle(
                    color: neutral5Color,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  )),
              const SizedBox(
                height: 10,
              ),
              Text(
                  "3. Events should agree with our cancellation or refund policy & payment policy.",
                  style: appFontStyle(
                    color: neutral5Color,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    color: primaryColor.withOpacity(0.2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Remember*",
                            style: appFontStyle(
                              color: primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            )),
                        Text(
                            "To complete the booking process you have to invite anyone or you can join the participant after the payment process",
                            style: appFontStyle(
                              color: primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            )),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                      value: checkbox.isEmpty,
                      activeColor: primaryColor,
                      onChanged: (val) {}),
                  Text("I agree to the ",
                      style: appFontStyle(
                        color: neutral6Color,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      )),
                  Text("Terms & Conditions",
                      style: appFontStyle(
                        color: primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
