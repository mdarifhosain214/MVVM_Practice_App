import 'package:flutter/material.dart';
import 'package:mvvm_practice_app/presentation/forgot_password/forgot_password.dart';
import 'package:mvvm_practice_app/presentation/login/login.dart';
import 'package:mvvm_practice_app/presentation/main/main_view.dart';
import 'package:mvvm_practice_app/presentation/onboading/onboading.dart';
import 'package:mvvm_practice_app/presentation/register/register.dart';
import 'package:mvvm_practice_app/presentation/resources/app_string.dart';
import 'package:mvvm_practice_app/presentation/splash/splash.dart';
import 'package:mvvm_practice_app/presentation/store_details/store_details.dart';

class Routes{
  static const String splashRoute="/";
  static const String onBoadingRoute="/onBoading";
  static const String loginRoute="/login";
  static const String registerRoute="/register";
  static const String forgotPasswordRoute="/forgotPassword";
  static const String mainRoute="/main";
  static const String storeDetailsRoute="/storeDetails";

}

class RouteGenerator{
  static Route<dynamic>getRoute(RouteSettings routeSettings){
    switch (routeSettings.name) {
      case Routes.splashRoute:
      return MaterialPageRoute(builder: (_)=>SplashScreen());
       case Routes.loginRoute:
      return MaterialPageRoute(builder: (_)=>LoginScreen());
       case Routes.onBoadingRoute:
      return MaterialPageRoute(builder: (_)=>OnBoadingScreen());
       case Routes.registerRoute:
      return MaterialPageRoute(builder: (_)=>RegisterScreen());
       case Routes.forgotPasswordRoute:
      return MaterialPageRoute(builder: (_)=>ForgotPasswordScreen());
       case Routes.mainRoute:
      return MaterialPageRoute(builder: (_)=>MainScreen());
       case Routes.storeDetailsRoute:
      return MaterialPageRoute(builder: (_)=>StoreDetailsScreen());
      default:
      return unDefineRoute();
    }

  }
  static Route<dynamic>unDefineRoute(){
    return MaterialPageRoute(builder: (_)=>Scaffold(
      appBar: AppBar(title: Text(AppString.noRoute),),
      body: Center(child: Text(AppString.noRoute),),
    ));
  }
}