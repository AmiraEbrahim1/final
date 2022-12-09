

import 'package:flutter/material.dart';
import 'package:yisitapp/widgets/slide.dart';
import 'package:yisitapp/widgets/slide_item.dart';
import 'package:yisitapp/widgets/slidebutton.dart';
import 'package:yisitapp/widgets/slidebuttons.dart';
import '../model/slide.dart';



class GettingStartedScreen extends StatefulWidget {
  
   
  
  @override
  _GettingStartedScreenState createState() => _GettingStartedScreenState();
 
}

class _GettingStartedScreenState extends State<GettingStartedScreen> {
  
   
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  
  
  
  

  @override
  void initState() {
    super.initState();
    
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff111111),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: <Widget>[
              Container(
                width: 400,
                height: 800,
                child: Stack(
                   alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      onPageChanged: _onPageChanged,
                      itemCount: slideList.length,

                      itemBuilder: (ctx, i) =>

                      SlideItem(i),

                    ),

                    Stack(

                      children: <Widget>[
                        if(_currentPage==0 || _currentPage==1)
                        Visibility(
                          visible: true,
                          child:

                        Container(
                          margin: const EdgeInsets.only(bottom:130),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              for(int i = 0; i<slideList.length; i++)
                                if( i == _currentPage  )
                                  SlideDots(true)
                                else
                                  SlideDots(false)
                            ],
                          ),
                        )),
                        Container(
                          margin: const EdgeInsets.only(bottom:40,top:50),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                                if( _currentPage== 0 || _currentPage==1)
                                  SlideButton(true)
                                else
                                  SlideButtons(true)
                            ],
                          ),
                        ),

                      ],
                    ),


                  ],

                ),
              ),
              
                       
        
    
 
             

             

              
            ],
          ),
        ),
      ),
      
    );
    
  }
}