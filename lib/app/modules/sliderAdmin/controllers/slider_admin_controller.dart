import 'dart:math';

import 'package:get/get.dart';
import 'package:tokopedia/app/controllers/slider_controller.dart';

class SliderAdminController extends GetxController {
   final count = 0.obs;
  var data;
  @override
  void onInit() {
    SliderController().getData();

    print('jalan');
    print(data);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
