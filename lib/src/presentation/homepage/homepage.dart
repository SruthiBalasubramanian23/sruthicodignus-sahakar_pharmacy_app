
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahakar_pharmacy/src/presentation/homepage/notification.dart';
import 'package:sahakar_pharmacy/src/presentation/homepage/widgets/datas.dart';
import 'package:sahakar_pharmacy/src/presentation/homepage/widgets/searchfield.dart';
import 'package:sahakar_pharmacy/src/presentation/search_products/search_products.dart';
import 'package:sahakar_pharmacy/src/utils/assetresources.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      backgroundColor: AppTheme.backColor,
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0.0,
      bottom: PreferredSize(preferredSize: Size.square(80.h), child: 
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: 18.w),
        child: SizedBox(
          height: 125.h,
          width:double.infinity,
          //color: Colors.amber,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("Welcome, User",style: AppTheme.boldtitle,),
                      Image.asset(AssetResources.wavinghand,height: 20.h,width: 20.w,)
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>const NotificationPage()));
                    },
                    child: Image.asset(AssetResources.notification,height: 22.h,width: 22.w,))
                ],
              ),
              SizedBox(height: 5.h,),
              Row(
                children: [
                  Row(
                    children: [
                      Image.asset(AssetResources.location,height: 15.h,width: 15.w,),
                      Text("Kerala, INDIA",style: AppTheme.greyText,)
                    ],
                  )
                ],
              ),
              SizedBox(height: 15.h,),
              SearchField(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>const SearchProducts())),
                txt: "Search Medicine...",
                prefixIcon:Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Image.asset(AssetResources.search,height: 24.h,width: 24.w,),
                ) ,
              )
            ],
          ),
        ),
      )
      ),
     ),
      backgroundColor: AppTheme.backColor,
      body: SingleChildScrollView(
        
        child: 
            Column(
              children: [
                SizedBox(
                  // height:520.h ,
                  width: double.infinity,
                  // color: Colors.blue,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.w),
                        child: Text(
                          "Pending Order",
                          style: AppTheme.headingtext,
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      const HomeData(),
                      SizedBox(
                        height: 8.h,
                      ),
                      const HomeData(),
                      SizedBox(
                        height: 8.h,
                      ),
                      const HomeData(),
                      SizedBox(
                        height: 8.h,
                      ),
                      const HomeData(),
                      SizedBox(
                        height: 8.h,
                      ),
                      const HomeData(),
                    ],
                  ),
                ),
              ],
            )
        
        ),
      
    );
  }
}
