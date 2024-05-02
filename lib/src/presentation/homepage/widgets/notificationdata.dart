import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';

class NotificationData extends StatelessWidget {
  const NotificationData({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 18.w,vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(10.r),
            color: AppTheme.textformfield,
            border: Border.all(color: AppTheme.bordercolor)
        ),
        height: 85.h,
        width: double.infinity,
      
        child: Padding(
          padding:  EdgeInsets.only(top:5.h,left: 10.w,right: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Your Order Delivered",style: TextStyle(
      color: AppTheme.titlecolor,
      fontFamily: 'Lato',
      fontSize: 18.sp,
      fontWeight: FontWeight.w600)),
              Text("The recommended paracetamol dosing for adults aZ",style: AppTheme.paragraphgrey,),
              SizedBox(height: 4.h,),
              Padding(
                padding:  EdgeInsets.only(right: 8.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Time:03'25",style: AppTheme.dategreentext,),
                    Text("Date:12-10-2022",style: AppTheme.dategreentext,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}