import 'package:flutter/material.dart';

class SlideButton extends StatelessWidget {
bool isActive;
  SlideButton(this.isActive);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isActive,
      child: 
    AnimatedContainer(
      
      margin: const EdgeInsets.only(bottom:20),
                width: 54,
                height: 54,
                decoration: BoxDecoration(color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(color:Color(0xff21C4A7) )),
                duration: Duration(milliseconds: 150),
                child:Align(child: SizedBox(
                  
                  width: 38.57,
                  height: 38.57,
                  child: 
               FloatingActionButton(
                    child: Icon(Icons.arrow_forward_sharp),
                    backgroundColor: Color(0xff21C4A7),
                    
                    onPressed: () {
                     
                    },
                  ),),),
     ) );
  }
}