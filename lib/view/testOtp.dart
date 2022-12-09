// import 'package:flutter/material.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
// class OtpVerif extends StatelessWidget {
//   const OtpVerif({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//    var height=MediaQuery.of(context).size.height;
//    var width=MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: const Color.fromRGBO(6, 37, 55, 1),
//       body: Column(
//         children: [
//           SizedBox(
//             height: height*.25,
//           ),
//           Text('Verification Code',style: TextStyle(
//               fontFamily: 'Poppins',
//               fontWeight: FontWeight.bold,
//               fontSize: 30
//           )),
//           SizedBox(
//             height: height/34,
//           ),
//           Text('Please Enter The Verification Code Sent',style: TextStyle(
//               fontFamily: 'Poppins',
//               fontSize: 15
//           )),
//           Text('To Your Phone Number / Email',style: TextStyle(
//               fontFamily: 'Poppins',
//               fontSize: 15
//           )),
//           SizedBox(
//             height: height/20,
//           ),
//           OtpTextField(
//             enabledBorderColor:Color.fromRGBO(16, 52, 68, 1) ,
//             numberOfFields: 5,
//             fillColor: Color.fromRGBO(16, 52, 68, 1),
//             filled: true,
//             borderColor:Color.fromRGBO(16, 52, 68, 1) ,
//             //set to true to show as box or false to show as dash
//             showFieldAsBox: true,
//             //runs when a code is typed in
//             onCodeChanged: (String code) {
//               //handle validation or checks here
//             },
//             //runs when every textfield is filled
//             onSubmit: (String verificationCode){
//               showDialog(
//                   context: context,
//                   builder: (context){
//                     return AlertDialog(
//                       title: Text("Verification Code",),
//                       content: Text('Code entered is $verificationCode'),
//                     );
//                   }
//               );
//             }, // end onSubmit
//           ),
//           SizedBox(
//             height: height/34,
//           ),
//           Text('Didn\'t Receive An OTP?',style: TextStyle(
//               fontSize: 15
//           )),
//           Text('Resend OTP',style: TextStyle(
//               fontFamily: 'Poppins',
//               fontSize: 15,
//             decoration: TextDecoration.underline
//           ),),
//           SizedBox(
//             height: height/34,
//           ),
//           GestureDetector(
//             onTap: () {
//               // verifyUser(otp: otp)
//             },
//             child: Container(
//               height: 56,
//               width:width*.6 ,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(96),
//                 color: Color(0xff21C4A7),
//               ),
//               child: Center(
//                 child: Container(
//                   // color: Colors.red,
//                   height: 30,
//                   width: 311,
//                   child: const Center(
//                     child: Text(
//                       'Submit',
//                       style: TextStyle(
//                         color: Color(0xffFFFFFF),
//                         fontSize: 20,
//                         fontFamily: 'Poppins',
//                         fontWeight: FontWeight.w400,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
