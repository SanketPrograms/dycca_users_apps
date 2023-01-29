import 'package:dycca_user_app/custom_widgets/const_appbar.dart';
import 'package:dycca_user_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat.EEEE('en_US').format(now) +
        " " +
        DateFormat.yMMMMd('en_US').format(now);
    return Scaffold(
      backgroundColor: whiteColour,
      appBar: AppbarBackButton().AppbarBack(context, "Notification", ""),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Text(
                      formattedDate,
                      style: fontStyle(neutral6Color, FontWeight.w400, 16),
                    ),
                    const Spacer(),
                    Text(
                      " Clear All",
                      style: fontStyle(primaryColor, FontWeight.w400, 13),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Container(
                            color: neutral2Color,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: ListTile(
                                  dense: true,
                                  contentPadding: EdgeInsets.all(1),
                                  leading: Image.asset(
                                    'assets/images/notification_image.png',
                                    scale: 2,
                                  ),
                                  title: Text(
                                    "You Got New Notification",
                                    style: fontStyle(
                                        neutral6Color, FontWeight.w400, 16),
                                  ),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 20),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            border: Border.all(
                                                color: primaryColor)),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 7.0, horizontal: 30),
                                          child: Text(
                                            "View profile",
                                            style: fontStyle(primaryColor,
                                                FontWeight.w400, 13),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  trailing: Text(
                                    "21/2/2023",
                                    style: fontStyle(
                                        neutral6Color, FontWeight.w500, 13),
                                  )),
                            )));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
