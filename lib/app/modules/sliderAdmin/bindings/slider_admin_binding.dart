import 'package:get/get.dart';

import '../controllers/slider_admin_controller.dart';

class SliderAdminBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SliderAdminController>(
      () => SliderAdminController(),
    );
  }
}
