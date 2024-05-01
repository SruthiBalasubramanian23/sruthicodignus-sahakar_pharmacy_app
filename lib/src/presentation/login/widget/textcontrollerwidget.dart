import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';

class TextController extends StatelessWidget {
 final TextEditingController?controller;
 final Widget? prefixicon;
 final Widget? suffixicon;
 final bool? obscureText;
 final String? labelText;
 final String?initialValue;
  const TextController({super.key, this.controller, this.prefixicon, this.suffixicon, this.obscureText= false, this.labelText, this.initialValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 324.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(10.r),
        color: AppTheme.textformfield,
        border: Border.all(color: const Color(0xff79AC49),width:0.25)
      ),
      child: TextFormField(
        
        initialValue:initialValue ,style: AppTheme.blacktext,
        obscureText:obscureText! ,
        controller: controller,
        
        decoration: InputDecoration(

          contentPadding:EdgeInsets.only(left: 4.w,top: 2.h),
          labelText:labelText ,
          labelStyle:AppTheme.labelText,
          suffixIcon: suffixicon,
          prefixIcon: prefixicon,
          border: InputBorder.none
        ),
      ),
    );
  }
}