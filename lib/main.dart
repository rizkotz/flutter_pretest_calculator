import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var num1 = 0, num2 = 0, output = 0;
  final TextEditingController t1 = new TextEditingController(text: '0');
  final TextEditingController t2 = new TextEditingController(text: '0');

  void doadd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      output = num1 + num2;
    });
  }

  void dosub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      output = num1 - num2;
    });
  }

  void domul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      output = num1 * num2;
    });
  }

  void dodiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      output = num1 ~/ num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Calculator"),
            ),
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Hasil Perhitungan : $output',
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        controller: t1,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        controller: t2,
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                            child: ElevatedButton(
                              child: Text('+'),
                              onPressed: () {
                                doadd();
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                            child: ElevatedButton(
                              child: Text('-'),
                              onPressed: () {
                                dosub();
                              },
                            ),
                          ),
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: ElevatedButton(
                              child: Text('*'),
                              onPressed: () {
                                domul();
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: ElevatedButton(
                              child: Text('/'),
                              onPressed: () {
                                dodiv();
                              },
                            ),
                          ),
                        ])
                  ]),
            )));
  }
}
