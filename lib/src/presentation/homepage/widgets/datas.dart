import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';

class HomeData extends StatelessWidget {
  const HomeData({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 18.w),
      child: Container(
        height: 116.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(10.r),
          color: AppTheme.textformfield,
          border: Border.all(color:AppTheme.bordercolor )
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 18.w,vertical: 5.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Dolo-650",style: AppTheme.greentext,),
                  Text("#121555555",style: AppTheme.blacktext,)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Micro Lab Ltd",style: AppTheme.violettext,),
                  Text("MRP",style: AppTheme.mrptext,)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Packing:13",style: AppTheme.smallblacktext,),
                  Row(children: [
                    const Icon(Icons.currency_rupee,color: AppTheme.smallgreencolor,size: 10,),
                    Text("521",style: AppTheme.smallgreentext)
                  ],),
                ],
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Qty:45",style: AppTheme.smallblacktext,),
                  
                ],
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("12/12/2023'03:12AM",style: AppTheme.datetext,),
                  Text("Pending",style: AppTheme.redtext,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}