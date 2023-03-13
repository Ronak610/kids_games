import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';


class Intro_Screen extends StatefulWidget {
  const Intro_Screen({Key? key}) : super(key: key);

  @override
  State<Intro_Screen> createState() => _Intro_ScreenState();
}

class _Intro_ScreenState extends State<Intro_Screen> {
  @override
  Widget build(BuildContext cntext) {
    return SafeArea(child: Scaffold(body:IntroductionScreen(pages: [PageViewModel()]),));
  }
}
