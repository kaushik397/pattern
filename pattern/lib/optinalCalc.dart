import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
//import 'dart:convert';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int _countera = 0;
  int _counterb = 0;

  void _incrementCounter() {
    setState(() {
      _countera++;
    });
  }

  void _decrementCounter() {
    if (_countera > 0) {
      setState(() {
        _countera--;
      });
    } else {
      _countera = 0;
    }
  }

  void _incrementCounterb() {
    setState(() {
      _counterb++;
    });
  }

  void _decrementCounterb() {
    if (_counterb > 0) {
      setState(() {
        _counterb--;
      });
    } else {
      _counterb = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 90.0,
            ),
            Image.asset('images/ratio.png'),
            SizedBox(height: 25.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: 550,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.lightGreenAccent),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Your a is :',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 70.0,
                        ),
                        FloatingActionButton(
                          heroTag: 'btn1',
                          onPressed: _decrementCounter,
                          tooltip: 'decrement',
                          child: Icon(MdiIcons.minus),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          height: 40,
                          width: 70,
                          child: Text(
                            '$_countera',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(7)),
                        ),
                        SizedBox(width: 20.0),
                        FloatingActionButton(
                          heroTag: 'btn2',
                          onPressed: _incrementCounter,
                          tooltip: 'inccrement',
                          child: Icon(MdiIcons.plus),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Your b is :',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 70.0,
                        ),
                        FloatingActionButton(
                          heroTag: 'btn3',
                          onPressed: _decrementCounterb,
                          tooltip: 'decrement',
                          child: Icon(
                            MdiIcons.minus,
                            size: 20,
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          height: 40,
                          width: 70,
                          child: Text(
                            '$_counterb',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(7)),
                        ),
                        SizedBox(width: 20.0),
                        FloatingActionButton(
                          heroTag: 'btn4',
                          onPressed: _incrementCounterb,
                          tooltip: 'inccrement',
                          child: Icon(
                            MdiIcons.plus,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                    // Text('${_counterb + _countera}')
                  ],
                ),
              ),
            ),
            Text(
              'The Golden Ratio is :',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 50,
                width: 80,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '${(_countera + _counterb) / _countera}',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.grey,
                ))
          ],
        ),
      ),
    );
  }
}
