import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task3/views/splash/view.dart';

import 'core/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        home: SplashView(),
        theme: ThemeData(
            fontFamily: 'Poppins',
            scaffoldBackgroundColor: AppColors.white,
            appBarTheme: const AppBarTheme(
              color: AppColors.white,
              elevation: 0.0,
              shadowColor: AppColors.white,
              scrolledUnderElevation: 0,
            )),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
