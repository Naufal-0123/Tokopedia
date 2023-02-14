import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tokopedia/app/routes/app_pages.dart';

class SliderController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  addData(bool activeSlider, String desSlider, String gambarSlider) async {
    CollectionReference slider = firestore.collection('slider');
    final sliderData = {
      "activeSlider ": activeSlider,
      "desSlider": desSlider,
      "gambarSlider": gambarSlider
    };

// Add a new document with a generated ID
    try {
      await slider.add(sliderData).then((DocumentReference doc) {
        print('DocumentSnapshot added with ID: ${doc.id}');
        Get.defaultDialog(
            title: 'Alert', middleText: 'berhasil menambahkan data');
        Get.offNamed(Routes.SLIDER_ADMIN);
      });
    } catch (e) {
      Get.defaultDialog(title: 'Alert', middleText: 'gagal menambahkan data');
    }
  }

  Future<QuerySnapshot<Object?>> getData() async {
    CollectionReference slider = firestore.collection('slider');

    return await slider.get();
  }

  updateData(String id, bool activeSlider, String desSlider,
      String gambarSlider) async {
    try {
      final sliderData = {
        "activeSlider ": activeSlider,
        "desSlider": desSlider,
        "gambarSlider": gambarSlider
      };

      DocumentReference Slider = firestore.collection('slider').doc(id);
      await Slider.update(sliderData);

      Get.defaultDialog(title: 'Alert', middleText: 'berhasil mengupdate data');
      Get.offNamed(Routes.SLIDER_ADMIN);
    } catch (e) {
      Get.defaultDialog(title: 'Alert', middleText: 'gagal mengupdate data');
      print(e);
    }
  }

  deleteData(String id) async {
    try {
      DocumentReference Slider = firestore.collection('slider').doc(id);
      await Slider.delete();
      Get.defaultDialog(title: 'Alert', middleText: 'berhasil mendelete data');
      return Get.offAllNamed(Routes.SLIDER_ADMIN);
    } catch (e) {
      Get.defaultDialog(title: 'Alert', middleText: 'gagal mendelete data');
      print(e);
    }
  }
}
