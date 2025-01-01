import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mvvm_practice_app/presentation/resources/assets_manager.dart';
import 'package:mvvm_practice_app/presentation/resources/color_manager.dart';
import 'package:mvvm_practice_app/presentation/resources/router_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer?_timer;
  _startDelay(){
    _timer=Timer(Duration(seconds: 2), _goNext);
  }
  _goNext(){
    Navigator.pushReplacementNamed(context, Routes.onBoadingRoute);
  }
  @override
  void initState() {
 _startDelay();
    super.initState();
  }
  @override
  void dispose() {
   _timer!.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(child: Image.asset(ImageAssets.splashLogo)),
    );
  }
}