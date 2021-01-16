import 'package:flutter/material.dart';
import 'package:myapp/assets.dart';
import '../../routes.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MasiroTheme.headerBackgroundColor,
        title: TextField(
          decoration: InputDecoration(
            hintText: "请输入需要搜索的帖子标题",
            icon: MasiroIcons.search,
            fillColor: Colors.white,
            focusColor: Colors.white,
            hoverColor: Colors.white,
            border: InputBorder.none,
            // borderSide: BorderSide(color: Color(0xFFFFFFFF), width: 1.0)),
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: const Text("data"),
        ),
      ),
    );
  }
}

// Route createSearchRoute(Widget page, Widget prev) {
//   return PageRouteBuilder(
//     transitionDuration: const Duration(milliseconds: 250),
//     reverseTransitionDuration: const Duration(milliseconds: 250),
//     pageBuilder: (context, animation, secondaryAnimation) => page,
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       Animation fadeAnimation = Tween(begin: 1.0, end: 0.0).animate(animation);
//       Animation scaleAnimation = Tween(begin: 1.0, end: 0.9).animate(animation);
//       Animation<Offset> offsetAnimation2 =
//           Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0))
//               .animate(animation);
//
//       return Stack(children: [
//         ScaffoldBlackEnum.view,
//         ScaleTransition(
//             scale: scaleAnimation,
//             child: FadeTransition(
//               opacity: fadeAnimation,
//               child: prev,
//             )),
//         SlideTransition(
//           position: offsetAnimation2,
//           child: child,
//         ),
//       ]);
//     },
//   );
// }
