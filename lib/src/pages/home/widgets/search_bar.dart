import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

import '/gen/assets.gen.dart';

import '../../../util/list_utils.dart';
import '../../../constant/screens.dart';
import '../../../widgets/translucent_button.dart';

/// 搜索框高度
var kSearchWidgetHeight = 32.h;

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key, 
    required this.text, 
    this.actions,
    this.onTap,
  }) : super(key: key);

  final String text;
  final List<Widget>? actions;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    // 组装子组件，中间加入间距
    List<Widget> children = [Expanded(
      child: TranslucentButton(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(kSearchWidgetHeight / 2),
        height: kSearchWidgetHeight,
        opacity: 0.25,
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: kHorizontalPadding - 4.w),
          child: Row(
            children: [
              Assets.images.iconSearch.image(scale: 8),
              SizedBox(width: 6.w,),
              Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                ),
              )
            ],
          ),
        ),
      ),
    )];
    if (actions?.isNotEmpty ?? false) {
      children.add(SizedBox(width: 30.w,));
      children.addAll(
        ListUtils.addObjectBetweenItems(
          actions!, 
          () => SizedBox(width: 10.w,
        )),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: children,
    );
  }
}