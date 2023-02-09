import 'dart:ffi';

import 'package:flutter/material.dart';

class ColorUtils {
  /// 颜色值通常遵循RGB/ARGB标准
  /// 使用时通常以“#”字符开头的6位或8位16进制表示
  /// 其中ARGB依次代表透明度（Alpha）、红色(Red)、绿色(Green)、蓝色(Blue)
  /// 字符串转换成color
  static Color hexToColor(String color, {
    Color defaultColor = Colors.white,
  }) {
    if (color.isEmpty) {
      return defaultColor;
    }

    if (!color.contains("#")) {
      return defaultColor;
    }

    var hexColor = color.replaceAll("#", "");

    // 如果是6位，前加0xff
    if (hexColor.length == 6) {
      hexColor = "0xff" + hexColor;
      var color = Color(int.parse(hexColor));
      return color;
    }

    // 如果是8位，前加0x
    if (hexColor.length == 8) {
      var color = Color(int.parse("0x$hexColor"));
      return color;
    }

    return defaultColor;
  }

  /// 使用10进制的ARGB初始化颜色
  static Color argbToColor(double a, int r, int g, int b) 
      => Color.fromRGBO(r, g, b, a);
  
  /// 修改颜色的透明度
  static Color alterOpacity(Color color, double opacity) 
      => color.withOpacity(opacity);
}