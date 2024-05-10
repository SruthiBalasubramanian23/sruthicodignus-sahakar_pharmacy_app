import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahakar_pharmacy/src/presentation/search_products/requestmedicinedata.dart';
import 'package:sahakar_pharmacy/src/presentation/widgets/bottomnavigationbar.dart';
import 'package:sahakar_pharmacy/src/presentation/widgets/imagebutton.dart';
import 'package:sahakar_pharmacy/src/utils/assetresources.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';

class RequestMedicine extends StatefulWidget {
  const RequestMedicine({super.key});

  @override
  State<RequestMedicine> createState() => _RequestMedicineState();
}

class _RequestMedicineState extends State<RequestMedicine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 18, right: 18),
              child: TextFormField(
                // onTap: () {
                //   Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchProductsData()));
                // },
                readOnly: true,
                decoration: InputDecoration(
                    prefixIcon: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BottomNavBarPage()));
                        },
                        child: const Icon(Icons.arrow_back)),
                    suffixIcon: const Icon(Icons.close),
                    hintText: 'DDD medicine',
                    hintStyle: AppTheme.blacktext),
              ),
            ),
            SizedBox(
              height: 285.h,
            ),
            SizedBox(
              height: 200.h,
              width: double.infinity,
              //s color: Colors.amber,
              child: Column(
                children: [
                  Text(
                    "Sorry! No item Found",
                    style: AppTheme.highlightredcolortext,
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  ImageButton(
                    img: AssetResources.plus,
                    txt: " Request Medicine",
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RequestMedicineData())),
                    mainAxisAlignment: MainAxisAlignment.center,
                    horizontal: 75.w,
                    height: 41.h,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
