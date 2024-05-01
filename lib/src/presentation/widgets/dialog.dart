
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahakar_pharmacy/src/presentation/lottie/tickmarksuccesspage.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';

class DialogBox extends StatelessWidget {
  
  const DialogBox({super.key, });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape:RoundedRectangleBorder(
      
        borderRadius: BorderRadiusDirectional.circular(10.r),),
      
      surfaceTintColor: AppTheme.textformfield,
      title: Column(
        children: [
          Text("Are you Sure? Your Order Placed",style: AppTheme.blacktext,),
          SizedBox(height: 10.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: AppTheme.backColor,
                    borderRadius: BorderRadiusDirectional.circular(10.r) ,
                    border: Border.all(color: const Color(0xff00000026).withOpacity(0.15))              ),
                  alignment: Alignment.center,
                  height: 41.h,
                  
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Cancel Order",style: AppTheme.blacktext,),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>TickmarkSuccesPage()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: AppTheme.greencolor,
                    borderRadius: BorderRadiusDirectional.circular(10.r) ,
                    border: Border.all(color: Color(0xff00000026).withOpacity(0.15))              ),
                  alignment: Alignment.center,
                  height: 41.h,
                  
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Place Order",style: AppTheme.ratetext,),
                  ),
                ),
              ),
            ],
          )
        ],
      )
    );
  }
}