import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_practice_app/app/app.dart';

class Test extends StatelessWidget {
  const Test({super.key});
  void update() {
    MyApp.instance.s = 10;if (kDebugMode) {
      print(MyApp.instance.s);
    }
  }
 

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
