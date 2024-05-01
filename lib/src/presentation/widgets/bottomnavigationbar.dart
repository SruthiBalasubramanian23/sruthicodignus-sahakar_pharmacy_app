// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sahakar_pharmacy/src/presentation/cardpage/cardpage.dart';
import 'package:sahakar_pharmacy/src/presentation/cartpage/cartpage.dart';
import 'package:sahakar_pharmacy/src/presentation/homepage/homepage.dart';
import 'package:sahakar_pharmacy/src/presentation/order/order.dart';

import 'package:sahakar_pharmacy/src/presentation/profile/profile.dart';
import 'package:sahakar_pharmacy/src/utils/assetresources.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int pageIndex = 0;

  final pages = [
    const HomePage(),
    const CartPage(),
    const Order(),
    const CardPage(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: buildMyNavBar(context),
      ),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.h,
      decoration: BoxDecoration(
          color: const Color(0xff79AC49),
          borderRadius: BorderRadiusDirectional.circular(50.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            child: pageIndex==0?Container(
              height: 50.h,
              width: 50.w,
              decoration:BoxDecoration(
                color: AppTheme.textformfield,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(25.r),bottomLeft: Radius.circular(25.r),bottomRight: Radius.circular(25.r))

              ),
               child:SvgPicture.asset(AssetResources.house,color:AppTheme.smallgreencolor,fit: BoxFit.none,) ,
            ):SvgPicture.asset(AssetResources.house,color:AppTheme.textformfield,fit: BoxFit.none,)
          ),
          TextButton(
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
             child: pageIndex==1?Container(
              height: 50.h,
              width: 50.w,
              decoration:BoxDecoration(
                color: AppTheme.textformfield,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(25.r),bottomLeft: Radius.circular(25.r),bottomRight: Radius.circular(25.r))

              ),
               child:SvgPicture.asset(AssetResources.cart,color:AppTheme.smallgreencolor,fit: BoxFit.none,) ,
            ):SvgPicture.asset(AssetResources.cart,color:AppTheme.textformfield,fit: BoxFit.none,)
          ),
          TextButton(
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            child: pageIndex==2?Container(
              height: 50.h,
              width: 50.w,
              decoration:BoxDecoration(
                color: AppTheme.textformfield,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(25.r),bottomLeft: Radius.circular(25.r),bottomRight: Radius.circular(25.r))

              ),
               child:SvgPicture.asset(AssetResources.brief,color:AppTheme.smallgreencolor,fit: BoxFit.none,) ,
            ):SvgPicture.asset(AssetResources.brief,color:AppTheme.textformfield,fit: BoxFit.none,)
          ),
          TextButton(
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            child: pageIndex==3?Container(
              height: 50.h,
              width: 50.w,
              decoration:BoxDecoration(
                color: AppTheme.textformfield,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(25.r),bottomLeft: Radius.circular(25.r),bottomRight: Radius.circular(25.r))

              ),
               child:SvgPicture.asset(AssetResources.card,color:AppTheme.smallgreencolor,fit: BoxFit.none,) ,
            ):SvgPicture.asset(AssetResources.card,color:AppTheme.textformfield,fit: BoxFit.none,)
          ),
          TextButton(
            onPressed: () {
              setState(() {
                pageIndex = 4;
              });
            },
            child: pageIndex==4?Container(
              height: 50.h,
              width: 50.w,
              decoration:BoxDecoration(
                color: AppTheme.textformfield,
               borderRadius: BorderRadius.only(topRight: Radius.circular(25.r),bottomLeft: Radius.circular(25.r),bottomRight: Radius.circular(25.r))

              ),
               child:SvgPicture.asset(AssetResources.profile,color:AppTheme.smallgreencolor,fit: BoxFit.none,) ,
            ):SvgPicture.asset(AssetResources.profile,color:AppTheme.textformfield,fit: BoxFit.none,)
          ),
        ],
      ),
    );
  }
}
