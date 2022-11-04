// ignore_for_file: non_constant_identifier_names, avoid_print

import 'dart:convert';
import 'dart:developer';
import 'package:apis_getx_statemanagement/user_model.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  User_Model? user_model;
  var isDataLoading = false.obs;

  getApi() async {
    try {
      isDataLoading(true);
      http.Response response = await http.get(
          Uri.tryParse('http://dummyapi.io/data/v1/user')!,
          headers: {'app-id': '6218809df11d1d412af5bac4'});
      if (response.statusCode == 200) {
        ///data successfully
        print(response.body);

        var result = jsonDecode(response.body);

        user_model = User_Model.fromJson(result);
      } else {
        ///error
      }
    } catch (e) {
      log('Error while getting data is $e');
      print('Error while getting data is $e');
    } finally {
      isDataLoading(false);
    }
  }

  @override
  void onInit() {
    getApi();
    super.onInit();
  }
}
