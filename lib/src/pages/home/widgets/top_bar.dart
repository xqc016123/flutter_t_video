import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

import '/gen/assets.gen.dart';

import '../../../util/color_utils.dart';
import '../../../constant/screens.dart';
import '../../../pages/home/widgets/search_bar.dart';
import '../../../service/mock_service.dart';

class TopBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TabBarState();
}

class _TabBarState extends State<TopBar> with SingleTickerProviderStateMixin {
  late TabController _controller;
  late List<String> _tabbars;

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    super.initState();

    /// 读取tabbar标题
    MockService.getChannels().then((value) => {
      _tabbars = value.my.items
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: kHorizontalPadding,
            right: kHorizontalPadding,
            top: kScreenTopPadding + (44 - kSearchWidgetHeight) / 2
          ),
          child: SearchBar(
            text: '新辰变 第5季',
            actions: [
              Assets.images.iconGame.image(height: kSearchWidgetHeight - 5.h),
              Assets.images.downloadChannelIconDefault.image(height: kSearchWidgetHeight - 6.h),
              Assets.images.iconTime.image(height: kSearchWidgetHeight - 10.h),
            ],
          ),
        ),
        Container(
          height: 48.h,
          child: TabBar(
            controller: _controller,
            isScrollable: true,
            indicator: const BoxDecoration(), // 取消下划线
            labelStyle: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
            unselectedLabelStyle: TextStyle(
              color: ColorUtils.alterOpacity(Colors.white, 0.9),
              fontSize: 16.sp,
            ),
            tabs: [
              Tab(text: '直播',),
              Tab(text: '精选',),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}