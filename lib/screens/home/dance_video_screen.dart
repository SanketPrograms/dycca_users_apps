import 'package:dycca_user_app/custom_widgets/textfield_search_widget.dart';
import 'package:dycca_user_app/screens/home/get_offer_price_screen.dart';
import 'package:dycca_user_app/utils/constants.dart';
import 'package:flutter/material.dart';

class DanceVideoScreen extends StatefulWidget {
  const DanceVideoScreen({Key? key}) : super(key: key);

  @override
  State<DanceVideoScreen> createState() => _DanceVideoScreenState();
}

class _DanceVideoScreenState extends State<DanceVideoScreen> {
  TextEditingController title = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>GetOfferPriceScreen()));
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
                "Submit",
                style: appFontStyle(
                  color: whiteColour,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Title",
                style: fontStyle(neutral6Color, FontWeight.w600, 16),
              ),
              const SizedBox(
                height: 10,
              ),
              TextSearchWidget(
                controller: title,
                placeholder: "Enter title for Project",
                fillColor: whiteColour,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Start showcase your project",
                style: fontStyle(neutral6Color, FontWeight.w600, 16),
              ),
              const SizedBox(
                height: 20,
              ),
              // Container(
              //   decoration: BoxDecoration(
              //       border: Border.all(width: 1, color: neutral4Color),
              //       borderRadius: const BorderRadius.all(Radius.circular(20))),
              //   child: Column(
              //     children: [
              //       Container(
              //           width: 260,
              //           height: 150,
              //           child: Image.asset( 'assets/images/parking.png')),
              //       Container(
              //         width: 260,
              //         height: 45,
              //         decoration: BoxDecoration(
              //             borderRadius: const BorderRadius.only(
              //                 bottomLeft: Radius.circular(20),
              //                 bottomRight: Radius.circular(20)),
              //             border: Border.all(
              //               color: neutral4Color,width: 1
              //             )),
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //           children: [
              //             Text("Choose video",
              //                 style:
              //                     fontStyle(primaryColor, FontWeight.w600, 16)),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/gallery.png',
                        height: 100,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "IMAGE",
                        style: fontStyle(neutral6Color, FontWeight.w600, 16),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/video.png',
                        height: 100,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "VIDEO",
                        style: fontStyle(neutral6Color, FontWeight.w600, 16),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/embbed.png',
                        height: 100,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "EMBED",
                        style: fontStyle(neutral6Color, FontWeight.w600, 16),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Add Your Team",
                style: fontStyle(neutral6Color, FontWeight.w500, 16),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Who Contributed In This Project",
                style: fontStyle(neutral4Color, FontWeight.w400, 12),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Row(
                  children: [
                    const Icon(
                      Icons.person,
                      color: primaryColor,
                      size: 25,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Only Me",
                      style: fontStyle(primaryColor, FontWeight.w500, 14),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.groups,
                      color: neutral4Color,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Add Your Team",
                      style: fontStyle(neutral4Color, FontWeight.w500, 14),
                    ),
                  ],
                ),
              ),
              Text(
                "Add Channel Link",
                style: fontStyle(neutral6Color, FontWeight.w600, 16),
              ),
              const SizedBox(
                height: 10,
              ),
              TextSearchWidget(
                controller: title,
                placeholder: "Enter channel link",
                fillColor: whiteColour,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
