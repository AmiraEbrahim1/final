// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:susmita/learning/slidermodel.dart';

// class SliderFinalpage extends StatefulWidget {
//   const SliderFinalpage({super.key});

//   @override
//   State<SliderFinalpage> createState() => _SliderFinalpageState();
// }

// class _SliderFinalpageState extends State<SliderFinalpage> {
//   @override
//   Widget build(BuildContext context) {
//     int activeIndex = 0;
//     PageController pagecontroller =
//         PageController(initialPage: 0, keepPage: true);
//     return Scaffold(
//       backgroundColor: const Color.fromRGBO(6, 37, 55, 1),
//       body: Column(
//         children: [
//           Padding(
//             padding: EdgeInsets.only(left: 2, top: 49),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: const [
//               Padding(
//                   padding: EdgeInsets.only(left: 22, top: 12),
//                   child: Icon(
//                     CupertinoIcons.arrow_left,
//                     size: 20,
//                     color: Color(0xFFFFFFFF),
//                   )),
//               const SizedBox(
//                 width: 108,
//               ),
//               Padding(
//                 padding: EdgeInsets.only(top: 12),
//                 child: Text(
//                   'Pendulum',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w400,
//                     fontFamily: 'Disengaged',
//                     color: Color(0xFFFFFFFF),
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ],
//           ),
//           Container(
//             height: 600,
//             color: Colors.green,
//             child: PageView.builder(
//               controller: pagecontroller,
//               onPageChanged: (index) {
//                 setState(() {
//                   activeIndex = index;
//                   print('index = $activeIndex');
//                 });
//               },
//               itemCount: listedd.length,
//               itemBuilder: (context, index) {
//                 var pageView = listedd[index];
//                 return pageView;
//               },
//             ),
//           ),
//           const SizedBox(
//             height: 48,
//           ),
//         ],
//         // LinearProgressIndicator()
//         ElevatedButton(
//           onPressed: () {},
//           style: ElevatedButton.styleFrom(
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12)),
//               fixedSize: const Size(115, 39),
//               backgroundColor: Color(0xFF21C4A7)),
//           child:  Text(
//             'Next',
//             style: TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.w500,
//               fontFamily: 'Inter',
//               color: Color(0xFFFFFFFF),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
