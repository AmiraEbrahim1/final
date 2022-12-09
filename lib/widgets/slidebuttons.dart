import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yisitapp/authScreens/signInPage.dart';
import 'package:yisitapp/authScreens/signUp.dart';



class SlideButtons extends StatelessWidget {
bool _hasPress;
SlideButtons(this._hasPress)
;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _hasPress,
      child: 
    Container(

      margin: const EdgeInsets.only(bottom:60),
      
                width: 208,
                height: 51,
                decoration: BoxDecoration(color: Color(0xff21C4A7),
               
                border: Border.all(color:Color(0xff21C4A7) ),borderRadius: BorderRadius.circular(10)),
                
                child: Row(children: [
      Expanded(
        child:Padding(padding: EdgeInsets.only(left: 10,top: 5,bottom: 5),
          child: SizedBox(
            
              
              child: GestureDetector(
                child:
              Container(
                height: 41,
              width: 89,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xffFFFFFF)),
                
              
                child: Center(child:
                Text(
                  "SIGN IN",
                 style: GoogleFonts.lato(textStyle:TextStyle(color: Color(0xff000000),fontSize: 14,fontWeight:FontWeight.w400,)))),
               
              ),
              onTap: () {
                Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignIn()));
              },)))),
              const SizedBox(width: 10,),
      Expanded(
        child:Padding(padding: EdgeInsets.only(right: 10,top: 5,bottom: 5),
          child: SizedBox(
             
              child: GestureDetector(
                child:
              Container(
                 height: 41,
              width: 89,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xffFFFFFF)),
                
                
                child: Center(child:
                Text(
                  "SIGN UP",
                 style: GoogleFonts.lato(textStyle:TextStyle(color: Color(0xff000000),fontSize: 14,fontWeight:FontWeight.w400,)))),
               
              ),
              onTap: () {
                Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignUpPage()));
              },)))),
     
    ])),
    );
  }
 
}



