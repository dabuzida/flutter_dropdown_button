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
        body: DropdownBtn(),
      ),
    );
  }
}

class DropdownBtn extends StatefulWidget {
  const DropdownBtn({Key? key}) : super(key: key);

  @override
  State<DropdownBtn> createState() => _DropdownBtnState();
}

class _DropdownBtnState extends State<DropdownBtn> {
  String dropdownValue = '전체보기';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            width: 500,
            height: 300,
            color: Colors.blue,
          ),
          DropdownButton<String>(
            value: dropdownValue,
            // icon: const Icon(Icons.arrow_downward),
            elevation: 12,
            style: const TextStyle(color: Colors.deepPurple),
            underline: SizedBox.shrink(),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>['전체보기', '알츠윈', '알츠윈 컨설턴트', '보건소 전화', '보건소 대면'].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
