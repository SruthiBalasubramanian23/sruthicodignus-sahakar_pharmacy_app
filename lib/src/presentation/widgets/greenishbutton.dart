import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';

class GreenishButton extends StatelessWidget {
  final String txt;
  final void Function() onTap;
  const GreenishButton({super.key, required this.txt, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 18.w),
      child: GestureDetector(
        onTap:onTap ,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
             color: AppTheme.textformfield,
            borderRadius: BorderRadiusDirectional.circular(50.r),
            border: Border.all(color: AppTheme.bordercolor)
          ),
          height: 50.h,
          width: double.infinity,
         
          child: Text(txt,style: AppTheme.greentext,),
        ),
      ),
    );
  }
}