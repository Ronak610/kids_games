import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flat_3d_button/flat_3d_button.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Start_Page extends StatefulWidget {
  const Start_Page({Key? key}) : super(key: key);

  @override
  State<Start_Page> createState() => _Start_PageState();
}

class _Start_PageState extends State<Start_Page> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "assets/images/startpage.jpg",
              fit: BoxFit.fill,
              height: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Container(
                height: 50,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    shape: BoxShape.circle),
                child: Flat3dButton(
                  onPressed: () {
                    Get.toNamed('G');
                  },
                  child: Text("Play",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  color: Colors.red,
                  mouseCursor: MouseCursor.uncontrolled,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
