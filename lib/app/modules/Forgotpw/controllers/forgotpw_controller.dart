import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotpwController extends GetxController {
  //TODO: Implement ForgotpwController
  final count = 0.obs;
  TextEditingController email = TextEditingController();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
