import 'package:dycca_user_app/utils/constants.dart';
import 'package:flutter/material.dart';

class MyBookingSCreen extends StatefulWidget {
  const MyBookingSCreen({Key? key}) : super(key: key);

  @override
  State<MyBookingSCreen> createState() => _MyBookingSCreenState();
}

class _MyBookingSCreenState extends State<MyBookingSCreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding:
            const EdgeInsets.only(top: 20.0, left: 10, right: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, detailsOfCompetitionRoute);
              },
              child: Row(
                children: [
                  Container(
                      height: 80,
                      width: 100,
                      decoration: const BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10)),
                        color: primaryColor,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Novlik D-pac",
                              style: fontStyle(
                                  neutral6Color, FontWeight.w600, 16),
                            ),
                            Text(
                              "500",
                              style: fontStyle(
                                  primaryColor, FontWeight.w600, 17),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Competition Dance Battle",
                              style: fontStyle(
                                  primaryColor, FontWeight.w400, 12),
                            ),
                            Text(
                              "Offered Price",
                              style: fontStyle(
                                  neutral5Color, FontWeight.w600, 10),
                            ),
                          ],
                        ),
                        Text(
                          "Rock Vick Studio",
                          style: fontStyle(
                              neutral5Color, FontWeight.w500, 14),
                        ),
                        Text(
                          "Discovering Unknown Food ",
                          overflow: TextOverflow.ellipsis,
                          style: fontStyle(
                              neutral5Color, FontWeight.w400, 12),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                radius: 6,
                                backgroundColor: primaryColor,
                              ),
                              Text(
                                " Judges",
                                style: fontStyle(
                                    neutral5Color, FontWeight.w400, 12),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              const CircleAvatar(
                                radius: 6,
                                backgroundColor: primaryColor,
                              ),
                              Text(
                                " Venue Partners",
                                style: fontStyle(
                                    neutral5Color, FontWeight.w400, 12),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              const CircleAvatar(
                                radius: 6,
                                backgroundColor: primaryColor,
                              ),
                              Text(
                                " Sponsors",
                                style: fontStyle(
                                    neutral5Color, FontWeight.w400, 12),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
