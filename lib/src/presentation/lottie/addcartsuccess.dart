import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sahakar_pharmacy/src/presentation/widgets/bottomnavigationbar.dart';
import 'package:sahakar_pharmacy/src/utils/assetresources.dart';
import 'package:lottie/lottie.dart';




class AddCartSuccess extends StatefulWidget {
  const AddCartSuccess({super.key});

  @override
  State<AddCartSuccess> createState() => _AddCartSuccessState();
}

class _AddCartSuccessState extends State<AddCartSuccess> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const BottomNavBarPage())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor:Colors.white,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Lottie.asset(AssetResources.addcart,
              repeat: false, fit: BoxFit.cover),
        ),
      ),
    );
  }
}