import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task3/core/extentions/num.dart';
import 'package:task3/core/extentions/string.dart';
import 'package:task3/core/utils/colors.dart';
import '../../core/route_utils/route_utils.dart';
import '../order_accepted/view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      RouteUtils.pushAndRemoveAll(context, OrderAcceptedView());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Image.asset(
          'logo'.assetPNG,
          height: 68.height,
          width: 268.width,
        ),
      ),
    );
  }
}
