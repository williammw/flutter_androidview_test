import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_androidview_test/text_view.dart';
import 'package:flutter/services.dart';
import 'package:flutter_androidview_test/flutter_androidview_test.dart';

void main() => runApp(MaterialApp(home: TextViewExample()));

class TextViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Flutter TextView example')),
        body: Column(children: [
          Center(
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 30.0),
                  width: 130.0,
                  height: 100.0,
                  child: TextView(
                    onTextViewCreated: _onTextViewCreated,
                  ))),
          Expanded(
              flex: 3,
              child: Container(
                  color: Colors.blue[100],
                  child: Center(child: Text("Hello from Flutter!"))))
        ]));
  }

  void _onTextViewCreated(TextViewController controller) {
    controller.setText('Hello from Android!');
  }
}
