import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/app/routes/app_pages.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/forgotpw_controller.dart';

class ForgotpwView extends GetView<ForgotpwController> {
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
                    InkWell(
                      onTap: () => Get.toNamed(Routes.LOGIN),
                      child: Container(
                          margin: EdgeInsets.only(bottom: 20),
                          // color: Colors.black,
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                            size: 30,
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text(
                        "Reset Password",
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
                        "Email Address",
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
                        labelText: "Enter Your email",
                        labelStyle: TextStyle(color: Colors.black45),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    InkWell(
                      onTap: () => Get.toNamed(Routes.VERIFY),
                      child: Container(
                        height: tinggi * 0.07,
                        width: lebar * 1.0,
                        decoration: BoxDecoration(
                            color: bgLogin,
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                          child: Text(
                            "Send Instructions",
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
