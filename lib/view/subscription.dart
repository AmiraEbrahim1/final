import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yisitapp/view/widgets.dart';
class Subscription extends StatefulWidget {
  const Subscription({Key? key}) : super(key: key);

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  @override
  Widget build(BuildContext context) {
    final height =MediaQuery.of(context).size.height;
    final width =MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(5, 37, 56, 1),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(height: 35,),
            Row(
              children: [
                Icon(Icons.arrow_back,color: Colors.white,),
                SizedBox(width: 10,),
                Text('Magic Blue Liquid',style: GoogleFonts.inter(
                fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600
                ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: height*.17,
              width: width*.8,
              decoration: BoxDecoration(
                  color:Color.fromRGBO(20, 62, 81, 1),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      width: width*.3,
                      height: height*.14,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image:DecorationImage(
                              image: AssetImage('images/maxresdefault 1.png'),fit: BoxFit.cover
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      width: 141,
                      height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text('Kit Box  I',style: GoogleFonts.inter(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w600
                            ),),
                            width: 149,
                            height: 20,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                width:62,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Color.fromRGBO(16, 52, 68,1)
                                ),
                                child: Center(
                                  child: Text('Chemistry',style: GoogleFonts.inter(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300
                                  ),),
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    height:16 ,
                                    width: 1,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Level : Easy',
                                    style:GoogleFonts.poppins(
                                        fontSize: 10,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300
                                    ),
                                  ),

                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Experiments Included',style: GoogleFonts.inter(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w400
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: height*.06,
                    width: width*.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Color.fromRGBO(20, 62, 81, 1)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 10),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:20),
                            child: Text('EXPERIMent I',style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Disengaged'),),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: height*.06,
                    width: width*.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Color.fromRGBO(20, 62, 81, 1)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 10),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:20),
                            child: Text('EXPERIMent II',style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Disengaged'),),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
