import 'package:flutter/material.dart';

import '../../assets.dart' show MasiroTheme;

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: MasiroTheme.headerBackgroundColor,
      //   title: const Text(MasiroTheme.title),
      //   centerTitle: MasiroTheme.align == 'center',
      // ),
      body: Container(
        child: RaisedButton(
          child: const Text("返回"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
