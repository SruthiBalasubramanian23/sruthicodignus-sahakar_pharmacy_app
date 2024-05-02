import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';

class Buttonwidget extends StatelessWidget {
  final String?txt;
  final void Function()? onTap;
 const Buttonwidget({super.key, this.txt, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: GestureDetector(
        onTap:onTap ,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(50.r),
            color: const Color(0xff79AC49),
          ),
         height: 50.h,
         width: double.infinity,
        
        child: Text(txt!,style: TextStyle(
      color:AppTheme.textformfield,
      fontFamily: 'Nunito',
      fontSize: 18.sp,
      fontWeight: FontWeight.w700),),
        ),
      ),
    );
  }
}