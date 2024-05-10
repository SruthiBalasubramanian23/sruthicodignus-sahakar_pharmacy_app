import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahakar_pharmacy/src/presentation/authpage/auth.dart';
import 'package:sahakar_pharmacy/src/presentation/login/view/loginpage.dart';
import 'package:sahakar_pharmacy/src/presentation/login/widget/textcontrollerwidget.dart';
import 'package:sahakar_pharmacy/src/presentation/profile/widgets/savebutton.dart';
import 'package:sahakar_pharmacy/src/presentation/widgets/bottomnavigationbar.dart';
import 'package:sahakar_pharmacy/src/utils/assetresources.dart';
import 'package:sahakar_pharmacy/src/utils/pref_resources.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String namee="";

  @override
  Future<void> didChangeDependencies() async {
    await getname();
    super.didChangeDependencies();
  }
   getname() async {
    final prefs = await SharedPreferences.getInstance();
    final name = prefs.getString(PrefResources.PHARMAMEDICALS);
   
    setState(() {
      namee = name!;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 18.w, right: 18.w, top: 60.h),
            child: SizedBox(
              // color: Colors.blue,
              height: 80.h,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 55.w,
                            height: 55.h,
                            decoration: BoxDecoration(
                                // color: Colors.amber,
                                borderRadius:
                                    BorderRadiusDirectional.circular(50.r)),
                            child: Image.asset(AssetResources.userprofile),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Text(
                            "${namee}",
                            style: AppTheme.profilepageheadtext,
                          )
                        ],
                      ),
                      GestureDetector(
                          onTap: () async{
                            await AuthService.logout();
                            Navigator.pushAndRemoveUntil(
                              // ignore: use_build_context_synchronously
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()),
                              (route) =>
                                  false, 
                            );
                          },
                          child: Image.asset(
                            AssetResources.exit,
                            height: 16.h,
                            width: 18.w,
                          ))
                    ],
                  ),
                  const Divider(
                    color: AppTheme.greycolor,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: SizedBox(
              height: 350.h,
              width: double.infinity,
              //color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Change password",
                    style: AppTheme.greyishText,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  TextController(
                    prefixicon: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Image.asset(
                        AssetResources.key,
                      ),
                    ),
                    suffixicon: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Image.asset(
                        AssetResources.eye,
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Text(
                    "Confirm Password",
                    style: AppTheme.greyishText,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  TextController(
                    prefixicon: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Image.asset(
                        AssetResources.key,
                      ),
                    ),
                    suffixicon: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Image.asset(
                        AssetResources.eye,
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SaveButton(
                    txt: "SAVE",
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BottomNavBarPage())),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
