import 'package:docdoc_app/core/constants/values/app_routes.dart';
import 'package:docdoc_app/features/auth/presentation/screens/login_screen.dart';
import 'package:docdoc_app/features/onBoarding/screens/onBoarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocDocApp extends StatelessWidget {
  const DocDocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          Routes.onBoarding: (context) => OnboardingScreen(),
          Routes.logIn: (context) => LoginScreen(),
        },
        initialRoute: Routes.onBoarding,
      ),
    );
  }
}
