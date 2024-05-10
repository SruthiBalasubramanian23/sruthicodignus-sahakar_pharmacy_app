import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahakar_pharmacy/src/presentation/authpage/auth.dart';
import 'package:sahakar_pharmacy/src/presentation/login/cubit/login_cubit.dart';
import 'package:sahakar_pharmacy/src/di/di.dart' as di;
import 'package:sahakar_pharmacy/src/presentation/login/view/loginpage.dart';
import 'package:sahakar_pharmacy/src/presentation/widgets/bottomnavigationbar.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late bool isAuthenticated=false;
  @override
  void initState() {
    di.setup();

    super.initState();
    _checkAuthentication();
  }

  Future<void> _checkAuthentication() async {
    isAuthenticated = await AuthService.isAuthenticated();
    setState(() {}); 
  }
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider.value(value: di.getIt<LoginCubit>()),
          ],
          child: MaterialApp(
            theme: ThemeData(
              fontFamily: "Nunito",
            ),
            debugShowCheckedModeBanner: false,
            home: child,
          ),
        );
      },
      child: isAuthenticated ? const BottomNavBarPage() : const LoginPage(),
    );
  }
}
