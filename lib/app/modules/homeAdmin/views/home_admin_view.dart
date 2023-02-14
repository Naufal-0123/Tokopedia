import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/app/routes/app_pages.dart';

import '../controllers/home_admin_controller.dart';

class HomeAdminView extends GetView<HomeAdminController> {
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text('HomeAdminView'),
          centerTitle: true,
        ),
        body: Container(
          height: tinggi * 0.99,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 8, top: 20, bottom: 10),
                    width: lebar,
                    height: tinggi * 0.15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () => Get.toNamed(Routes.SLIDER_ADMIN),
                          child: Container(
                            width: 70,
                            child: Column(
                              children: [
                                customMenu(
                                    icon: 'asset/image/pilihan.png',
                                    text: '+ Data'),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 70,
                          child: Column(
                            children: [
                              customMenu(
                                icon: 'asset/image/keranjang.png',
                                text: '- Data',
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}

Widget customMenu({icon, text, width}) {
  return Container(
    width: 65,
    child: Column(
      children: [
        Container(child: Image.asset(icon)),
        Container(
          margin: EdgeInsets.only(top: 7),
          // width: width,
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  );
}
