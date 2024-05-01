import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahakar_pharmacy/src/presentation/homepage/homepage.dart';

import 'package:sahakar_pharmacy/src/presentation/login/view/loginpage.dart';
import 'package:sahakar_pharmacy/src/presentation/order/order.dart';


void main() {
  runApp(const MyApp());
   SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
     
      builder: (_ , child) {
        return MaterialApp(
           theme: ThemeData(
          fontFamily: "Nunito",
        ),
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: const LoginPage(),
    );
  }
}
