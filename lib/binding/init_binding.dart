import 'package:get/get.dart';
import 'package:zugyommm_youtube/controller/app_controller.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(Appcontroller());
  }
}
