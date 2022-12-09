import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/slide.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 14.69),
          child: Container(
          width: 277.46,
          height: 277.46,
          decoration: BoxDecoration(
             shape: BoxShape.circle,
            image: DecorationImage(
             
                image: AssetImage(slideList[index].imageUrl),
                
                fit: BoxFit.cover),
          ),
          ),
        ),
       
       
        Padding(
          padding: const EdgeInsets.only(top:30,bottom: 10),
          child: Container(
           
          child: slideList[index].container)),
         
       
       
       
      
      ],
    );
  }
}