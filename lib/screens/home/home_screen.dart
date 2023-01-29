import 'package:dycca_user_app/custom_widgets/bottom_navigation_widget.dart';
import 'package:dycca_user_app/custom_widgets/button_widget.dart';
import 'package:dycca_user_app/custom_widgets/const_appbar.dart';
import 'package:dycca_user_app/custom_widgets/drawer.dart';
import 'package:dycca_user_app/utils/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List tabs = ['For you', 'Dance battle', 'Rap battle'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: const DrawerWidget(),
        bottomNavigationBar: const BottomNagiagtionWidget(),
        appBar: DashboardAppbarWidget.getAppBar(context),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:
                8.0,right: 8.0),
                child: Row(
                  children: [
                    Expanded(child: locationDropdown()),
                    Expanded(child: eventDropdown())
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:
                    8.0,right: 8.0),
                child: Row(
                  children: [
                    Expanded(child: eventTypeDropdown()),
                    Expanded(
                        child: ButtonWidget(
                      placeholder: "Search",
                      disabled: false,
                      buttonClickCallback: () {},
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("For you",
                      style: fontStyle(neutral6Color, FontWeight.w500, 16)),
                  GestureDetector(
                    onTap: () {},
                    child: Text("Dance battle",
                        style: fontStyle(neutral6Color, FontWeight.w500, 16)),
                  ),
                  Text("Rap battle",
                      style: fontStyle(neutral6Color, FontWeight.w500, 16)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              DefaultTabController(
                length: 2,
                child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(top: 20.0, left: 10, right: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, detailsOfCompetitionRoute);
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
                                      // Text(
                                      //   "Offered Price",
                                      //   style: fontStyle(
                                      //       neutral5Color, FontWeight.w600, 10),
                                      // ),
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
                                          style: fontStyle(neutral5Color,
                                              FontWeight.w400, 12),
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
                                          style: fontStyle(neutral5Color,
                                              FontWeight.w400, 12),
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
                                          softWrap: true,
                                          style: fontStyle(neutral5Color,
                                              FontWeight.w400, 12),
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
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget locationDropdown() {
    return SizedBox(
      height: 60,
      child: InputDecorator(


          decoration: const InputDecoration(border: OutlineInputBorder()),
          child: DropdownButtonHideUnderline(child:DropdownButton(
      hint: locationValue == null
          ? Text('Location')
          : Text(
              locationValue ?? "Location",
              style: TextStyle(color: Colors.black),
            ),
      isExpanded: true,
      iconSize: 30.0,
      style: TextStyle(color: Colors.black),
      items: ['One', 'Two', 'Three'].map(
        (val) {
          return DropdownMenuItem<String>(
            value: val,
            child: Text(val),
          );
        },
      ).toList(),
      onChanged: (val) {
        setState(
          () {
            locationValue = val;
          },
        );
      },
    ))));
  }

  Widget eventDropdown() {
    return SizedBox(
        height: 60,
        child: InputDecorator(


        decoration: const InputDecoration(border: OutlineInputBorder()),
    child: DropdownButtonHideUnderline(
        child: DropdownButton(
          hint: eventValue == null
              ? Text('Event')
              : Text(
                  eventValue ?? "Event",
                  style: TextStyle(color: Colors.black),
                ),
          isExpanded: true,
          iconSize: 30.0,
          style: TextStyle(color: Colors.black),
          items: ['One', 'Two', 'Three'].map(
            (val) {
              return DropdownMenuItem<String>(
                value: val,
                child: Text(val),
              );
            },
          ).toList(),
          onChanged: (val) {
            setState(
              () {
                eventValue = val;
              },
            );
          },
        ),
      ),
    ));
  }

  Widget eventTypeDropdown() {
    return SizedBox(
      height: 60,
      child: InputDecorator(
        decoration: const InputDecoration(border: OutlineInputBorder()),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            hint: eventTypeValue == null
                ? Text('Event Type')
                : Text(
                    eventTypeValue ?? "Event Type",
                    style: TextStyle(color: Colors.black),
                  ),
            isExpanded: true,
            iconSize: 30.0,
            style: TextStyle(color: Colors.black),
            items: ['One', 'Two', 'Three'].map(
              (val) {
                return DropdownMenuItem<String>(
                  value: val,
                  child: Text(val),
                );
              },
            ).toList(),
            onChanged: (val) {
              setState(
                () {
                  eventTypeValue = val;
                },
              );
            },
          ),
        ),
      ),
    );
  }

  String? locationValue;
  String? eventValue;
  String? eventTypeValue;

  // List of items in our dropdown menu
  var items = [
    'Location',
    'Event',
    'Event Type',
    'Item 4',
    'Item 5',
  ];
}
