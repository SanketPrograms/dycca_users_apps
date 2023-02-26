import 'package:dycca_user_app/custom_widgets/textfield_search_widget.dart';
import 'package:dycca_user_app/utils/constants.dart';
import 'package:flutter/material.dart';

class InvitingTabWidget extends StatefulWidget {
  const InvitingTabWidget({Key? key}) : super(key: key);

  @override
  State<InvitingTabWidget> createState() => _InvitingTabWidgetState();
}

class _InvitingTabWidgetState extends State<InvitingTabWidget> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        TextSearchWidget(
          prefixSvgImage: const Icon(Icons.search),
          controller: search,
          placeholder: "Search",
          fillColor: Colors.transparent,
        ),
        const SizedBox(
          height: 10,
        ),
        ListView.builder(
          itemCount: 3,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemBuilder: (context, index) {
            return
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Image.asset('assets/images/gallery.png',height: 50,),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "JackMan  ",
                              style: fontStyle(neutral5Color, FontWeight.w600, 14),
                            ),
                            Text(
                              "@JackMan123",
                              style: fontStyle(neutral5Color, FontWeight.w400, 8),
                            ),
                          ],
                        ),
                        Text(
                          "Dancer,Cherographer",
                          style: fontStyle(neutral5Color, FontWeight.w400, 12),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 35,
                      width: 80,
                      decoration: const BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(6  ))
                      ),
                      child: Center(
                        child: Text(
                          " + Invite",
                          style: fontStyle(whiteColour, FontWeight.w600, 14),
                        ),
                      ),
                    )
                  ],
                ),
              );

          },)
      ],
    );
  }
}
