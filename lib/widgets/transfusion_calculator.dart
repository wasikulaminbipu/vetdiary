// import 'package:flutter/material.dart';
// import 'package:vetdiary/widgets/custom_input_row.dart';
// import 'package:vetdiary/widgets/result_view.dart';

// class TransfusionCalculator extends StatefulWidget {
//   const TransfusionCalculator({
//     Key key,
//   }) : super(key: key);

//   @override
//   _TransfusionCalculatorState createState() => _TransfusionCalculatorState();
// }

// class _TransfusionCalculatorState extends State<TransfusionCalculator> {
//   bool rbcPacked = true;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(10.0),
//       child: ListView(
//         children: <Widget>[
//           //Calculator Display
//           Container(
//             padding: EdgeInsets.all(10.0),
//             alignment: Alignment.center,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               border: Border.all(color: Colors.grey, width: 2.0),
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 ResultView(
//                   result: 500.toString(),
//                   unit: "mL Volume",
//                 ),
//                 ResultView(
//                   result: 25.toString(),
//                   unit: "ml/hr",
//                 ),
//               ],
//             ),
//           ),
//           // Get if RBC is Packed
//           SizedBox(
//             height: 10.0,
//           ),
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Text(
//                   "Packed RBC",
//                   style: Theme.of(context).primaryTextTheme.headline4,
//                 ),
//                 Switch(
//                     value: rbcPacked,
//                     onChanged: (value) {
//                       this.rbcPacked = value;
//                       setState(() {});
//                     }),
//               ],
//             ),
//           ),
//           //Get Weight of the animal
//           CustomInputRow(
//             title: "Weight: ",
//             options: ["kg", "pound"],
//             onChanged: (value) {},
//           ),
//           //Get Current PCV
//           CustomInputRow(
//             title: "Current PCV: ",
//             options: ["%"],
//             onChanged: (value) {},
//           ),
//           //Get Desired PCV
//           CustomInputRow(
//             title: "Desired PCV: ",
//             options: ["%"],
//             onChanged: (value) {},
//           ),
//           //Show Calculate Button
//           RaisedButton(
//             color: Theme.of(context).buttonColor,
//             child: Text("Calculate"),
//             onPressed: () {},
//           )
//         ],
//       ),
//     );
//   }
// }
