import 'package:flutter/material.dart';
import 'package:mvvm_practice_app/presentation/color_manager.dart';

ThemeData getApplicationTheme(){
  return ThemeData(
    //main color of the app
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpecity70,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1, 
     colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: ColorManager.grey, // Your accent color here
  ),
    //card view them

  );
}