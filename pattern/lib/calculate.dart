import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
//import 'package:pattern/page.dart';
import 'package:pattern/pager.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          MdiIcons.calculator,
          size: 30,
          color: Colors.redAccent,
        ),
        tooltip: 'Calculate !',
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PagerPage(),
              ));
        },
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 80.0,
            floating: true,
            pinned: false,
            backgroundColor: Colors.blue,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Let's calculate !",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          SliverFillRemaining(
            child: Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        debugPrint(" presser");
                      },
                      child: Container(
                          //color: Colors.greenAccent,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(9)),
                          height: 70.0,
                          width: 350,
                          child: Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Step1: Find the longer segment and label it a.",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      child: Container(
                          //color: Colors.greenAccent,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(9)),
                          height: 70.0,
                          width: 350,
                          child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Step2:	Find the shorter segment and label it b.",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        debugPrint(" presser 3");
                      },
                      child: Container(
                          //color: Colors.greenAccent,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(9)),
                          height: 70.0,
                          width: 350,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Step3:	Input the values into the formula.",
                              style: TextStyle(fontSize: 16),
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        debugPrint(" presser 4");
                      },
                      child: Container(
                          //color: Colors.greenAccent,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(9)),
                          height: 70.0,
                          width: 350,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Step4:	Take the sum a and b and divide by a.",
                              style: TextStyle(fontSize: 16),
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        debugPrint(" presser 5");
                      },
                      child: Container(
                          //color: Colors.greenAccent,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(9)),
                          height: 70.0,
                          width: 350,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Step5:	Take a divided by b.",
                              style: TextStyle(fontSize: 16),
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        debugPrint(" presser 6");
                      },
                      child: Container(
                          //color: Colors.greenAccent,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(9)),
                          height: 70.0,
                          width: 350,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Step6:	If the proportion is in the golden ratio, it will\t equal approximately 1.618.",
                              style: TextStyle(fontSize: 16),
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        debugPrint(" presser 7");
                      },
                      child: Container(
                          //color: Colors.greenAccent,
                          height: 70.0,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(9)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Step7:	Use the golden ratio calculator to check your result.",
                              style: TextStyle(fontSize: 16),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
