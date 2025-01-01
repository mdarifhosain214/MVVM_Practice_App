import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:mvvm_practice_app/presentation/resources/color_manager.dart';

class HappyNewYear2025 extends StatefulWidget {
  const HappyNewYear2025({super.key});

  @override
  State<HappyNewYear2025> createState() => _HappyNewYear2025State();
}

class _HappyNewYear2025State extends State<HappyNewYear2025> {

  double boxHeight=100;
  double boxWidth=100;
  double radius=100;
    var random = Random();
  change(){
boxHeight=random.nextInt(300).toDouble() ;
boxWidth=random.nextInt(300).toDouble() ;
radius=random.nextInt(100).toDouble() ;
setState(() {
  
});
    
  }
  @override
  void initState() {
    super.initState();
     Timer.periodic(Duration(seconds: 1), (timer) {
    // Your function logic here
   change();
  });
   
  }


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Happy New Year"),
      ),
      body: Center(
        child: AnimatedContainer(
          
          duration: Duration(seconds: 1),
        curve: Curves.fastLinearToSlowEaseIn,
        width:boxHeight,
        height: 150,
        decoration: BoxDecoration(
          color: ColorManager.primary,
          borderRadius: BorderRadius.circular(radius)
        ),
        ),
      ),
    );
  }
}