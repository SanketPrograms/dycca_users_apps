import 'package:dycca_user_app/custom_widgets/button_widget.dart';
import 'package:dycca_user_app/custom_widgets/textfield_search_widget.dart';
import 'package:dycca_user_app/screens/home/inviting_tab_widget.dart';
import 'package:dycca_user_app/utils/constants.dart';
import 'package:flutter/material.dart';

class GetOfferPriceScreen extends StatefulWidget {
  const GetOfferPriceScreen({Key? key}) : super(key: key);

  @override
  State<GetOfferPriceScreen> createState() => _GetOfferPriceScreenState();
}

class _GetOfferPriceScreenState extends State<GetOfferPriceScreen> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Get Offer Price By",
                    style: fontStyle(neutral6Color, FontWeight.w600, 20),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: primaryColor.withOpacity(0.1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Remember*",
                            style: fontStyle(neutral5Color, FontWeight.w500, 14),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            "To complete the booking process you have to invite anyone or you can join the participant after the payment process",
                            style: fontStyle(neutral5Color, FontWeight.w500, 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TabBar(
                    tabs: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Inviting Friend",
                          style: fontStyle(neutral5Color, FontWeight.w500, 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Join Participants",
                          style: fontStyle(neutral5Color, FontWeight.w500, 16),
                        ),
                      ),

                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const SizedBox(
                    height: 500,
                    child: TabBarView(
                      children: [
                         InvitingTabWidget(),
                         InvitingTabWidget()
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}
