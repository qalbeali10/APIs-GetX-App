import 'package:apis_getx_statemanagement/Ui/home/home_controller.dart';
import 'package:get/get.dart';

class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    // Get.lazyPut<>(
    //       () => DataController(),
    // );
  }
}
