import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahakar_pharmacy/src/presentation/cartpage/cartpagedetails.dart';
import 'package:sahakar_pharmacy/src/presentation/widgets/dialog.dart';
import 'package:sahakar_pharmacy/src/presentation/widgets/dialogsecond.dart';
import 'package:sahakar_pharmacy/src/presentation/widgets/greenishbutton.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backColor,
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: AppTheme.backColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CartPageData(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const DialogSecond(
                        medicine: "Metformin", quantitytxt: "12", price: "50");
                  },
                );
              },
              medicine: "Metformin",
              quantitytxt: "12",
              price: "50",
              style: AppTheme.greentext,
              icon: Icons.currency_rupee,
            ),
            CartPageData(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const DialogSecond(
                      medicine: "Metformin",
                      quantitytxt: "12",
                      price: "00",
                    );
                  },
                );
              },
              medicine: 'Metformin',
              quantitytxt: '12',
              price: '00',
              style: AppTheme.zerotext,
            ),
            CartPageData(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const DialogSecond(
                        medicine: "Metformin", quantitytxt: "12", price: "50");
                  },
                );
              },
              medicine: 'Metformin',
              quantitytxt: '12',
              price: '50',
              style: AppTheme.greenprice,
              icon: Icons.currency_rupee,
            ),
            CartPageData(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const DialogSecond(
                        medicine: "Sorbitol", quantitytxt: "45", price: "00");
                  },
                );
              },
              medicine: 'Sorbitol',
              quantitytxt: '45',
              price: '00',
              style: AppTheme.zerotext,
            ),
            CartPageData(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const DialogSecond(
                        medicine: "Purified talc",
                        quantitytxt: "23",
                        price: "60");
                  },
                );
              },
              medicine: 'Purified talc',
              quantitytxt: '23',
              price: '60',
              style: AppTheme.greenprice,
              icon: Icons.currency_rupee,
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: SizedBox(
                //color: Colors.amber,
                height: 35.h,
                child: Row(
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
                          size: 18,
                          color: AppTheme.blackcolor,
                        ),
                        Text(
                          "5454",
                          style: AppTheme.italicblack,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            GreenishButton(
              txt: "Place Order",
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
      ),
    );
  }
}
