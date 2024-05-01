
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahakar_pharmacy/src/presentation/search_products/searchproductdata.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';

class OrderDetailsData extends StatelessWidget {
  final String quantitytxt;
  final String price;
  final String medicine;
  const OrderDetailsData({super.key, required this.quantitytxt, required this.price, required this.medicine});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 18.w,right: 18.w,top:5.h),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(10),
           color: AppTheme.textformfield,
          border: Border.all(color: AppTheme.bordercolor,width: 1)
        ),
        height: 95.h,
        width: double.infinity,
       
        child: Padding(
          padding:  EdgeInsets.only(top: 10.h,left: 20.w,right: 20.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(medicine,style: AppTheme.greentext,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SearchProductsData()));
                    },
                    child: const Icon(Icons.close,size: 17,))
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Micro Lab Ltd",style: AppTheme.violettext,),
                  Text("MRP",style: AppTheme.greydatetext,),
                ],
              ),
               Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                       Text("Quantity:",style: AppTheme.blacktext,),
                      Text(quantitytxt,style: AppTheme.blacktext,),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     const Icon(Icons.currency_rupee,color: AppTheme.greencolor,size: 20,),
                      Text(price,style: AppTheme.greenprice,),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}