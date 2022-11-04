import 'package:apis_getx_statemanagement/Ui/home/home_binding.dart';
import 'package:apis_getx_statemanagement/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'getPages/getPagesConstant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      getPages: getPages,
      title: 'Rest API Using GetX Demo',
      initialRoute: Routes.homePage,
      initialBinding: HomeScreenBinding(),
    );
  }
}
