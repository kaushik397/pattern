import 'package:flutter/material.dart';

class PagerPage extends StatefulWidget {
  @override
  _PagerPageState createState() => _PagerPageState();
}

class _PagerPageState extends State<PagerPage> {
  String _b;
  String _a;
  double ans = 0.0;
  void _answerme() {
    setState(() {
      if (_a == null && _b == null) {
        ans = 0.0;
      } else {
        ans = (double.parse(_b) + double.parse(_a)) / double.parse(_a);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(25.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 50.0),
            Image.asset('images/ratio.png'),
            Padding(padding: EdgeInsets.all(15.0)),
            SizedBox(height: 80.0),
            Container(
              height: 380,
              width: 550,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lightGreenAccent),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 25,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: " enter a ",
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(color: Colors.grey))),
                    onChanged: (String text) {
                      setState(() {
                        _b = text;
                        debugPrint("$text");
                      });
                    },
                    autofocus: true,
                    onSubmitted: (String text) {
                      setState(() {
                        text = _b;
                        debugPrint(" submitted usernom : $_b");
                      });
                    },
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: " enter b",
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(color: Colors.grey))),
                    onChanged: (String text) {
                      setState(() {
                        _a = text;
                        debugPrint("$text");
                      });
                    },
                    autofocus: true,
                    onSubmitted: (String text) {
                      setState(() {
                        text = _a;
                        debugPrint(" submitted a : $_a");
                      });
                    },
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  RaisedButton(
                    child: Text(
                      "let's enter !",
                      style: TextStyle(color: Colors.black),
                    ),
                    color: Colors.orange[200],
                    onPressed: () {
                      _answerme();
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  //Text('The GR is : $ans')
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Container(
                height: 50,
                width: 80,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '$ans',
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
