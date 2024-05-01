import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';

class OrderData extends StatefulWidget {
  const OrderData({super.key});

  @override
  State<OrderData> createState() => _OrderDataState();
}

class _OrderDataState extends State<OrderData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(10.r),
        color: AppTheme.textformfield,
       border: Border.all(color:AppTheme.bordercolor )
      ),
      height: 85.h,
      width: double.infinity,
     
     child: Padding(
       padding: EdgeInsets.only(left: 18.w,right: 18.w,top: 12.h),
       child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
              children: [
                Text("Order ID:",style: AppTheme.orderidText,),
                Text("#12525525555",style: AppTheme.numberidText,)
              ],
            ),
            Text("Delivered",style:AppTheme.deliveredtext,)
            ],
          ),
       
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Date:12/10/2023",style: AppTheme.greydatetext,),
               Text("MRP",style: AppTheme.greydatetext,),
            ],
          ),
       
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Time:09'30 AM",style: AppTheme.greydatetext,),
               Container(
                
                color: AppTheme.violetcolor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   const Icon(Icons.currency_rupee,color:AppTheme.textformfield,size: 12,),
                   Text("5000",style:AppTheme.ratetext ,)
                  ],
                )),
            ],
          ),
        ],
       ),
     ),
    );
  }
}