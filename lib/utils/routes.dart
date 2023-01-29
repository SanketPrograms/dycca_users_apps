import 'package:dycca_user_app/screens/authentication/forgot_password_screen.dart';
import 'package:dycca_user_app/screens/authentication/registration_screen.dart';
import 'package:dycca_user_app/screens/authentication/registration_verify_number_screen.dart';
import 'package:dycca_user_app/screens/authentication/registration_verify_otp_screen.dart';
import 'package:dycca_user_app/screens/authentication/select_your_profession_screen.dart';
import 'package:dycca_user_app/screens/authentication/splash_screen.dart';
import 'package:dycca_user_app/screens/home/booking_battle_screen.dart';
import 'package:dycca_user_app/screens/home/booking_screen.dart';
import 'package:dycca_user_app/screens/home/details_of_competition_screen.dart';
import 'package:dycca_user_app/screens/home/home_screen.dart';
import 'package:dycca_user_app/utils/constants.dart';
import 'package:flutter/material.dart';

class Routes{
  getRoutes(){
    return {
      splashRoute: (context) => const SplashScreen(),
      registrationVerifyNumberRoute : (context) =>  RegistrationVerifyNumberScreen(),
      forgotPasswordRoute: (context) =>  ForgotPasswordScreen(),
      registrationVerifyOtpRoute: (context) =>  RegistrationVerifyOtpScreen(),
      registerationRoute: (context) =>  RegistrationScreen(),
      selectYourProfessionRoute: (context) =>  SelectYourProfessionScreen(),
      homeRoute: (context) =>  HomeScreen(),
      detailsOfCompetitionRoute: (context) =>  DetailsOfCompetitionScreen(),
      bookingBattleRoute: (context) =>  const BookingBattleScreen(),
      myBookingRoute: (context) =>  const MyBookingSCreen(),
      selectYourProfessionRoute: (context) =>  SelectYourProfessionScreen(),

    };
  }
}