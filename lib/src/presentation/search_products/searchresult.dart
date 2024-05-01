import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahakar_pharmacy/src/presentation/widgets/dialogsecondaddcart.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({super.key});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 18.w,right: 18.w,top: 18.h),
      child: GestureDetector(
         onTap: () {
                showDialog(
               
                context: context,
                builder: (BuildContext context) {
                  return const DialogSecondAddCart(medicine: "Dolo-650", quantitytxt: "", price: "1200");
                },
              );
              },
        child: Container(
           decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(10.r),
            color: AppTheme.textformfield,
           border: Border.all(color:AppTheme.bordercolor )
          ),
          height: 85.h,
          width: double.infinity,
         
         child: Padding(
           padding: EdgeInsets.only(left: 18.w,right: 18.w,top: 8.h),
           child: Column(
            children: [
              Row(
                children: [
                  Text("Dolo-650",style: AppTheme.greentext,)
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
                  const Text("Packing:15"),
                  Row(
                    children: [
                      const Icon(Icons.currency_rupee,size: 18,color: AppTheme.greencolor,),
                      Text("40",style: AppTheme.greenprice,)
                    ],
                  )
                ],
              )
            ],
           )
         )
        ),
      ),
    );
  }
}