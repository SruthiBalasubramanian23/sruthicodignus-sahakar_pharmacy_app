import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahakar_pharmacy/src/presentation/search_products/searchproductdata.dart';
import 'package:sahakar_pharmacy/src/presentation/widgets/bottomnavigationbar.dart';
import 'package:sahakar_pharmacy/src/utils/assetresources.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';

class SearchProducts extends StatefulWidget {
  const SearchProducts({super.key});

  @override
  State<SearchProducts> createState() => _SearchProductsState();
}

class _SearchProductsState extends State<SearchProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50,left: 18,right: 18),
              child: TextFormField(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const SearchProductsData()));
                },
                readOnly: true,
                decoration: InputDecoration(
                  prefixIcon: GestureDetector(
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>const BottomNavBarPage()));
                    },
                    child: const Icon(Icons.arrow_back)),
                  suffixIcon: const Icon(Icons.close),
                  hintText: 'Search products',
                  hintStyle: AppTheme.greyishText
                ),
              ),
            ),
            SizedBox(
             height: 700.h,
             width: double.infinity,
             //color: Colors.amber,
             child: Padding(
               padding: const EdgeInsets.all(120.0),
               child: Image.asset(AssetResources.add,),
             ),
            )
          ],
        ),
      ),
    );
  }
}