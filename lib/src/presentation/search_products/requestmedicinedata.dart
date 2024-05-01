import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahakar_pharmacy/src/presentation/login/widget/textcontrollerwidget.dart';
import 'package:sahakar_pharmacy/src/presentation/lottie/addcartsuccess.dart';
import 'package:sahakar_pharmacy/src/presentation/widgets/appbartitlewidget.dart';
import 'package:sahakar_pharmacy/src/presentation/widgets/imagebutton.dart';
import 'package:sahakar_pharmacy/src/utils/assetresources.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';

class RequestMedicineData extends StatefulWidget {
  const RequestMedicineData({super.key});

  @override
  State<RequestMedicineData> createState() => _RequestMedicineDataState();
}

class _RequestMedicineDataState extends State<RequestMedicineData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backColor,
      appBar: AppBar(
        title: const AppBarTitleWidget(text: "Request Medicine"),
        automaticallyImplyLeading: false,
        backgroundColor: AppTheme.backColor,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: SizedBox(
              //color: Colors.amber,
              height: 210.h,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Medicine Name",
                    style: AppTheme.greyishText,
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  const TextController(
                    initialValue: "DDD Medicine",
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text(
                    "Quantity",
                    style: AppTheme.greyishText,
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  const TextController(
                    initialValue: "123",
                  ),
                ],
              ),
            ),
          ),
          ImageButton(
            img: AssetResources.cart,
            mainAxisAlignment: MainAxisAlignment.center,
            txt: " ADD CART",
            horizontal: 18.w,
            height: 50.h,
            onTap: () =>Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddCartSuccess())) ,
          )
        ],
      ),
    );
  }
}
