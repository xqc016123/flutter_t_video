import 'dart:io';

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_t_video/src/routes/application.dart';
import 'package:flutter_t_video/src/routes/routes.dart';

void main() {
  // 设置Android头部的导航栏透明
  if (Platform.isAndroid) {
    SystemUiOverlayStyle uiOverlayStyle = const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
    );
    SystemChrome.setSystemUIOverlayStyle(uiOverlayStyle);
  }

  // 初始化route
  final route = FluroRouter();
  Routes.configureRoutes(route);
  Application.router = route;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(414, 736), // iPhone 8 Plus
      builder: (context, _) {
        return ProviderScope(
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'flutter_t_video',
            theme: ThemeData(backgroundColor: Colors.white),
            onGenerateRoute: Application.router.generator,
          )
        );
      }
    );
  }
}