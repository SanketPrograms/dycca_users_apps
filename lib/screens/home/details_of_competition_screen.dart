import 'package:dycca_user_app/custom_widgets/textfield_search_widget.dart';
import 'package:dycca_user_app/screens/home/dance_video_screen.dart';
import 'package:dycca_user_app/utils/constants.dart';
import 'package:flutter/material.dart';

class DetailsOfCompetitionScreen extends StatefulWidget {
  DetailsOfCompetitionScreen({Key? key}) : super(key: key);

  @override
  State<DetailsOfCompetitionScreen> createState() =>
      _DetailsOfCompetitionScreenState();
}

class _DetailsOfCompetitionScreenState
    extends State<DetailsOfCompetitionScreen> {
  List<String> items = ['Venue Partners', 'Judges', 'Sponsors'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, bookingBattleRoute);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: primaryColor.withOpacity(0.1),
                ),
                height: 55,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          "INR 500/each",
                          style: appFontStyle(
                            color: primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Book alone",
                          style: appFontStyle(
                            color: primaryColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DanceVideoScreen()));
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: primaryColor,
                ),
                height: 55,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          "INR 500/each",
                          style: appFontStyle(
                            color: whiteColour,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Book With friends",
                          style: appFontStyle(
                            color: whiteColour,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: whiteColour,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColour,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: neutral6Color,
        ),
        title: const Text("Dance Battle", style: appbarConstFont),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            FittedBox(
                fit: BoxFit.cover,
                child: Image.asset('assets/images/dance.jpeg')),
            Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
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
                              "Dance Dilse 2021",
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
                                    "Competition   Dance Battle   ",
                                    style: appFontStyle(
                                      color: primaryColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: primaryColor,
                                    size: 15,
                                  ),
                                  Text(
                                    " 4.5",
                                    style: appFontStyle(
                                      color: neutral6Color,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 8,
                                    backgroundColor: primaryColor,
                                  ),
                                  Text(
                                    "  Ramanam vsagar, 407 Others Attending",
                                    style: fontStyle(
                                        neutral4Color, FontWeight.w400, 12),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About",
                    style: appFontStyle(
                      color: neutral6Color,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 15),
                    child: Text(
                      "We'll be hosting 10,000+ engineers, software architects, develop ecutives & professionals from 90+ countries for 3 days of technic essions from 150+ speakers, a 2-day Virtual Expo, spe…...More",
                      style: appFontStyle(
                        color: neutral4Color,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    "Duration",
                    style: appFontStyle(
                      color: neutral6Color,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "Audition",
                      style: appFontStyle(
                        color: neutral4Color,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.online_prediction,
                        size: 20,
                        color: primaryColor,
                      ),
                      Text(
                        "    Online Event",
                        style: appFontStyle(
                          color: neutral4Color,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          size: 18,
                          color: primaryColor,
                        ),
                        Text(
                          "     Feb 17, 2021, 8:30 PM - Feb 20, 2021, 5:30 AM",
                          style: appFontStyle(
                            color: neutral4Color,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "Semifinal",
                      style: appFontStyle(
                        color: neutral4Color,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.online_prediction,
                        size: 20,
                        color: primaryColor,
                      ),
                      Text(
                        "    Online Event",
                        style: appFontStyle(
                          color: neutral4Color,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          size: 23,
                          color: primaryColor,
                        ),
                        Text(
                          "   Dance Vickrock Studio, ECR, Chennai",
                          style: appFontStyle(
                            color: neutral4Color,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          size: 18,
                          color: primaryColor,
                        ),
                        Text(
                          "     Feb 17, 2021, 8:30 PM - Feb 20, 2021, 5:30 AM",
                          style: appFontStyle(
                            color: neutral4Color,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "Final",
                      style: appFontStyle(
                        color: neutral4Color,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.online_prediction,
                        size: 20,
                        color: primaryColor,
                      ),
                      Text(
                        "    Online Event",
                        style: appFontStyle(
                          color: neutral4Color,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          size: 23,
                          color: primaryColor,
                        ),
                        Text(
                          "   Dance Vickrock Studio, ECR, Chennai",
                          style: appFontStyle(
                            color: neutral4Color,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          size: 18,
                          color: primaryColor,
                        ),
                        Text(
                          "     Feb 17, 2021, 8:30 PM - Feb 20, 2021, 5:30 AM",
                          style: appFontStyle(
                            color: neutral4Color,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                    itemCount: items.length,
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              items[index],
                              style:
                                  fontStyle(neutral6Color, FontWeight.w400, 16),
                            ),
                          ),
                          createEvent(),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "Judging Criteria",
                      style: appFontStyle(
                        color: neutral6Color,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    "1) Songs must be only Indian",
                    style: appFontStyle(
                      color: neutral4Color,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    child: Text(
                      "2) Classical performances are only allowed",
                      style: appFontStyle(
                        color: neutral4Color,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    "3) No duet performances is allowed",
                    style: appFontStyle(
                      color: neutral4Color,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "Rewards",
                      style: appFontStyle(
                        color: neutral6Color,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    "1) Participation certificate and medal",
                    style: appFontStyle(
                      color: neutral4Color,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "2) winners will get 10k cash prize",
                      style: appFontStyle(
                        color: neutral4Color,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    "3) Runners will get 2k cash prize",
                    style: appFontStyle(
                      color: neutral4Color,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget createEvent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 150,
        child: ListView.builder(
          itemCount: 3,
          physics: const AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                width: 140,
                decoration: BoxDecoration(
                    border: Border.all(color: neutral4Color, width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(4))),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 120.0),
                        child: GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.cancel_rounded,
                              size: 13,
                            )),
                      ),
                      const CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.blue,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Mithali Raj",
                          style: fontStyle(neutral6Color, FontWeight.w400, 14),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 5.0, left: 20, right: 20, top: 3),
                        child: Text(
                          "Choreographer",
                          style: fontStyle(primaryColor, FontWeight.w400, 8),
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: primaryColor,
                                    size: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      "4.5",
                                      style: fontStyle(
                                          primaryColor, FontWeight.w400, 8),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Rating",
                                style: fontStyle(
                                    neutral6Color, FontWeight.w400, 10),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 6.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.person,
                                      color: primaryColor,
                                      size: 15,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        "89",
                                        style: fontStyle(
                                            primaryColor, FontWeight.w400, 8),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Collaborated",
                                  style: fontStyle(
                                      neutral6Color, FontWeight.w400, 10),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.person,
                                    color: primaryColor,
                                    size: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      "23",
                                      style: fontStyle(
                                          primaryColor, FontWeight.w400, 8),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Created",
                                style: fontStyle(
                                    neutral6Color, FontWeight.w400, 10),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
