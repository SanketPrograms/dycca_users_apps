import 'package:dycca_user_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class BottomNagiagtionWidget extends StatefulWidget {
  const BottomNagiagtionWidget({Key? key}) : super(key: key);

  @override
  State<BottomNagiagtionWidget> createState() => _BottomNagiagtionWidgetState();
}

class _BottomNagiagtionWidgetState extends State<BottomNagiagtionWidget> {
  final bottomNavbarController = Get.put(BottomNavbarController());
  String activeIcon = '';

  @override
  void initState() {
    super.initState();

    activeIcon = bottomNavbarController.activeIcon.value;
  }

  setActiveIcon(String value) {
    bottomNavbarController.setActiveIcon(value);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: whiteColour,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.0),
          topLeft: Radius.circular(20.0),
        ),
      ),
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      child: SizedBox(
        height: 70,
        child: Column(
          children: [
            SizedBox(
              height: 2,
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15, bottom: 6, top: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, homeRoute);
                      setActiveIcon('Home');
                    },
                    child: Container(
                      color: Colors.white,
                      height: 50,
                      child: Column(
                        children: [
                          Icon(Icons.home,color: activeIcon == 'Home'
                              ? primaryColor
                              : neutral4Color,size: 30,),

                           const SizedBox(height: 2),
                          Text(
                            "Home",
                            style: fontStyle(
                                activeIcon == 'Home'
                                    ? primaryColor
                                    : neutral4Color,
                                FontWeight.w700,
                                14),
                          ),
                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, myBookingRoute);
                      setActiveIcon('My Bookings');
                    },
                    child: Container(
                      color: Colors.white,
                      height: 50,
                      child: Column(
                        children: [
                          Icon(Icons.dashboard,color: activeIcon == 'My Bookings'
                              ? primaryColor
                              : neutral4Color,size: 30,),
                          const SizedBox(height: 2),
                          Text(
                            "My Bookings",
                            style: fontStyle(
                                activeIcon == 'My Bookings'
                                    ? primaryColor
                                    : neutral4Color,
                                FontWeight.w700,
                                14),
                          ),
                        ],
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class BottomNavbarController extends GetxController {
  var activeIcon = 'Home'.obs;

  setActiveIcon(value) {
    activeIcon.value = value;
  }
}