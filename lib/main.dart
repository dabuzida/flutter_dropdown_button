import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DropdownButton',
      home: Scaffold(
        backgroundColor: Colors.white60,
        appBar: AppBar(
          title: const Text('DropdownButton'),
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: Center(
          child: Column(children: <Widget>[
            Icon(Icons.block, color: Colors.red),
            SizedBox(height: 50),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.green, width: 1)),
              child: SizedBox.shrink(),
            ),
          ]),
        ),
      ),
    );
  }
}
