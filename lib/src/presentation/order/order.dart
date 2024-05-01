import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahakar_pharmacy/src/presentation/order/orderdata.dart';
import 'package:sahakar_pharmacy/src/presentation/order/orderdetails.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
      backgroundColor: AppTheme.backColor,),
      backgroundColor: AppTheme.backColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only( right: 18.w, left: 18.w),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const OrderDetails()));
                },
                child: const OrderData()),
              SizedBox(
                height: 8.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const OrderDetails()));
                },
                child: const OrderData()),
              SizedBox(
                height: 8.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const OrderDetails()));
                },
                child: const OrderData()),
              SizedBox(
                height: 8.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const OrderDetails()));
                },
                child: const OrderData()),
              SizedBox(
                height: 8.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const OrderDetails()));
                },
                child: const OrderData()),
              SizedBox(
                height: 8.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const OrderDetails()));
                },
                child: const OrderData()),
              SizedBox(
                height: 8.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const OrderDetails()));
                },
                child: const OrderData()),
              SizedBox(
                height: 8.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const OrderDetails()));
                },
                child: const OrderData()),
              SizedBox(
                height: 8.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const OrderDetails()));
                },
                child: const OrderData()),
            ],
          ),
        ),
      ),
    );
  }
}
