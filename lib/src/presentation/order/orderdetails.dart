
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahakar_pharmacy/src/presentation/order/orderdetailsdata.dart';
import 'package:sahakar_pharmacy/src/presentation/widgets/appbartitlewidget.dart';
import 'package:sahakar_pharmacy/src/presentation/widgets/dialog.dart';
import 'package:sahakar_pharmacy/src/presentation/widgets/greenishbutton.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.backColor,
        scrolledUnderElevation: 0.0,
        automaticallyImplyLeading: false,
        title: const AppBarTitleWidget(text: "Order Details"),
      ),
      backgroundColor: AppTheme.backColor,
      body: Column(
        children: [
          const OrderDetailsData(
              quantitytxt: "32", price: "40", medicine: "Dolo-650"),
          const OrderDetailsData(
              quantitytxt: "12", price: "50", medicine: "Metformin"),
          const OrderDetailsData(
              quantitytxt: "02", price: "40", medicine: "Povidone"),
          const OrderDetailsData(
              quantitytxt: "45", price: "40", medicine: "Sorbitol"),
          const OrderDetailsData(
              quantitytxt: "45", price: "40", medicine: "Sorbitol"),
          SizedBox(
            height: 12.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: SizedBox(
              height: 82.h,
              width: double.infinity,
              //color: Colors.amber,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Order Number",
                        style: AppTheme.boldblackhead,
                      ),
                      Text(
                        "#215554455",
                        style: AppTheme.boldblackhead,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Status", style: AppTheme.status),
                      Text(
                        "Delivered",
                        style: AppTheme.smallgreentext,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Amount",
                        style: AppTheme.italicblack,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.currency_rupee,
                            size: 17,
                          ),
                          Text(
                            "5454",
                            style: AppTheme.boldblackhead,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          GreenishButton(
            txt: 'Order Again',
            onTap: () {
              showDialog(
               
                context: context,
                builder: (BuildContext context) {
                  return const DialogBox();
                },
              );
            },
          )
        ],
      ),
    );
  }
}
