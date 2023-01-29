import 'package:dycca_user_app/screens/notification/notification_screen.dart';
import 'package:dycca_user_app/utils/constants.dart';
import 'package:flutter/material.dart';

class DashboardAppbarWidget {
  static AppBar getAppBar(context) {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: primaryColor),
      elevation: 0,
      title: headline,
      actions:  [
        const Icon(Icons.messenger_outlined,color: neutral4Color,size: 20,),
        const SizedBox(
          width: 15,
        ),
        IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));
          },
          icon: const Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.notifications,color: neutral4Color,size: 25,)
          ),
        ),
      ],
    );
  }
}
class AppbarBackButton{

  AppBar AppbarBack(context,title,endTitle){
    return AppBar(
      elevation: 0,
      backgroundColor: whiteColour,
      leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          color: neutral6Color,
        ),
      ),
      title:  Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: appbarConstFont),
          Spacer(),
          Text(endTitle,style: fontStyle(primaryColor, FontWeight.w500, 14),)
        ],
      ),

    );
  }
}