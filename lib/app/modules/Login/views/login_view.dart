import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/app/routes/app_pages.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Obx(() => Scaffold(
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
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Text(
                            "Hi, Welcome Back!👋",
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Text(
                            "Hello again, you’ve been missed!",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black45),
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
                        Container(
                          margin: EdgeInsets.only(bottom: 20, top: 20),
                          child: Text(
                            "Password",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextFormField(
                            controller: controller.password,
                            style: TextStyle(color: Colors.black),
                            cursorColor: Colors.black,
                            obscureText:
                                controller.showhidepw.value ? false : true,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                labelText: "Enter Your Password",
                                labelStyle: TextStyle(color: Colors.black45),
                                border: OutlineInputBorder(),
                                suffixIcon: IconButton(
                                    onPressed: () => controller.changeEye(),
                                    icon: Icon(
                                      controller.showhidepw.value
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.black,
                                    )))),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () => Get.toNamed(Routes.FORGOTPW),
                                child: Text(
                                  "Forgot Password ?",
                                  style: TextStyle(color: Colors.black45),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        InkWell(
                          child: Container(
                            height: tinggi * 0.07,
                            width: lebar * 1.0,
                            decoration: BoxDecoration(
                                color: bgLogin,
                                borderRadius: BorderRadius.circular(6)),
                            child: Center(
                              child: Text(
                                "Login",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: Divider(
                                color: Colors.black45,
                                height: 1,
                              ),
                            ),
                            Container(
                              child: Text(
                                "Or Login With",
                                style: TextStyle(
                                    color: Colors.black45, fontSize: 15),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: Divider(
                                color: Colors.black45,
                                height: 1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 170,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Image.asset("asset/image/Facebook.png"),
                                      Text(
                                        "Facebook",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 170,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Image.asset("asset/image/Google.png"),
                                      Text(
                                        "Google",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Don’t have an account?",
                            style: TextStyle(color: Colors.black45),
                          )),
                      TextButton(
                          onPressed: () => Get.toNamed("register"),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(color: bgLogin1, fontSize: 13),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
