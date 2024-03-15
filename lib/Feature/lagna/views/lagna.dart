// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_lms/Core/utils/Custom_noification_page.dart';
import 'package:flutter_lms/Core/utils/FloatingActionButton.dart';
import 'package:flutter_lms/Core/utils/Logo.dart';
import 'package:flutter_lms/Core/utils/drawer.dart';

class Lagna extends StatelessWidget {
  const Lagna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawerr(),
      floatingActionButton: FloatingActionButtonn(),
      backgroundColor: const Color.fromRGBO(25, 23, 44, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: TextButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 17.0,
                  ),
                  label: Text(
                    " العودة ",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "wolfex",
                      fontSize: 13,
                    ),
                  ),
                ),

                margin: EdgeInsets.fromLTRB(305, 30, 0, 0),
                height: 35,
                width: 94,
                // alignment: Alignment.topRight,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(
                      color: const Color.fromRGBO(82, 63, 237, 1),
                      width: 2,
                    )),
              ),
            ),
            Container(
              child: Text(
                " أهلا بك  :  أحمد ماهر",
                style: TextStyle(
                    color: Colors.white, fontFamily: "wolfexx", fontSize: 16),
              ),
              alignment: Alignment.topRight,
              margin: EdgeInsets.fromLTRB(5, 30, 15, 0),
            ),
            SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/img/lagna2.png",
                      scale: 1.0,
                      width: 204.77,
                      height: 204.77,
                    ),
                  ],
                ),
                margin: EdgeInsets.fromLTRB(0, 115, 0, 63),
              ),
            ),
            Text(
              "! لم يتم الاعلان عن ارقام اللجان بعد ",
              style: TextStyle(
                  color: Color.fromARGB(97, 255, 255, 255),
                  fontFamily: "wolfexx",
                  fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
