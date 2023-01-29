import 'package:dycca_user_app/custom_widgets/button_widget.dart';
import 'package:dycca_user_app/custom_widgets/const_appbar.dart';
import 'package:dycca_user_app/utils/constants.dart';
import 'package:flutter/material.dart';

class SelectYourProfessionScreen extends StatelessWidget {
  SelectYourProfessionScreen({Key? key}) : super(key: key);
  List<String> names = [
    'Dancer',
    'Musician',
    'Actor',
    'Singer',
    'Choreographer',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColour,
      appBar: AppbarBackButton()
          .AppbarBack(context, "Select Your Profession", "Skip now"),
      bottomNavigationBar: ButtonWidget(
          placeholder: "DONE", disabled: false, buttonClickCallback: () {
        Navigator.pushNamed(
            context, homeRoute);
      }),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/creative.png',
                    height: 25,
                  ),
                  Text("   Creatives",
                      style: fontStyle(neutral6Color, FontWeight.w700, 16)),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("All",
                      style: fontStyle(neutral6Color, FontWeight.w400, 14)),
                  GestureDetector(
                    onTap: () {},
                    child: Text("Performing arts",
                        style: fontStyle(neutral6Color, FontWeight.w400, 14)),
                  ),
                  Text("Visual arts",
                      style: fontStyle(neutral6Color, FontWeight.w400, 14)),
                ],
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: whiteColour,
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search Booking',
                    contentPadding: const EdgeInsets.symmetric(vertical: 5),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: neutral2Color),
                    ),
                  ),
                ),
              ),

              ListView.builder(
                itemCount: names.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      color: neutral2Color.withOpacity(0.5),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/select_profession.png',
                            height: 80,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              names[index],
                              style:
                                  fontStyle(neutral6Color, FontWeight.w600, 16),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {

                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              height: 30,
                              width: 70,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    "Select",
                                    style: appFontStyle(
                                      color: Colors.white.withOpacity(0.9),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget performanceArt() {
    return Container(
      height: names.length * 80,
      child: ListView.builder(
        itemCount: names.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              color: neutral2Color.withOpacity(0.5),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/select_profession.png',
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      names[index],
                      style: fontStyle(neutral6Color, FontWeight.w600, 16),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/dashboardSelectRoute');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      height: 30,
                      width: 70,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            "Edit",
                            style: appFontStyle(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
