import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_t_video/src/state_actions/channel_state_actions.dart';

import '/gen/assets.gen.dart';

import '../../../util/color_utils.dart';
import '../../../constant/screens.dart';
import '../../../pages/home/widgets/search_bar.dart';

class TopBar extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TabBarState();
}

class _TabBarState extends ConsumerState<TopBar>
    // 这里要修改_controller的length只能使用这个
    with
        TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 0, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Tab> _tabs =
        ref.watch(channelsProvider).channels.map((e) => Tab(text: e)).toList();
    // 因为要更新Tab的数量，所以需要重新创建_controller
    if (_controller.length != _tabs.length) {
      _controller = TabController(length: _tabs.length, vsync: this);
    }
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: kHorizontalPadding,
              right: kHorizontalPadding,
              top: kScreenTopPadding + (44 - kSearchWidgetHeight) / 2),
          child: SearchBar(
            text: '新辰变 第5季',
            actions: [
              Assets.images.iconGame.image(height: kSearchWidgetHeight - 5.h),
              Assets.images.downloadChannelIconDefault
                  .image(height: kSearchWidgetHeight - 6.h),
              Assets.images.iconTime.image(height: kSearchWidgetHeight - 10.h),
            ],
          ),
        ),
        Container(
          height: 48.h,
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: TabBar(
              controller: _controller,
              isScrollable: true,
              indicator: const BoxDecoration(), // 取消下划线
              labelPadding: EdgeInsets.symmetric(horizontal: 8.w),
              labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle: TextStyle(
                color: ColorUtils.alterOpacity(Colors.white, 0.9),
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
              ),
              tabs: _tabs,
            ),
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
