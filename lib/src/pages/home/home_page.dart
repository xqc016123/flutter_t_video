import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

import 'widgets/top_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 底部背景图
          Container(
            color: Colors.green,
            height: 300.h,
          ),
          // 列表页面
          Container(
            color: Colors.transparent,
          ),
          // 顶部分页TabBar
          TopBar(),
        ],
      ),
    );
  }
}