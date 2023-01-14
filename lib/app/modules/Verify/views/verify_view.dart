import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/verify_controller.dart';

class VerifyView extends GetView<VerifyController> {
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: tinggi * 0.85,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 150,
                        ),
                        Icon(
                          Icons.mark_email_read,
                          size: 100,
                          color: Colors.teal,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Check Your Email",
                          style: TextStyle(fontSize: 40, color: Colors.black),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "We have sent a password recover instructions to your email.",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 25, color: Colors.black45),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: tinggi * 0.07,
                            width: 225,
                            decoration: BoxDecoration(
                                color: bgLogin,
                                borderRadius: BorderRadius.circular(6)),
                            child: Center(
                              child: Text(
                                "Open Email App",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Skip, I’ll confirm later",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, color: Colors.black45),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text:
                                    'Did not receive the email ? Check your spam filter, or ',
                                style: TextStyle(color: Colors.black)),
                            TextSpan(
                                text: 'try another email address',
                                style: TextStyle(color: bgLogin1))
                          ]),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}