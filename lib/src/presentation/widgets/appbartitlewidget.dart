import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';

class AppBarTitleWidget extends StatelessWidget {
  final String text;
  const AppBarTitleWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Row(
          children: [
            const Icon(
              Icons.arrow_back,
             
              size: 20,

            ),
            SizedBox(width:2.w,),
            Text(
              text,
              style: AppTheme.mainheadingtext,
            )
          ],
        ),
      ),
    );
  }
}

