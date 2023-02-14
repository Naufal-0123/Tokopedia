import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/app/routes/app_pages.dart';
import 'package:tokopedia/config/warna.dart';

import '../../../controllers/slider_controller.dart';
import '../controllers/slider_admin_controller.dart';

class SliderAdminView extends GetView<SliderAdminController> {
  final sliderC = Get.put(SliderController());
  final sliderD = Get.put(SliderAdminController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Scaffold(
      body: Container(
        child: FutureBuilder<QuerySnapshot<Object?>>(
            future: sliderC.getData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                var listData = snapshot.data!.docs;
                return ListView.builder(
                    itemCount: listData.length,
                    itemBuilder: (context, index) => ListTile(
                          onTap: () => Get.toNamed(Routes.UPDATE_SLIDER,
                              arguments: listData[index]),
                          // onLongPress: () =>
                          //     sliderC.deleteData(listData[index].id),
                          title: Text((listData[index].data()
                              as Map<String, dynamic>)['desSlider']),
                          subtitle: Text(
                            (listData[index].data()
                                    as Map<String, dynamic>)['activeSlider']
                                .toString(),
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          leading: Container(
                            child: Image.network((listData[index].data()
                                as Map<String, dynamic>)['gambarSlider']),
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              sliderC.deleteData((listData[index].id));
                            },
                            icon: Icon(
                              CupertinoIcons.trash,
                              color: bgMerah,
                            ),
                          ),
                        ));
              } else {
                return (Center(
                  child: CircularProgressIndicator(),
                ));
              }
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.CREATE_SLIDER),
        child: Icon(Icons.add),
      ),
    )));
  }
}
