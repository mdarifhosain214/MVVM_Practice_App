import 'package:flutter/material.dart';
import 'package:mvvm_practice_app/presentation/resources/color_manager.dart';
import 'package:mvvm_practice_app/presentation/resources/font_manager.dart';
import 'package:mvvm_practice_app/presentation/resources/style_manager.dart';
import 'package:mvvm_practice_app/presentation/resources/values_manager.dart';

ThemeData getApplicationTheme(){
  return ThemeData(
    //main color of the app====================
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpecity70,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1, 
    splashColor: ColorManager.primaryOpecity70,

     colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: ColorManager.grey, 
    // Your accent color here
  ),
    //card view them=============================
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),
    //app bar theme======================
    appBarTheme: AppBarTheme(
      centerTitle: true,color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primaryOpecity70,
      titleTextStyle: getRegularStyle(color: ColorManager.white,fontSize: FontSize.s16)

    ),
    //Button theme======================
    buttonTheme: ButtonThemeData(shape:StadiumBorder() ,
    
    disabledColor: ColorManager.grey1,
    buttonColor: ColorManager.primary,
    splashColor: ColorManager.primaryOpecity70
    ),
    //elevated buttom theme============
    elevatedButtonTheme: ElevatedButtonThemeData(
     
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: ColorManager.white,fontSize: FontSize.s16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      )
    ),
    //
    textTheme: TextTheme(
      headlineLarge: getSemiBoldStyle(color: ColorManager.darkGrey,fontSize: FontSize.s16) ,
      titleMedium: getMediunStyle(color: ColorManager.lightGrey,fontSize: FontSize.s14),
      bodyLarge: getRegularStyle(color: ColorManager.grey )
      
       
    ),
    inputDecorationTheme: InputDecorationTheme( 
      contentPadding: EdgeInsets.all(AppPadding.p8),
      helperStyle: getRegularStyle(color: ColorManager.grey1),
      labelStyle: getMediunStyle(color: ColorManager.darkGrey),
      errorStyle: getRegularStyle(color: ColorManager.error),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey,width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
        
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary,width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
        
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error,width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
        
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary,width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
        
      ),
    )


  );
  
}