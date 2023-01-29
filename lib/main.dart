import 'package:dycca_user_app/utils/constants.dart';
import 'package:dycca_user_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainFile());
}

class MainFile extends StatelessWidget {
  const MainFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: Routes().getRoutes(),
      initialRoute: splashRoute,
    );
  }
}
