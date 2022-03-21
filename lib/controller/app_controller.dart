import 'package:get/get.dart';

class Appcontroller extends GetxService {
  static Appcontroller get to => Get.find();
  RxInt currentIndex = 0.obs;

  void changePageIndex(int index) {
    currentIndex(index);
  }
}
