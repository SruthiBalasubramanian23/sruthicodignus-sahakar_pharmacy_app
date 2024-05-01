import 'package:flutter/material.dart';
import 'package:sahakar_pharmacy/src/presentation/search_products/requestmedicine.dart';
import 'package:sahakar_pharmacy/src/presentation/search_products/searchresult.dart';
import 'package:sahakar_pharmacy/src/presentation/widgets/bottomnavigationbar.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';

class SearchProductsData extends StatefulWidget {
  const SearchProductsData({super.key});

  @override
  State<SearchProductsData> createState() => _SearchProductsDataState();
}

class _SearchProductsDataState extends State<SearchProductsData> {
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const RequestMedicine()));
                },
                readOnly: true,
                decoration: InputDecoration(
                  prefixIcon: GestureDetector(
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>const BottomNavBarPage()));
                    },
                    child: const Icon(Icons.arrow_back)),
                  suffixIcon: const Icon(Icons.close),
                  hintText:"Dolo 650",
                  hintStyle: AppTheme.blacktext
                ),
              ),
            ),
            const SearchResult(),
          ]
        ),
      )
            );
  }
}