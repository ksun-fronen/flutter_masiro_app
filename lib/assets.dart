import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './assets/icons/masiro_app_icon_icons.dart';

class MasiroIcons {
  static const menu = Icon(MasiroAppIcon.menu);
  static const search = Icon(MasiroAppIcon.search);
  static const logo = AssetImage('lib/assets/imgs/masiro-logo.png');

  // static Future logo() async {
  //   return await rootBundle.loadString('lib/assets/imgs/masiro-logo.png');
  // }

  static Icon menuSet(color) {
    return Icon(MasiroAppIcon.menu, color: color);
  }
}

class MasiroTheme {
  static final headerBackgroundColor = Colors.red.shade300;
  static const String title = "真白萌小镇";
  static const align = 'center';
}
