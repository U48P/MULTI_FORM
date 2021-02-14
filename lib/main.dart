import 'package:flutter/material.dart';

import 'multi_form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi Form',
      theme: ThemeData(
          primarySwatch: Colors.green,
          accentColor: Colors.green //Color(0xFF1DCC8C),
          //platform: TargetPlatform.iOS,
          ),
      debugShowCheckedModeBanner: false,
      home: MultiForm(),
    );
  }
}

// import 'package:dropdownfield/dropdownfield.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: MyApp(),
//   ));
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('DropText Widget'), centerTitle: true),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Text("DropDown & Textfield",
//                 style: TextStyle(fontSize: 20.0), textAlign: TextAlign.center),

//             SizedBox(height: 20.0),

//             //now the time for the main thing that is having the widget for dropdown and textfield at once

//             // Lets create a dummy list so that we need to showw under dropdown
//             // this plugin build that it searches the list off the string and matches
//             DropDownField(
//               controller: citiesSelected,
//               hintText: "Selected any City",
//               itemsVisibleInDropdown: 5,
//               enabled: true,
//               items:
//                   cities, //now you point of view you can take any type of list but remeber the point
//               onValueChanged: (value) {
//                 setState(() {
//                   selectCity = value;
//                 });
//               },
//             ),

//             // lets print the String....
//             //SizedBox(height: 20.0,),
//             //Text(selectCity, style: TextStyle(fontSize: 20.0), textAlign: TextAlign.center,)

//             //lets have same charcter cities that check search style

//             // now we can just see only 3 items per so lets change it
//             //This is the actual widget that will make it possible so let make it happen
//           ],
//         ),
//       ),
//     );
//   }
// }

// String selectCity = ""; // by default we are not providing any of the city
// final citiesSelected = TextEditingController();

// List<String> cities = [
//   "Mumbai",
//   "Surat",
//   "LA"
//   "Husby",
//   "Akalla",
//   "Bow",
//   "Notthinghill",
//   "uk",
//   "Washington",
//   "New Jersey",
//   "Kolkatta",
//   "Jalander",
//   "New York",
// ];

// import 'package:flutter/material.dart';

// void main() {
//   runApp(InterestCalc());
// }

// class InterestCalc extends StatefulWidget {
//   @override
//   _InterestCalcState createState() => _InterestCalcState();
// }

// class _InterestCalcState extends State<InterestCalc> {
//   double p = 0;
//   double r = 0;
//   double t = 0;
//   double a = 0;

//   amountCalc() {
//     setState(() {
//       a = p * (1 + r * t);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         title: Text('Interest Calculator'),
//       ),
//       body: Column(
//         children: <Widget>[
//           Slider(
//             max: 1000,
//             min: 0,
//             activeColor: Colors.teal,
//             inactiveColor: Colors.teal[200],
//             onChanged: (principal) {
//               setState(() {
//                 p = principal;
//               });
//             },
//             value: p,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Container(
//               decoration: BoxDecoration(color: Colors.teal),
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Text(
//                       'Princpal',
//                       style: TextStyle(color: Colors.white, fontSize: 30),
//                     ),
//                     Text(
//                       '${double.parse(p.toStringAsFixed(2))} \$',
//                       style: TextStyle(color: Colors.white, fontSize: 30.0),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Slider(
//             activeColor: Colors.teal,
//             inactiveColor: Colors.teal[200],
//             onChanged: (principal) {
//               setState(() {
//                 r = principal;
//               });
//             },
//             value: r,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Container(
//               decoration: BoxDecoration(color: Colors.teal),
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Text(
//                       'Rate of Interest',
//                       style: TextStyle(color: Colors.white, fontSize: 30),
//                     ),
//                     Text(
//                       '${double.parse(r.toStringAsFixed(2))} %',
//                       style: TextStyle(color: Colors.white, fontSize: 30.0),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     ));
//   }
// }
