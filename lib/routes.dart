import 'package:flutter/material.dart';
import 'package:myapp/views/account/login.dart' show LoginPage;
import 'package:myapp/views/home/index.dart' show HomePage;
import 'package:myapp/views/home/search.dart'
    show SearchPage, createSearchRoute;
import 'views/status.dart';

export 'package:myapp/views/home/index.dart';
export 'package:myapp/views/home/search.dart';
export 'package:myapp/views/account/login.dart';
export 'views/status.dart';

class ScaffoldBlackEnum {
  static const view = Scaffold(
    backgroundColor: Colors.black,
  );
}

class Routes {
  final list = <String, WidgetBuilder>{
    '/': (context) => HomePage(),
    '/login': (context) => LoginPage(),
    '/search': (context) => SearchPage(),
  };

  Route onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => EmptyPage());
  }
}

Route _createDefaultRoute(Widget page, Widget prev) {
  return PageRouteBuilder(
    transitionDuration: const Duration(milliseconds: 250),
    reverseTransitionDuration: const Duration(milliseconds: 250),
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      Animation fadeAnimation = Tween(begin: 1.0, end: 0.0).animate(animation);
      Animation scaleAnimation = Tween(begin: 1.0, end: 0.9).animate(animation);
      Animation offsetAnimation =
          Tween(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0))
              .animate(animation);

      return Stack(children: [
        ScaffoldBlackEnum.view,
        ScaleTransition(
            scale: scaleAnimation,
            child: FadeTransition(
              opacity: fadeAnimation,
              child: prev,
            )),
        SlideTransition(
          position: offsetAnimation,
          child: child,
        ),
      ]);
    },
  );
}

Route loginPageBuilder(Widget prev) => _createDefaultRoute(LoginPage(), prev);

Route searchPageBuilder(Widget prev) => _createDefaultRoute(SearchPage(), prev);
