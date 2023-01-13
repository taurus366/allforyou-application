import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppTheme {


  AppTheme._();


  static logo(Animation<double> animation) {
  return FadeTransition(
        opacity: animation,
        child: Image.asset(
          "assets/logo.png",
          width: 80.w,
          height: 17.h,
          fit: BoxFit.cover,
        ));
  }

  static appBackroundColorGradient(){

    return BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade900,
              Colors.blue.shade500,
              Colors.blue.shade300
            ]));
  }


}