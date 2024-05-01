import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:sahakar_pharmacy/src/presentation/login/widget/buttonwidget.dart';
import 'package:sahakar_pharmacy/src/presentation/login/widget/textcontrollerwidget.dart';
import 'package:sahakar_pharmacy/src/presentation/widgets/bottomnavigationbar.dart';
import 'package:sahakar_pharmacy/src/utils/assetresources.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              // color: Colors.amber,
              height: 370.h,
              child: Center(
                child: Container(
                  height: 165.h,
                  width: 165.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(103.r),
                    //color: Colors.black
                  ),
                  child: Image.asset(
                    AssetResources.sahakar,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: SizedBox(
                //color: Colors.blue,
                height: 250.h,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login an Account",
                      style: AppTheme.headtext,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Welcome to Pharmaceutical Store,Login an account with us to get started",
                      style: TextStyle(
                          color: AppTheme.subtitlecolor,
                          fontFamily: 'Nunito',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    TextController(
                      prefixicon: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Image.asset(
                          AssetResources.user,
                        ),
                      ),
                      labelText: "Username",
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    TextController(
                      prefixicon: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Image.asset(
                          AssetResources.key,
                        ),
                      ),
                      suffixicon: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Image.asset(
                          AssetResources.eye,
                        ),
                      ),
                      obscureText: true,
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 210, right: 14),
              child: Column(
                children: [
                  Text("Forgot password?"),
                  Divider(
                    indent: 5,
                    endIndent: 5,
                    color: Color(0xff232323),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Buttonwidget(
              txt: "Continue",
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BottomNavBarPage())),
            )
          ],
        ),
      ),
    );
  }
}
