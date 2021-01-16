import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/components/packages.dart';
import '../../assets.dart';
import '../../routes.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> globalScaffoldKey = GlobalKey<ScaffoldState>();

  _openDrawer() => globalScaffoldKey.currentState.openDrawer();

  _closeDrawer() => Navigator.of(context).pop();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalScaffoldKey,
      // drawer: Drawer(
      //   child: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //         const Text('This is the Drawer'),
      //         ElevatedButton(
      //           onPressed: _closeDrawer,
      //           child: const Text('Close Drawer'),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      appBar: AppBar(
          backgroundColor: MasiroTheme.headerBackgroundColor,
          title: const Text(MasiroTheme.title),
          centerTitle: MasiroTheme.align == 'center',
          actions: [
            CircleContainer(
              size: 40,
              child: CircleButton(
                size: 40,
                shape: CircleBorder(),
                child: MasiroIcons.search,
                onPressed: () {
                  Navigator.of(context).push(searchPageBuilder(context.widget));
                },
              ),
              margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
            )
          ],
          //todo: 日后用来做头像就行了
          //log: 虽说自带leading，但还是预写一个留着以后改，性能消耗啥的不大影响。
          leading: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: const DecorationImage(
                image: MasiroIcons.logo,
              ),
            ),
            alignment: Alignment.center,
            child: CircleButton(
              // onPressed: _openDrawer,
              onPressed: () {
                Navigator.of(context).push(loginPageBuilder(context.widget));
              },
            ),
            margin: const EdgeInsets.all(10),
          )),
      body: Container(
        child: Column(children: [
          const Text("哈哈哈aa "),
          RaisedButton(
              child: const Text("跳转登录"),
              onPressed: () {
                Navigator.of(context).pushNamed('/login');
              }),
          RaisedButton(
              child: const Text("跳转搜索"),
              onPressed: () {
                // Navigator.of(context).push(searchPageBuilder(context.widget));

                // Navigator.of(context).push(MaterialPageRoute<void>(
                //     builder: (context) => Scaffold(
                //       appBar: AppBar(),
                //           body: Container(
                //             child: const Text("测试"),
                //           ),
                //         )));
              }),
          Column(children: [
            const Text("的撒旦撒"),
            RawMaterialButton(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: const CircleBorder(),
              onPressed: () {},
            ),
          ]),
        ]),
      ),
    );
  }
}
