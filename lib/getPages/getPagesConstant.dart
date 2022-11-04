// ignore_for_file: prefer_const_literals_to_create_immutables, file_names, prefer_const_constructors

import 'package:apis_getx_statemanagement/Ui/home/home_binding.dart';
import 'package:apis_getx_statemanagement/Ui/home_page.dart';
import 'package:apis_getx_statemanagement/routes/routes.dart';
import 'package:get/get.dart';

List<GetPage> getPages = [
  GetPage(
      name: Routes.homePage,
      page: () => HomePage(),
      binding: HomeScreenBinding()),
  // GetPage(
  //     name: Routes.homePage,
  //     page: () => Homepage(),
  //     binding: HomeScreenBinding()),
];
