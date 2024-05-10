import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';

class ImageButton extends StatelessWidget {
  final String? txt;
  final void Function()? onTap;
  final String img;
  final MainAxisAlignment mainAxisAlignment;
  final double horizontal;
  final double height;
  const ImageButton(
      {super.key,
      this.txt,
      this.onTap,
      required this.img,
      required this.mainAxisAlignment,
      required this.horizontal,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(8.r),
            color: const Color(0xff79AC49),
          ),
          height: height,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: mainAxisAlignment,
            children: [
              SvgPicture.asset(
                img,
              ),
              Text(
                txt!,
                style: AppTheme.imagebuttontext,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
