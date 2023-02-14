import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:tokopedia/app/controllers/auth_controller_controller.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final authD = Get.put(AuthControllerController());
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: tinggi * 0.12,
              decoration: BoxDecoration(color: bgHome),
              padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10, left: 30),
                    width: lebar * 0.37,
                    child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.emailAddress,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.search),
                        labelText: "Search",
                        labelStyle: TextStyle(color: Colors.black45),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    width: lebar * 0.4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.mail_outline,
                          color: Colors.white,
                          size: 30,
                        ),
                        Icon(
                          Icons.notifications_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                        InkWell(
                            onTap: () => authD.logOut(),
                            child: Image.asset("asset/image/menu 1.png"))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
                // color: Colors.black,
                width: lebar,
                margin: EdgeInsets.symmetric(vertical: 9),
                child: CarouselSlider(
                  options: CarouselOptions(
                      height: tinggi * 0.18,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3)),
                  items: [
                    "asset/image/keju.png",
                    "asset/image/cashback.png",
                    "asset/image/belanja.png"
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            child: Container(
                              child: Image.asset(i),
                            ));
                      },
                    );
                  }).toList(),
                )),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  alignment: WrapAlignment.center,
                  children: [
                    customMenu(
                      icon: 'asset/image/promo.png',
                      text: 'Promo',
                    ),
                    customMenu(
                      icon: 'asset/image/keranjang.png',
                      text: 'Toserba',
                    ),
                    customMenu(
                      icon: 'asset/image/headset.png',
                      text: 'Elektronik',
                    ),
                    customMenu(
                      icon: 'asset/image/list.png',
                      text: 'Top-Up & Tagihan',
                    ),
                    customMenu(
                        icon: 'asset/image/pilihan.png', text: 'Lihat Semua'),
                    customMenu(
                        icon: 'asset/image/ceklis.png', text: 'Official Store'),
                    customMenu(
                        icon: 'asset/image/play.png', text: 'Live Shopping'),
                    customMenu(
                        icon: 'asset/image/seru.png', text: 'Tokopedia Seru'),
                    customMenu(
                        icon: 'asset/image/cod.png', text: 'Bayar Di Tempat'),
                    customMenu(
                        icon: 'asset/image/indonesia.png',
                        text: 'Bangga Lokal'),
                  ]),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Kejar Diskon Special",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: bgJudul),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Berakhir dalam",
                            style: TextStyle(fontSize: 15, color: bgJudul1),
                          ),
                          Container(
                            // padding: EdgeInsets.only(),
                            margin: EdgeInsets.only(left: 10),
                            width: 130,
                            height: 30,
                            decoration: BoxDecoration(
                                color: bgRed,
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(left: 5, right: 10),
                                    child: Icon(Icons.access_time,
                                        color: Colors.white)),
                                Text(
                                  "00  :  15  :  12",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 40),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Lihat Semua",
                              style: TextStyle(color: bgLogin, fontSize: 16),
                            )),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              height: tinggi * 0.39,
              width: lebar,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [bgLinier2, bgLinier1])),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      child: Image.asset("asset/image/kejar.png"),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(30, 10, 0, 10),
                            height: 300,
                            width: 170,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Container(
                                  height: tinggi * 0.2,
                                  width: lebar,
                                  decoration: BoxDecoration(),
                                  child: Image.asset(
                                    "asset/image/Rectangle7.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Rp 1.000",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Row(
                                          children: [
                                            Container(
                                              margin:
                                                  EdgeInsets.only(right: 10),
                                              padding: EdgeInsets.only(
                                                  left: 8,
                                                  right: 8,
                                                  top: 3,
                                                  bottom: 3),
                                              child: Text(
                                                "92%",
                                                style: TextStyle(
                                                    color: Colors.red.shade700,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              decoration:
                                                  BoxDecoration(color: bgRed2),
                                            ),
                                            Container(
                                              child: Text(
                                                "Rp 12.546",
                                                style: TextStyle(
                                                    color: Colors.grey.shade600,
                                                    decoration: TextDecoration
                                                        .lineThrough),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 7),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 20,
                                              width: 20,
                                              child: Image.asset(
                                                  "asset/image/ceklis.png"),
                                            ),
                                            Container(
                                              child: Text(
                                                "Kab. Tangerang",
                                                style: TextStyle(
                                                    color: Colors.grey.shade600,
                                                    fontSize: 17),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            bottom: 10, top: 10),
                                        child: StepProgressIndicator(
                                          totalSteps: 100,
                                          currentStep: 80,
                                          size: 5,
                                          padding: 0,
                                          selectedColor: Colors.red.shade600,
                                          unselectedColor: Color(0xffeeeeee),
                                          roundedEdges: Radius.circular(2),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            child: Text(
                                              "Segera Habis",
                                              style: TextStyle(
                                                  color: Colors.grey.shade600,
                                                  fontSize: 13),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(15, 10, 0, 10),
                            height: 300,
                            width: 170,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Container(
                                  height: tinggi * 0.2,
                                  width: lebar,
                                  decoration: BoxDecoration(),
                                  child: Image.asset(
                                    "asset/image/indomie.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Rp 103.000",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Row(
                                          children: [
                                            Container(
                                              margin:
                                                  EdgeInsets.only(right: 10),
                                              padding: EdgeInsets.only(
                                                  left: 8,
                                                  right: 8,
                                                  top: 3,
                                                  bottom: 3),
                                              child: Text(
                                                "6%",
                                                style: TextStyle(
                                                    color: Colors.red.shade700,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              decoration:
                                                  BoxDecoration(color: bgRed2),
                                            ),
                                            Container(
                                              child: Text(
                                                "Rp 109.000",
                                                style: TextStyle(
                                                    color: Colors.grey.shade600,
                                                    decoration: TextDecoration
                                                        .lineThrough),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 7),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 20,
                                              width: 20,
                                              child: Image.asset(
                                                  "asset/image/ceklis.png"),
                                            ),
                                            Container(
                                              child: Text(
                                                "Jakarta Timur",
                                                style: TextStyle(
                                                    color: Colors.grey.shade600,
                                                    fontSize: 17),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            bottom: 10, top: 10),
                                        child: StepProgressIndicator(
                                          totalSteps: 100,
                                          currentStep: 35,
                                          size: 5,
                                          padding: 0,
                                          selectedColor: Colors.red.shade600,
                                          unselectedColor: Color(0xffeeeeee),
                                          roundedEdges: Radius.circular(2),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            child: Text(
                                              "Tersedia",
                                              style: TextStyle(
                                                  color: Colors.grey.shade600,
                                                  fontSize: 13),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, bottom: 9),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Pilihan Promo Hari Ini",
                            style: TextStyle(
                                fontSize: 25,
                                color: bgJudul,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 40),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Lihat Semua",
                              style: TextStyle(color: bgLogin, fontSize: 16),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 3, 0, 10),
                      height: 300,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        "asset/image/Beauty.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 3, 0, 10),
                      height: 300,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        "asset/image/kuman.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 3, 0, 10),
                      height: 300,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        "asset/image/mega.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: lebar * 1.50,
              child: Divider(
                color: Colors.black45,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 25, bottom: 9),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Produk Pilihan Untukmu",
                            style: TextStyle(
                                fontSize: 25,
                                color: bgJudul,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 40),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Lihat Semua",
                              style: TextStyle(color: bgLogin, fontSize: 16),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 10, 0, 10),
                            width: 160,
                            height: tinggi * 0.38,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black45,
                                    blurRadius: 4,
                                    offset: Offset(0, 2), // Shadow position
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 160,
                                  height: tinggi * 0.17,
                                  child: Image.asset(
                                    "asset/image/G603.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                    10,
                                    10,
                                    0,
                                    0,
                                  ),
                                  child: Text(
                                    "Logitech G603 Lightspeed ...",
                                    style:
                                        TextStyle(color: bgJudul, fontSize: 20),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                    10,
                                    10,
                                    0,
                                    0,
                                  ),
                                  child: Text(
                                    "Rp 609.000",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(2),
                                      margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                      width: 30,
                                      height: 20,
                                      decoration: BoxDecoration(color: bgRed2),
                                      child: Text(
                                        "46%",
                                        style: TextStyle(color: bgRed),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                      child: Text(
                                        "Rp 1.090.000",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 5),
                                            child: Image.asset(
                                                "asset/image/mahkota.png"),
                                          ),
                                          Text(
                                            "Kab. Bandung",
                                            style: TextStyle(
                                                color: Colors.black45,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child:
                                          Image.asset("asset/image/star.png"),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                      child: Text(
                                        "4.8",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                      child: Text(
                                        "|",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                      child: Text(
                                        "Terjual 312",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 10, 0, 10),
                            width: 160,
                            height: tinggi * 0.38,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black45,
                                    blurRadius: 4,
                                    offset: Offset(0, 2), // Shadow position
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 160,
                                  height: tinggi * 0.17,
                                  child: Image.asset(
                                    "asset/image/G203.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                    10,
                                    10,
                                    0,
                                    0,
                                  ),
                                  child: Text(
                                    "Logitech G203 Mouse Gaming",
                                    style:
                                        TextStyle(color: bgJudul, fontSize: 20),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                    10,
                                    10,
                                    0,
                                    0,
                                  ),
                                  child: Text(
                                    "Rp 204.000",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(2),
                                      margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                      width: 30,
                                      height: 20,
                                      decoration: BoxDecoration(color: bgRed2),
                                      child: Text(
                                        "46%",
                                        style: TextStyle(color: bgRed),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                      child: Text(
                                        "Rp 370.000",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 5),
                                            child: Image.asset(
                                                "asset/image/mahkota.png"),
                                          ),
                                          Text(
                                            "Kab. Bandung",
                                            style: TextStyle(
                                                color: Colors.black45,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child:
                                          Image.asset("asset/image/star.png"),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                      child: Text(
                                        "4.9",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                      child: Text(
                                        "|",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                      child: Text(
                                        "Terjual 6rb",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 10, 0, 10),
                            width: 160,
                            height: tinggi * 0.38,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black45,
                                    blurRadius: 4,
                                    offset: Offset(0, 2), // Shadow position
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 160,
                                  height: tinggi * 0.17,
                                  child: Image.asset(
                                    "asset/image/lowpng.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                    10,
                                    10,
                                    0,
                                    0,
                                  ),
                                  child: Text(
                                    "Logitech G240 Cloth Gaming",
                                    style:
                                        TextStyle(color: bgJudul, fontSize: 20),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                    10,
                                    10,
                                    0,
                                    0,
                                  ),
                                  child: Text(
                                    "Rp 239.000",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(2),
                                      margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                      width: 30,
                                      height: 20,
                                      decoration: BoxDecoration(color: bgRed2),
                                      child: Text(
                                        "32%",
                                        style: TextStyle(color: bgRed),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                      child: Text(
                                        "Rp 349.000",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 5),
                                            child: Image.asset(
                                                "asset/image/mahkota.png"),
                                          ),
                                          Text(
                                            "Kab. Bandung",
                                            style: TextStyle(
                                                color: Colors.black45,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child:
                                          Image.asset("asset/image/star.png"),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                      child: Text(
                                        "5.0",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                      child: Text(
                                        "|",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                      child: Text(
                                        "Terjual 6rb",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: lebar * 1.50,
              child: Divider(
                color: Colors.black45,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    pilihan(
                        lebar, pilihan1, pilihan2, 'For rizqi', Colors.white),
                    pilihan(lebar, pilihan3, pilihan4, 'Special Discount',
                        Colors.transparent),
                    pilihan(lebar, pilihan5, pilihan6, 'Aktivitasmu',
                        Colors.transparent),
                    pilihan(lebar, pilihan7, pilihan8, 'Kesukaanmu',
                        Colors.transparent),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Wrap(
                spacing: 3.5,
                runSpacing: 1,
                children: [
                  produk(
                      lebar,
                      lebar * 0.42,
                      tinggi,
                      'asset/image/rival.png',
                      'Rp 699.000',
                      '12%',
                      'Rp 790.000',
                      'asset/image/star.png',
                      'Jakarta Pusat'),
                  produk(
                      lebar,
                      lebar * 0.42,
                      tinggi,
                      'asset/image/lenovo.png',
                      'Rp 5.949.900',
                      '44%',
                      'Rp 1.090.000',
                      'asset/image/star.png',
                      'Kota Depok'),
                  produk(
                      lebar,
                      lebar * 0.42,
                      tinggi,
                      'asset/image/steker.png',
                      'Rp 3.750',
                      '44%',
                      'Rp 1.090.000',
                      'asset/image/star.png',
                      'Kab. Tangerang'),
                  produk(
                      lebar,
                      lebar * 0.42,
                      tinggi,
                      'asset/image/Gpro.png',
                      'Rp 239.000',
                      '32%',
                      'Rp 349.000',
                      'asset/image/star.png',
                      'Kab. Bandung'),
                ],
              ),
            ),
            SizedBox(
              height: tinggi * 0.02,
            ),
            Container(
              width: lebar,
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(width: 1, color: kotak2)),
              child: Text(
                'Lihat Selebihnya',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: tinggi * 0.02,
            ),
          ],
        ),
      ),
    );
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

Widget pilihan(lebar, warna, warna2, judul, warna3) {
  return Container(
    width: lebar * 0.3,
    height: 66,
    padding: EdgeInsets.all(12),
    margin: EdgeInsets.only(right: 12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topRight,
        colors: [warna, warna2],
      ),
    ),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        width: 25,
        height: 3,
        margin: EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2), color: warna3),
      ),
      Text(
        judul,
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
      )
    ]),
  );
}

Widget produk(lebar, double lebar2, tinggi, gambar, harga, diskonPercen,
    jumlahDiskon, penjual, asal) {
  return Container(
    height: tinggi * 0.4,
    width: lebar2,
    margin: EdgeInsets.fromLTRB(0, 15, 12, 15),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: shadow,
          blurRadius: 8,
          offset: Offset(0, 4),
        )
      ],
    ),
    child: Column(
      children: [
        Container(
          width: lebar,
          height: tinggi * 0.19,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            image: DecorationImage(
                image: AssetImage(
                  gambar,
                ),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          width: lebar,
          height: tinggi * 0.163,
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                harga,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: tinggi * 0.006,
              ),
              Row(
                children: [
                  Container(
                    width: 30,
                    height: 20,
                    margin: EdgeInsets.only(right: 6),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1),
                      color: bgDiskon,
                    ),
                    child: Text(
                      diskonPercen,
                      style: TextStyle(
                          color: diskon,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                  ),
                  Text(
                    jumlahDiskon,
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 12,
                        color: search),
                  )
                ],
              ),
              SizedBox(
                height: tinggi * 0.006,
              ),
              Row(
                children: [
                  Image.asset(
                    penjual,
                    width: 15,
                  ),
                  Text(
                    asal,
                    style: TextStyle(
                      color: search,
                      fontSize: 13,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: tinggi * 0.011,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 3),
                    child: Image.asset("asset/image/star.png"),
                  ),
                  Text(
                    '4.8 | Terjual 312',
                    style: TextStyle(color: search, fontSize: 13),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
