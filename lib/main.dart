import 'package:flutter/material.dart';
import 'routes.dart' show Routes;

void main() {
  // runApp(MyApp());
  runApp(MasiroApp());
}

//todo: 设置路由的参数
//todo: 设置Provider
//todo: 判断本地登录状态，视情况要找个框架

//todo: v1.x 新增国际化

class MasiroApp extends StatelessWidget {
  final route = Routes();

  @override
  Widget build(BuildContext context) => MaterialApp(
        routes: route.list,
        onGenerateRoute: route.onGenerateRoute,
        debugShowCheckedModeBanner: false,
      );
}
