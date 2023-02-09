import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/gen/assets.gen.dart';

import '../../constant/screens.dart';
import '../../constant/strings.dart';
import '../../routes/application.dart';
import '../../routes/routes.dart';
import '../../widgets/translucent_button.dart';
import '../../constant/logger.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SpalshPage();
}

class _SpalshPage extends State<SplashPage> {

  Timer? _timer;
  /// 倒计时读数
  var _countdown = 5;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(Duration(seconds: 1), (_) {
      logger.d('SplashPage倒计时执行开始：_countdown=$_countdown');
      if (_countdown <= 1) {
        _goHomePage();
      } else {
        _countdown -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  left: 0, right: 0, top: 0, bottom: 0,
                  child: GestureDetector(
                  onTap: () {
                    logger.d('点击了广告海报!!!');
                  },
                  child: CachedNetworkImage(
                      imageUrl: 'https://n.sinaimg.cn/sinakd20110/76/w690h986/20200310/3697-iqrhckm8907553.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: kHorizontalPadding, 
                    right: 12.h, 
                    top: kScreenTopPadding + 6.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // 广告文本
                      Text(
                        advertiseText,
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                      // 跳过按钮
                      TranslucentButton(
                        borderRadius: BorderRadius.circular(4.w),
                        color: Colors.black, 
                        width: 44.w,
                        height: 30.h,
                        child: Text(
                          skipText,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                          ),
                        ),
                        onTap: _goHomePage,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 24.h,
                  left: 0.h,
                  right: 0.h,
                  child: Column(
                    children: [
                      TranslucentButton(
                        color: Colors.black, 
                        width: 90.w,
                        height: 90.w,
                        borderRadius: BorderRadius.circular(45.w),
                        child: Assets.images.splashShake.image(scale: 3.3),
                      ),
                      SizedBox(height: 10.h,),
                      Text(
                        advShakeTipsText,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 3.h,),
                      Text(
                        advRouteToUrlText,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(       
            child: Assets.images.logoVideo.image(),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timerDispose();
    super.dispose();
  }

  /// 跳转到home页
  void _goHomePage() {
    _timerDispose();
    Application.router.navigateTo(
      context, 
      Routes.home, 
      replace: true, 
      transition: TransitionType.fadeIn,
    );
  }

  /// 销毁定时器
  void _timerDispose() {
    _timer?.cancel();
    _timer = null;
  }
}