import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';

class CartPageData extends StatelessWidget {
  final String medicine;
  final String quantitytxt;
  final String ?nill;
  final IconData ?icon;
  final String price;
  final TextStyle ?style;
 final void Function()? onTap;
  const CartPageData({super.key, required this.medicine, required this.quantitytxt, this.nill, this.icon, required this.price, this.style, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 18.w,right: 18.w,top: 5.h),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
        height: 95.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color:AppTheme.textformfield,
          borderRadius: BorderRadiusDirectional.circular(10.r),
          border: Border.all(color: AppTheme.bordercolor)
        ),
        child:Padding(
          padding:  EdgeInsets.only(top: 10.h,left: 18.w,right: 18.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(medicine,style: AppTheme.greentext,),
                  const Icon(Icons.close,size: 15,)
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
                  Row(
                    children: [
                      Text("Quantity:",style: AppTheme.blacktext,),
                      Text(quantitytxt,style: AppTheme.blacktext,)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(icon,color: AppTheme.greencolor,size: 20,),
                      Text(price,style:style,)
                    ],
                  ),
                  
                ],
              )
            ]
          ),
        ) ,
        ),
      ),
    );
  }
}