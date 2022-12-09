import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Slide {
  final String imageUrl;
  final String title;
  final Container container;
  
  

  Slide({
    required this.imageUrl,
    required this.title,
    required this.container,
    
    
  });
}

final slideList = [
  Slide(
    imageUrl: 'images/Frame.png',
    title: 'Everything is theoretically imposible until it is done!!',
    container: Container(child:
       Padding(
          padding: const EdgeInsets.only(top:10,bottom: 40),
          child: Container(
            alignment: Alignment.center,
          width: 271,
          height: 93,
          child: Text('Everything is theoretically imposible until it is done!!',textAlign: TextAlign.center,style: GoogleFonts.openSans(textStyle:TextStyle(color: Color(0xffFFFFFF),fontSize: 24,fontWeight:FontWeight.w500,))),
          ),
        ),
    )
    ),
  Slide(
    imageUrl: 'images/Frame.png',
    title: 'Do you enjoy performing experiments to study science?',
    container: Container(child:
       Padding(
          padding: const EdgeInsets.only(top:10,bottom: 40),
          child: Container(
            alignment: Alignment.center,
          width: 300,
          height: 93,
          child: Text('Do you enjoy performing experiments to study science?',textAlign: TextAlign.center,style: GoogleFonts.openSans(textStyle:TextStyle(color: Color(0xffFFFFFF),fontSize: 24,fontWeight:FontWeight.w500,))),
          ),
        ),
    )
    ),
    
  
  Slide(
    imageUrl: 'images/Frame.png',
    title: 'Subscribe and get your kit',
    container: Container(child:
       Padding(
          padding: const EdgeInsets.only(top:10,bottom: 10),
          child: Container(
            alignment: Alignment.center,
          width: 197,
          height: 86,
          child: Text('Subscribe and get your kit',textAlign: TextAlign.center,style: GoogleFonts.openSans(textStyle:TextStyle(color: Color(0xffFFFFFF),fontSize: 26,fontWeight:FontWeight.w500,))),
          ),
        ),
    )
    ),
    
 
];