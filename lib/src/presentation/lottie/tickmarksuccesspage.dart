import 'dart:async';


import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sahakar_pharmacy/src/presentation/widgets/bottomnavigationbar.dart';
import 'package:sahakar_pharmacy/src/utils/assetresources.dart';

class TickmarkSuccesPage extends StatefulWidget {
  const TickmarkSuccesPage({super.key});

  @override
  State<TickmarkSuccesPage> createState() => _TickmarkSuccesPageState();
}

class _TickmarkSuccesPageState extends State<TickmarkSuccesPage> {
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
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Lottie.asset(AssetResources.tickmark,
              repeat: false, fit: BoxFit.cover),
        ),
      ),
    );
  }
}