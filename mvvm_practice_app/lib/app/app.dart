// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:mvvm_practice_app/presentation/theme_manager.dart';


class MyApp extends StatefulWidget {
 

    MyApp._internal(); 
   int s=0;
    static final MyApp instance =MyApp._internal(); //single instance --singleton
  factory MyApp()=>instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
//private named constructor
  int  s=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:getApplicationTheme(),
      home:Container()
    );
  }
}

