import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/app/routes/app_pages.dart';
import 'package:tokopedia/config/warna.dart';
import 'package:tokopedia/app/controllers/auth_controller_controller.dart';

import '../controllers/phone_controller.dart';

class PhoneView extends GetView<PhoneController> {
  final authC = Get.put(AuthControllerController());
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: lebar,
          padding: EdgeInsets.fromLTRB(25, 50, 25, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: tinggi * 0.85,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // InkWell(
                    //   onTap: () => Get.toNamed(Routes.LOGIN),
                    //   child: Container(
                    //       margin: EdgeInsets.only(bottom: 20),
                    //       // color: Colors.black,
                    //       child: Icon(
                    //         Icons.arrow_back,
                    //         color: Colors.black,
                    //         size: 30,
                    //       )),
                    // ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text(
                        "Login With Phone Number",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text(
                        "Enter the email associated with your account and we'll send an email with instructions to reset your password",
                        style: TextStyle(fontSize: 18, color: Colors.black45),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20, top: 20),
                      child: Text(
                        "Phone Number",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.black),
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.emailAddress,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        labelText: "Enter Your Phone Number",
                        prefixIcon: Container(
                          width: lebar * 0.13,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                                child: Text("+62",
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.black45)),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                height: tinggi * 0.04,
                                child: VerticalDivider(
                                  color: Colors.black45,
                                  width: 2,
                                ),
                              )
                            ],
                          ),
                        ),
                        labelStyle: TextStyle(color: Colors.black45),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    InkWell(
                      onTap: () => authC.verifyPhone(controller.phone.text),
                      child: Container(
                        height: tinggi * 0.07,
                        width: lebar * 1.0,
                        decoration: BoxDecoration(
                            color: bgLogin,
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                          child: Text(
                            "Send OTP",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
