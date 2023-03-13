import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kids_games/Screen/Controller/Controller.dart';
import 'package:lottie/lottie.dart';

class Game_1 extends StatefulWidget {
  const Game_1({Key? key}) : super(key: key);

  @override
  State<Game_1> createState() => _Game_1State();
}

class _Game_1State extends State<Game_1> {
  @override
  Widget build(BuildContext context) {
    Home_Controller home_controller = Get.put(Home_Controller());
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
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black54,
            ),
            Lottie.network("https://lottiefiles.com/74268-cute-tiger"),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      margin: EdgeInsets.all(5),
                      child: DragTarget(
                        builder: (context, candidateData, rejectedData) => Row(
                          children: [
                            home_controller.m.value
                                ? Container(
                                    child:
                                        Image.asset("assets/images/mphoto.png"),
                                  )
                                : Container(
                                    child:
                                        Image.asset("assets/images/mback.png"),
                                  )
                          ],
                        ),
                        onAccept: (data) {
                          home_controller.m.value = true;
                        },
                        onWillAccept: (data) {
                          return data == "red";
                        },
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      margin: EdgeInsets.all(5),
                      child: DragTarget(
                        builder: (context, candidateData, rejectedData) => Row(
                          children: [
                            home_controller.k.value
                                ? Container(
                                    child:
                                        Image.asset("assets/images/kimage.png"),
                                  )
                                : Container(
                                    child:
                                        Image.asset("assets/images/kback.png"),
                                  )
                          ],
                        ),
                        onAccept: (data) {
                          home_controller.k.value = true;
                        },
                        onWillAccept: (data) {
                          return data == "yello";
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      margin: EdgeInsets.all(5),
                      child: DragTarget(
                        builder: (context, candidateData, rejectedData) => Row(
                          children: [
                            home_controller.b.value
                                ? Container(
                                    child:
                                        Image.asset("assets/images/biamge.png"),
                                  )
                                : Container(
                                    child:
                                        Image.asset("assets/images/bback.png"),
                                  )
                          ],
                        ),
                        onAccept: (data) {
                          home_controller.b.value = true;
                        },
                        onWillAccept: (data) {
                          return data == "green";
                        },
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 105,
                      color: Colors.green,
                      margin: EdgeInsets.all(4),
                      child: DragTarget(
                        builder: (context, candidateData, rejectedData) => Row(
                          children: [
                            home_controller.w.value
                                ? Container(
                                    child: Image.asset(
                                      "assets/images/wimage.png",
                                    ),
                                  )
                                : Container(
                                    child:
                                        Image.asset("assets/images/wback.png"),
                                  )
                          ],
                        ),
                        onAccept: (data) {
                          home_controller.w.value = true;
                        },
                        onWillAccept: (data) {
                          return data == "blue";
                        },
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 250,
                  color: Colors.white24,
                  child: Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Draggable(
                          data: "red",
                          child: home_controller.m.value
                              ? Container()
                              : Container(
                                  height: 50,
                                  width: 50,
                                  child:
                                      Image.asset("assets/images/mphoto.png"),
                                ),
                          feedback: Image.asset(
                            "assets/images/mpho"
                            "to.png",
                            width: 150,
                            height: 150,
                          ),
                        ),
                        Draggable(
                          data: "yello",
                          child: home_controller.k.value
                              ? Container()
                              : Container(
                                  height: 50,
                                  width: 50,
                                  child:
                                      Image.asset("assets/images/kimage.png"),
                                ),
                          feedback: Image.asset(
                            "assets/images/kimage.png",
                            width: 150,
                            height: 150,
                          ),
                        ),
                        Draggable(
                          data: "green",
                          child: home_controller.b.value
                              ? Container()
                              : Container(
                                  height: 50,
                                  width: 50,
                                  child:
                                      Image.asset("assets/images/biamge.png"),
                                ),
                          feedback: Image.asset(
                            "assets/images/biamge.png",
                            width: 150,
                            height: 150,
                          ),
                        ),
                        Draggable(
                          data: "blue",
                          child: home_controller.w.value
                              ? Container()
                              : Container(
                                  height: 50,
                                  width: 50,
                                  child:
                                      Image.asset("assets/images/wimage.png"),
                                ),
                          feedback: Image.asset(
                            "assets/images/wimage.png",
                            width: 150,
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
