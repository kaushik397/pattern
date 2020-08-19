import 'package:flutter/material.dart';
import 'package:pattern/calculate.dart';
import 'package:pattern/learn.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TypewriterAnimatedTextKit(
                text: ['Golden Ratio'],
                textStyle: TextStyle(fontSize: 30.0, color: Colors.orange),
                textAlign: TextAlign.start,
                alignment: AlignmentDirectional.topStart),
            SizedBox(
              height: 30.0,
            ),

            // (0xff000000)
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.white,
                width: 3,
              )),
              child: Image.asset(
                'images/pattern.png',
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 150.0,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LearnGr(),
                    ));
              },
              //splashColor: Colors.redAccent,
              child: Text(
                "what's Golden Ratio",
                style: TextStyle(fontSize: 20.0),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: BorderSide(color: Colors.blue)),
            ),
            SizedBox(
              height: 30.0,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CalculatorPage(),
                    ));
              },
              child: Text(
                "Let's Calculate",
                style: TextStyle(fontSize: 20.0),
              ),
              //splashColor: Colors.redAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: BorderSide(color: Colors.blue)),
            ),
          ],
        ),
      ),
    );
  }
}
