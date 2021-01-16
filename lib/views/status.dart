import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("错误页"),
      ),
      body: Container(
        child: const Text("错误页内容"),
      ),
    );
  }
}
