import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahakar_pharmacy/src/presentation/widgets/bottomnavigationbar.dart';
import 'package:sahakar_pharmacy/src/utils/assetresources.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';

class DialogSecond extends StatelessWidget {
  final String medicine;
  final String quantitytxt;
  final String price;
  const DialogSecond(
      {super.key,
      required this.medicine,
      required this.quantitytxt,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(10.r),
        ),
        surfaceTintColor: AppTheme.textformfield,
        title: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    medicine,
                    style: AppTheme.headingtext,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const BottomNavBarPage()));
                      },
                      child: const Icon(
                        Icons.close,
                        size: 18,
                      )),
                ],
              ),
              Text(
                "Micro Lab Ltd",
                style: AppTheme.greyText,
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Quantity",
                    style: AppTheme.blacktext,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 41.h,
                    width: 140.w,
                    decoration: BoxDecoration(
                      color: AppTheme.backColor,
                      borderRadius: BorderRadiusDirectional.circular(10.r),
                    ),
                    child: Text(
                      quantitytxt,
                      style: AppTheme.blacktext,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        AssetResources.rupee,
                        height: 18,
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text(
                        price,
                        style: AppTheme.blacktext,
                      ),
                    ],
                  ),
                  Container(
                    alignment: FractionalOffset.center,
                    decoration: BoxDecoration(
                        color: AppTheme.greencolor,
                        borderRadius: BorderRadiusDirectional.circular(10.r)),
                    height: 41.h,
                    width: 140.w,
                    child: Text(
                      "SAVE",
                      style: AppTheme.ratetext,
                    ),
                  )
                ],
              )
            ],
          ),
        )
        );
  }
}
