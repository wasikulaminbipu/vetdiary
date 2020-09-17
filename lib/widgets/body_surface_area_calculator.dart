// import 'package:flutter/material.dart';
// import 'package:vetdiary/widgets/custom_input_row.dart';
// import 'package:vetdiary/widgets/result_view.dart';



// class BodySurfaceAreaCalculator extends StatelessWidget {
//   const BodySurfaceAreaCalculator({
//     Key key,
//   }) : super(key: key);

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
//                   result: 123.2.toString(),
//                   unit: "mg/L",
//                 ),
//                 Text(
//                   "X",
//                   style:
//                       Theme.of(context).primaryTextTheme.headline4,
//                 ),
//                 ResultView(
//                   result: 2.toString(),
//                   unit: "Times",
//                 ),
//                 ResultView(
//                   result: "Daily",
//                   unit: "",
//                 ),
//               ],
//             ),
//           ),
//           CustomInputRow(
//             title: "BSA Variable: ",
//             // options: ["mg/L", "DDD"],
//             onChanged: (value) {},
//           ),
//           CustomInputRow(
//             lookup: () {},
//             title: "Patient's Weight: ",
//             options: ["mg/L", "DDD"],
//             onChanged: (value) {},
//           ),
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

