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
  String dropdownValue = 'all boxes';
  final Widget _redBox = Container(width: 50, height: 50, color: Colors.red);
  final Widget _blueBox = Container(width: 50, height: 50, color: Colors.blue);
  final Widget _purpleBox = Container(width: 50, height: 50, color: Colors.purple);
  final Widget _tealBox = Container(width: 50, height: 50, color: Colors.teal);

  List<Widget> _boxes = [];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 30),
          Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(border: Border.all(color: Colors.teal, width: 1)),
            child: DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              elevation: 1,
              alignment: Alignment.bottomRight,
              // style: const TextStyle(color: Colors.deepPurple),
              underline: const SizedBox.shrink(),
              onChanged: (String? newValue) {
                print(newValue);
                dropdownValue = newValue!;
                setState(() {});
              },

              // selectedItemBuilder: (BuildContext) => [
              //   Container(width: 10, height: 50, color: Colors.red),
              //   Container(width: 10, height: 50, color: Colors.amber),
              // ],
              items: <String>['all boxes', 'red box', 'blue box', 'purple box', 'teal box'].map<DropdownMenuItem<String>>(
                (String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                },
              ).toList(),
            ),
          ),
          const SizedBox(height: 30),
          _container(),
        ],
      ),
    );
  }

  Widget _container() {
    if (dropdownValue == 'all boxes') {
      _boxes.clear();
      _boxes.add(_redBox);
      _boxes.add(_blueBox);
      _boxes.add(_purpleBox);
      _boxes.add(_tealBox);
    } else if (dropdownValue == 'red box') {
      _boxes.clear();
      _boxes.add(_redBox);
    } else if (dropdownValue == 'blue box') {
      _boxes.clear();
      _boxes.add(_blueBox);
    } else if (dropdownValue == 'purple box') {
      _boxes.clear();
      _boxes.add(_purpleBox);
    } else if (dropdownValue == 'teal box') {
      _boxes.clear();
      _boxes.add(_tealBox);
    }

    return Container(
      width: 500,
      height: 500,
      color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _boxes,
      ),
    );
  }
}
