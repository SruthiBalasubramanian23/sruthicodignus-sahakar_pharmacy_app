
import 'package:flutter/material.dart';
import 'package:sahakar_pharmacy/src/presentation/homepage/widgets/notificationdata.dart';
import 'package:sahakar_pharmacy/src/presentation/widgets/appbartitlewidget.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backColor,
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: AppTheme.backColor,
        automaticallyImplyLeading: false,
        title: const AppBarTitleWidget(text: "Notification"),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            NotificationData(),
            NotificationData(),
            NotificationData(),
            NotificationData(),
            NotificationData(),
            NotificationData(),
            NotificationData(),
          ],
        ),
      ),
    );
  }
}
