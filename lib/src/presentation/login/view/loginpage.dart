import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahakar_pharmacy/src/di/di.dart';
import 'package:sahakar_pharmacy/src/presentation/login/cubit/login_cubit.dart';
import 'package:sahakar_pharmacy/src/presentation/login/widget/buttonwidget.dart';
import 'package:sahakar_pharmacy/src/presentation/login/widget/textcontrollerwidget.dart';
import 'package:sahakar_pharmacy/src/presentation/widgets/bottomnavigationbar.dart';
import 'package:sahakar_pharmacy/src/utils/assetresources.dart';
import 'package:sahakar_pharmacy/src/utils/pref_resources.dart';
import 'package:sahakar_pharmacy/src/utils/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  late LoginCubit loginCubit;

  @override
  void initState() {
    loginCubit = getIt<LoginCubit>();
    super.initState();
     _checkStoredCredentials();
  }
  
    void _checkStoredCredentials() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? username = prefs.getString(PrefResources.LOGIN_NAME);
    String? password = prefs.getString(PrefResources.LOGIN_PASSWORD);

    if (username != null && password != null) {
      
      loginCubit.loginfun(username, password);
    }
  }
  void _handleLogin() {
    final username = _usernameController.text;
    final password = _passwordController.text;
    if (username.isNotEmpty && password.isNotEmpty) {
      BlocProvider.of<LoginCubit>(context).loginfun(username, password);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Please enter username and password"),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
         FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppTheme.backColor,
        body: BlocListener<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state is LoginLoaded) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const BottomNavBarPage(),
                ),
              );
            } else if (state is LoginError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.message)),
              );
            }
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 370.h,
                      child: Center(
                        child: Container(
                          height: 165.h,
                          width: 165.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(103.r),
                          ),
                          child: Image.asset(
                            AssetResources.sahakar,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.w),
                      child: SizedBox(
                        height: 250.h,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Login an Account",
                              style: AppTheme.headtext,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Welcome to Pharmaceutical Store,Login an account with us to get started",
                              style: TextStyle(
                                color: AppTheme.subtitlecolor,
                                fontFamily: 'Nunito',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            TextController(
                              controller: _usernameController,
                              prefixicon: Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: Image.asset(
                                  AssetResources.user,
                                ),
                              ),
                              labelText: "Username",
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            TextController(
                              controller: _passwordController,
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
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 210, right: 14),
                      child: Column(
                        children: [
                          Text("Forgot password?"),
                          Divider(
                            indent: 5,
                            endIndent: 5,
                            color: Color(0xff232323),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Buttonwidget(txt: "Continue", onTap: _handleLogin),
                  ],
                ),
              ),
              BlocBuilder<LoginCubit, LoginState>(
                builder: (context, state) {
                  if (state is LoginLoading) {
                    return const CircularProgressIndicator(
                      color: Colors.green,
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
