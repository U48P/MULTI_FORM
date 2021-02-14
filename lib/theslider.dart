import 'package:flutter/material.dart';

void main() {
  runApp(InterestCalc());
}

class InterestCalc extends StatefulWidget {
  @override
  _InterestCalcState createState() => _InterestCalcState();
}

class _InterestCalcState extends State<InterestCalc> {
  double p = 0;
  double r = 0;
  double t = 0;
  double a = 0;

  amountCalc() {
    setState(() {
      a = p * (1 + r * t);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Interest Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Slider(
            max: 1000,
            min: 0,
            activeColor: Colors.teal,
            inactiveColor: Colors.teal[200],
            onChanged: (principal) {
              setState(() {
                p = principal;
              });
            },
            value: p,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(color: Colors.teal),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Princpal',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Text(
                      '{$double.parse(p.toStringAsFixed(2))} \$',
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Slider(
            activeColor: Colors.teal,
            inactiveColor: Colors.teal[200],
            onChanged: (principal) {
              setState(() {
                r = principal;
              });
            },
            value: r,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(color: Colors.teal),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Rate of Interest',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Text(
                      '{$double.parse(r.toStringAsFixed(2))} %',
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
