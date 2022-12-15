
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yisitapp/learning/sliderhome.dart';

class showDialogs extends StatelessWidget {
  const showDialogs({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        InkWell(
            onTap: (() {
              highlightColor:
              Color(0xFF143E51).withOpacity(0.4);
              splashColor:
              Colors.green.withOpacity(0.5);
              showAnimatedDialog(
                context: context,
                barrierDismissible: true,
                builder: (BuildContext context) {
                  return Dialog(
                    backgroundColor: Colors.transparent,
                    insetPadding: EdgeInsets.all(10),
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(
                            width: 281,
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(33.0),
                                color: Color(0xff103444)),
                            padding: EdgeInsets.fromLTRB(22, 50, 13, 23),
                            child: Text(
                              'I agree to Continue as i have Completed all the Precautions Mentioned in the Previous Option',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins',
                                color: Color(0xFFFFFFFF),
                              ),
                              textAlign: TextAlign.center,
                            )),
                        Positioned(top: 154, child: elevation()),
                        Positioned(
                            top: -120,
                            child: Image.network(
                                "https://i.imgur.com/2yaf2wb.png",
                                width: 150,
                                height: 150))
                      ],
                    ),
                  );

                  /*AlertDialog(
                      backgroundColor: Color(0xff103444),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(33.0))),
                      content: Builder(
                        builder: (context) {
                          // Get available height and width of the build area of this widget. Make a choice depending on the size.
                          height:
                          185;
                          width:
                          281;
                          return Stack(
                            

                          children:[
                          Container(
                                height: 185,
                                width: 281,
                                child: 
                          
                              Container(
                                height: 124,
                                width: 281,
                                child: Text(
                                          'I agree to Continue as i have Completed all the Precautions Mentioned in the Previous Option',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFFFFFFF),
                                          ),
                                          textAlign: TextAlign.start,
                                        )),
                                  
                              ),
                             
                            
                             const SizedBox(
                                height: 7,
                              ),
                              Positioned(top: 123, child: elevation())
                            ]);
                        },
                      ));*/

                  /* 
*/
                  /*ClassicGeneralDialogWidget(
                       actions: [
Container(
                    height: 183,
                    width: 281,
                    decoration: BoxDecoration(
                        color: Color(0xff103444),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(33.0),
                          topRight: Radius.circular(33.0),
                          bottomLeft: Radius.circular(33.0),
                          bottomRight: Radius.circular(33.0),
                        )),
                  )
                       ],
                    /*  titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },*/
                    );*/
                },
                animationType: DialogTransitionType.slideFromBottom,
                curve: Curves.fastOutSlowIn,
                duration: Duration(seconds: 1),
              );
            }),
            child: Ink(
                height: 93,
                width: 93,
                decoration: BoxDecoration(
                    color: Color(0xff143E51),
                    borderRadius: BorderRadius.circular(22)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 19,
                    ),
                    Container(
                        width: 30,
                        height: 31,
                        decoration: new BoxDecoration(
                            image: new DecorationImage(
                          image: new AssetImage("images/Vector (3).png"),
                          fit: BoxFit.fill,
                        ))),
                    const SizedBox(
                      height: 2.48,
                    ),
                    Text(
                      "Start Experiment",
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          wordSpacing: 2),
                    ),
                  ],
                ))),
        Positioned(
            top: -5,
            left: -10,
            child: Container(
              child: Padding(
                padding: EdgeInsets.only(left: 8, top: 6),
                child: Text(
                  "3",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                color: Color(0xff1A556D),
                shape: BoxShape.circle,
              ),
            ))
      ],
    );
  }
}

class elevation extends StatelessWidget {
  const elevation({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 281,
        height: 59,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.fade,
                    isIos: true,
                    duration: Duration(milliseconds: 900),
                    child: HomeScreen()));
          },
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(33),
                bottomRight: Radius.circular(33),
              )),
              backgroundColor: Color(0xFF21C4A7)),
          child: const Text(
            'Proceed',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
              color: Color(0xFFFFFFFF),
            ),
          ),
        ));
  }
}
