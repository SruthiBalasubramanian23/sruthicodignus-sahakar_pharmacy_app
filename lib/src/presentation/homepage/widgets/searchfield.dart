import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';

class SearchField extends StatelessWidget {
  final String ?txt;
  final Widget? prefixIcon;
  final void Function()?onTap;
  const SearchField({super.key, this.txt, this.prefixIcon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 50.h,
      decoration: BoxDecoration(
        // ignore: use_full_hex_values_for_flutter_colors
        border: Border.all(color: const Color(0xff00000033),width: 0.25),
        color: AppTheme.lineargradient,
        borderRadius: BorderRadiusDirectional.circular(33.r)
      ),
      child: TextFormField(
        readOnly: true,
        onTap:onTap ,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: prefixIcon,
          labelText: txt,
          labelStyle: AppTheme.searchtext
        ),
      ),
    );
  }
}