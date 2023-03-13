
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kids_games/Screen/View/1_page.dart';
import 'package:kids_games/Screen/View/Start_Page.dart';

void main() {

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (contect) => Start_Page(),
        'G':(context)=>Game_1(),
      },
    ),
  );
}
