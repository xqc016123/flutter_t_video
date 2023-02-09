import 'package:flutter/material.dart';

import '../util/color_utils.dart';

class TranslucentButton extends StatelessWidget {
  const TranslucentButton({
    Key? key,
    required this.color,
    this.opacity = 0.64,
    this.width,
    this.height,
    this.borderRadius,
    this.child,
    this.onTap,
  }) : super(key: key);

  final Color color;
  final double opacity;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final Widget? child;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: ColorUtils.alterOpacity(color, opacity),
          borderRadius: borderRadius,
        ),
        alignment: Alignment.center,
        width: width,
        height: height,
        child: child,
      ),
    );
  }
}