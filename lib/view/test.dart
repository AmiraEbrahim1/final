// // import 'package:flutter/material.dart';
// // import 'package:flutter_html/flutter_html.dart';
// // class Test extends StatelessWidget {
// //   const Test({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Center(
// //         child: Html(
// //           data: '<p>some description</p>',
// //           style: {
// //             "body":Style(
// //               fontSize: FontSize(18.0),
// //               fontWeight: FontWeight.bold,
// //               color: Colors.red
// //             ),
// //           },
// //         ),
// //       ),
// //     );
// //   }
// // }
import 'package:flutter/material.dart';
import 'package:yisitapp/hiveAdapters/loginhiveAdapter.dart';
import 'package:yisitapp/hiveDatabse/hiveLoginDatabase.dart';
class Test extends StatefulWidget {

   Test({Key? key,required this.experiments}) : super(key: key);
   List experiments=[];
  @override
  State<Test> createState() => _TestState();
}
class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
   HiveLoginModel m=HiveLoginBoxDB().getFromHive();
   // print(m.user!.email);
   print(widget.experiments[0]);
    return Center(
child: Text(widget.experiments[0],style: TextStyle(
  color: Colors.white,
  fontSize: 30
),),
    );
  }
}
