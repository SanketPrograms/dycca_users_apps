
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var appFontStyle = GoogleFonts.roboto;

//Text
var projectName = Text(
  "Dycca",
  style:
  appFontStyle(fontSize: 40, fontWeight: FontWeight.w800, color: primaryColor),
);
var  headline = Text(
    "DYCCA",
    style:GoogleFonts.acme(fontSize: 25, fontWeight: FontWeight.w600, color: primaryColor)

);
const appbarConstFont = TextStyle(color: neutral6Color,fontSize: 16,fontWeight: FontWeight.w600);

// styles
fontStyle(Color color, FontWeight fontWeight, double fontSize,
    {double height = 1.2}) {
  return appFontStyle(
      fontSize: fontSize, fontWeight: fontWeight, color: color, height: height);
}

var inputHintStyle = appFontStyle(
    fontSize: 16.0, fontWeight: FontWeight.w400, color: neutral5Color);

//colour
const primaryColor = Color(0XFF0195AF);
const whiteColour = Color(0XFFFFFFFF);
const greyColour = Color(0XFFb1b1b1);
const neutralColor = Color(0XFFAFAFAF);
const neutral1Color = Color(0XFF1C1C1C);
const neutral2Color = Color(0XFFF7F7F7);
const neutral3Color = Color(0XFFEBEBEB);
const neutral4Color = Color(0XFFAFAFAF);
const neutral5Color = Color(0XFF5A5A5A);
const neutral7Color = Color(0XFFE5E5E5);
const neutral6Color = Color(0XFF0E0E0E);
var neutral8Color = const Color(0XFF5A5A5A).withOpacity(0.7);
const semantic1Color = Color(0XFFEB5757);
const textfieldColour = Color(0XFFFBFAFF);

//route constant
const splashRoute = '/splashRoute';
const registrationVerifyNumberRoute = '/registrationRoute';
const forgotPasswordRoute = '/forgotPasswordRoute';
const registrationVerifyOtpRoute = '/registrationVerifyOtpRoute';
const registerationRoute = '/registerationRoute';
const selectYourProfessionRoute = '/selectYourProfessionRoute';
const homeRoute = '/homeRoute';
const detailsOfCompetitionRoute = '/detailsOfCompetitionRoute';
const bookingBattleRoute = '/bookingBattleRoute';
const myBookingRoute = '/myBookingRoute';
const hoeRoute = '/homeRoute';
const homeRute = '/homeRoute';
const omeRoue = '/homeRoute';
const homeRout = '/homeRoute';



