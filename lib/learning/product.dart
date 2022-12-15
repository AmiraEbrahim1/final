
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:yisitapp/learning/Merchants.dart';
import 'package:yisitapp/learning/checkbox.dart';
import 'package:yisitapp/learning/quizPage.dart';
import 'package:yisitapp/learning/showDialog.dart';

class product extends StatefulWidget {
  const product({super.key});

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  int numberOfChecks = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(6, 37, 55, 1),
        body: SingleChildScrollView(
          child: Column(children: [
            Stack(children: <Widget>[
              Container(
                height: 900,
              ),
              Positioned(
                height: 250,
                width: 390,
                top: 24,
                child: Container(
                    width: 390,
                    height: 200,
                    decoration: new BoxDecoration(
                        image: new DecorationImage(
                      image: new AssetImage("images/Rect.png"),
                      fit: BoxFit.fill,
                    ))),
              ),
              Positioned(
                top: 58.01,
                left: 22,
                child: Icon(
                  Icons.arrow_back,
                  size: 21,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              Positioned(
                  top: 200,
                  left: 20,
                  width: 350,
                  height: 250,
                  child: Container(
                      width: 350,
                      height: 250,
                      decoration: BoxDecoration(
                          color: Color(0xFF143E51),
                          boxShadow: [
                            new BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.04),
                              offset: Offset(0, 40),
                              blurRadius: 40.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 24, left: 24),
                              child: Container(
                                  child: Row(
                                children: [
                                  Container(
                                      width: 20,
                                      height: 20,
                                      decoration: new BoxDecoration(
                                          image: new DecorationImage(
                                        image: new AssetImage(
                                            "images/Ellipse 588 (1).png"),
                                        fit: BoxFit.fill,
                                      ))),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Experiment I',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Disengaged',
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ],
                              )),
                            ),
                            const SizedBox(
                              height: 23.5,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 24),
                                child: Row(children: [
                                  Container(
                                    height: 20,
                                    child: Row(
                                      children: [
                                        const Text(
                                          'Difficulty',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Color(0xffFFFFFF),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Google Sans',
                                          ),
                                        ),
                                        RatingBar.builder(
                                            onRatingUpdate: (value) {
                                              print(value);
                                            },
                                            unratedColor: Color(0xffC4C4C4),
                                            initialRating: 4,
                                            itemCount: 5,
                                            itemSize: 5,
                                            itemPadding: EdgeInsets.symmetric(
                                                horizontal: 2.0),
                                            direction: Axis.horizontal,
                                            itemBuilder: (context, _) {
                                              return CircleAvatar(
                                                radius: 2,
                                                backgroundColor:
                                                    Color(0xff00FFD1),
                                              );
                                            }),
                                        const SizedBox(
                                          width: 40,
                                        ),
                                        Container(
                                            width: 20,
                                            height: 20,
                                            decoration: new BoxDecoration(
                                                image: new DecorationImage(
                                              image: new AssetImage(
                                                  "images/Star 1.png"),
                                              fit: BoxFit.fill,
                                            ))),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Container(
                                          width: 35,
                                          height: 20,
                                          child: Text(
                                            '[4.5]',
                                            style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Google Sans',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ])),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 24),
                                child: Container(
                                  height: 20,
                                  width: 77,
                                  child: Text(
                                    "Description:",
                                    style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Google Sans',
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 24),
                                child: Container(
                                  height: 80,
                                  width: 293,
                                  child: Text(
                                    "Tie the string to the weight. Then suspend your pendulum over the edge of the table so that the length of the pendulum is about 2 feet.",
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Google Sans',
                                        wordSpacing: 2),
                                  ),
                                ))
                          ]))),
              Positioned(
                  top: 476,
                  left: 99,
                  width: 292,
                  height: 20,
                  child: Container(
                    height: 20,
                    width: 192,
                    child: Text(
                      "Perform Experiment",
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Disengaged',
                          wordSpacing: 2),
                    ),
                  )),
              Positioned(
                top: 514,
                width: 390,
                height: 100,
                child: Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 26),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            InkWell(
                                onTap: (() {
                                  highlightColor:
                                  Color(0xFF143E51).withOpacity(0.4);
                                  splashColor:
                                  Colors.green.withOpacity(0.5);
                                  showModalBottomSheet<void>(
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Container(
                                            height: 410,
                                            width: 390,
                                            decoration: BoxDecoration(
                                                color: Color(0xff103444),
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(30.0),
                                                  topRight:
                                                      Radius.circular(30.0),
                                                )),
                                            child: Column(children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 38, left: 103),
                                                child: Container(
                                                    child: Row(
                                                  children: [
                                                    Container(
                                                      width: 15,
                                                      height: 13,
                                                      decoration:
                                                          new BoxDecoration(
                                                        image:
                                                            new DecorationImage(
                                                          image: new AssetImage(
                                                              "images/Vector (6).png"),
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      'Have it in advance',
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontFamily:
                                                            'Google Sans',
                                                        color:
                                                            Color(0xFFFFFFFF),
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                              ),
                                              const SizedBox(
                                                height: 50,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 62),
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height: 148,
                                                    child: ListView.builder(
                                                      itemCount: Lists.length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return Row(
                                                          children: [
                                                            Container(
                                                              width: 5,
                                                              height: 5,
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: Color(
                                                                    0xffFFFFFF),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              width: 10,
                                                            ),
                                                            texting(
                                                              index: index,
                                                            ),
                                                            SizedBox(
                                                                child: Lists[
                                                                        index]
                                                                    .sizedBox),
                                                            TextCheckbox(
                                                                onChanged:
                                                                    (value) {
                                                              setState(() {
                                                                value
                                                                    ? numberOfChecks++
                                                                    : numberOfChecks--;
                                                              });
                                                            })
                                                          ],
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 34,
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      //first next
                                                      showModalBottomSheet<
                                                              void>(
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          context: context,
                                                          builder: (BuildContext
                                                              context) {
                                                            return Container(
                                                                height: 410,
                                                                width: 390,
                                                                decoration:
                                                                    BoxDecoration(
                                                                        color: Color(
                                                                            0xff103444),
                                                                        borderRadius:
                                                                            BorderRadius
                                                                                .only(
                                                                          topLeft:
                                                                              Radius.circular(30.0),
                                                                          topRight:
                                                                              Radius.circular(30.0),
                                                                        )),
                                                                child: Column(
                                                                    children: <
                                                                        Widget>[
                                                                      Padding(
                                                                        padding: EdgeInsets.only(
                                                                            top:
                                                                                45,
                                                                            left:
                                                                                32),
                                                                        child: Container(
                                                                            child: Row(
                                                                          children: [
                                                                            Icon(
                                                                              Icons.arrow_back,
                                                                              size: 21,
                                                                              color: Color(0xFFFFFFFF),
                                                                            ),
                                                                            const SizedBox(
                                                                              width: 106,
                                                                            ),
                                                                            Container(
                                                                                width: 15,
                                                                                height: 13,
                                                                                decoration: new BoxDecoration(
                                                                                    image: new DecorationImage(
                                                                                  image: new AssetImage("images/Vector (7).png"),
                                                                                  fit: BoxFit.fill,
                                                                                ))),
                                                                            const SizedBox(
                                                                              width: 10,
                                                                            ),
                                                                            Text(
                                                                              'Safety',
                                                                              style: TextStyle(
                                                                                fontSize: 18,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontFamily: 'Google Sans',
                                                                                color: Color(0xFFFFFFFF),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        )),
                                                                      ),
                                                                      const SizedBox(
                                                                        height:
                                                                            50,
                                                                      ),
                                                                      Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          Container(
                                                                            padding:
                                                                                const EdgeInsets.symmetric(horizontal: 62),
                                                                            width:
                                                                                MediaQuery.of(context).size.width,
                                                                            height:
                                                                                148,
                                                                            child:
                                                                                ListView.builder(
                                                                              itemCount: Lists.length,
                                                                              itemBuilder: (context, index) {
                                                                                return Row(
                                                                                  children: [
                                                                                    Container(
                                                                                      width: 5,
                                                                                      height: 5,
                                                                                      decoration: BoxDecoration(
                                                                                        shape: BoxShape.circle,
                                                                                        color: Color(0xffFFFFFF),
                                                                                      ),
                                                                                    ),
                                                                                    const SizedBox(
                                                                                      width: 10,
                                                                                    ),
                                                                                    Text(
                                                                                      Listss[index].name,
                                                                                      style: TextStyle(
                                                                                        fontSize: 18,
                                                                                        fontWeight: FontWeight.w400,
                                                                                        fontFamily: 'Google Sans',
                                                                                        color: Color(0xFFFFFFFF),
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(child: Listss[index].sizedBox),
                                                                                    TextCheckbox(onChanged: (value) {
                                                                                      setState(() {
                                                                                        value ? numberOfChecks++ : numberOfChecks--;
                                                                                      });
                                                                                    })
                                                                                  ],
                                                                                );
                                                                              },
                                                                            ),
                                                                          ),
                                                                          const SizedBox(
                                                                            height:
                                                                                34,
                                                                          ),
                                                                          ElevatedButton(
                                                                            onPressed:
                                                                                () {
                                                                              //Second next
                                                                              showModalBottomSheet<void>(
                                                                                  backgroundColor: Colors.transparent,
                                                                                  context: context,
                                                                                  builder: (BuildContext context) {
                                                                                    return Container(
                                                                                        height: 410,
                                                                                        width: 390,
                                                                                        decoration: BoxDecoration(
                                                                                            color: Color(0xff103444),
                                                                                            borderRadius: BorderRadius.only(
                                                                                              topLeft: Radius.circular(30.0),
                                                                                              topRight: Radius.circular(30.0),
                                                                                            )),
                                                                                        child: Column(children: <Widget>[
                                                                                          Padding(
                                                                                            padding: EdgeInsets.only(top: 47, left: 42),
                                                                                            child: Container(
                                                                                                child: Row(
                                                                                              children: [
                                                                                                Icon(
                                                                                                  Icons.arrow_back,
                                                                                                  size: 21,
                                                                                                  color: Color(0xFFFFFFFF),
                                                                                                ),
                                                                                                const SizedBox(
                                                                                                  width: 79.5,
                                                                                                ),
                                                                                                Container(
                                                                                                    width: 15,
                                                                                                    height: 13,
                                                                                                    decoration: new BoxDecoration(
                                                                                                        image: new DecorationImage(
                                                                                                      image: new AssetImage("images/Vector (8).png"),
                                                                                                      fit: BoxFit.fill,
                                                                                                    ))),
                                                                                                const SizedBox(
                                                                                                  width: 11.5,
                                                                                                ),
                                                                                                Text(
                                                                                                  'Disclaimer',
                                                                                                  style: TextStyle(
                                                                                                    fontSize: 18,
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                    fontFamily: 'Google Sans',
                                                                                                    color: Color(0xFFFFFFFF),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            )),
                                                                                          ),
                                                                                          const SizedBox(
                                                                                            height: 50,
                                                                                          ),
                                                                                          Column(
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children: [
                                                                                              Container(
                                                                                                width: 312,
                                                                                                height: 67,
                                                                                                child: Text(
                                                                                                  "Hereby, I agree that I have taken all the safety precautions mentioned for conducting the experiments.",
                                                                                                  style: TextStyle(
                                                                                                    fontSize: 16,
                                                                                                    fontWeight: FontWeight.w400,
                                                                                                    fontFamily: 'Poppins',
                                                                                                    color: Color(0xFFFFFFFF),
                                                                                                  ),
                                                                                                  textAlign: TextAlign.center,
                                                                                                ),
                                                                                              ),
                                                                                              const SizedBox(
                                                                                                height: 20,
                                                                                              ),
                                                                                              Container(
                                                                                                width: 301,
                                                                                                height: 50,
                                                                                                child: Text(
                                                                                                  "I accept to open this box on my own risk and handle safety. ",
                                                                                                  style: TextStyle(
                                                                                                    fontSize: 16,
                                                                                                    fontWeight: FontWeight.w400,
                                                                                                    fontFamily: 'Poppins',
                                                                                                    color: Color(0xFFFFFFFF),
                                                                                                  ),
                                                                                                  textAlign: TextAlign.center,
                                                                                                ),
                                                                                              ),
                                                                                              const SizedBox(
                                                                                                height: 36,
                                                                                              ),
                                                                                              ElevatedButton(
                                                                                                onPressed: () {},
                                                                                                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(96)), fixedSize: const Size(311, 56), backgroundColor: Color(0xFF21C4A7)),
                                                                                                child: const Text(
                                                                                                  'Agree & Continue',
                                                                                                  style: TextStyle(
                                                                                                    fontSize: 20,
                                                                                                    fontWeight: FontWeight.w600,
                                                                                                    fontFamily: 'Poppins',
                                                                                                    color: Color(0xFFFFFFFF),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ]));
                                                                                  });
                                                                            },
                                                                            style: ElevatedButton.styleFrom(
                                                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(96)),
                                                                                fixedSize: const Size(311, 56),
                                                                                backgroundColor: Color(0xFF21C4A7)),
                                                                            child:
                                                                                const Text(
                                                                              'Next',
                                                                              style: TextStyle(
                                                                                fontSize: 20,
                                                                                fontWeight: FontWeight.w600,
                                                                                fontFamily: 'Poppins',
                                                                                color: Color(0xFFFFFFFF),
                                                                              ),
                                                                            ),
                                                                          ),

                                                                          /* ElevatedButton(
              style: ElevatedButton.styleFrom(
               fixedSize: const Size(311, 56),
               backgroundColor: Color(0xFF21C4A7),
                
              ),
                onPressed: numberOfChecks == 0 ? null : () {
                  
                  print ('NEXT');
                },
                child: const Text('NEXT'),
              ),*/
                                                                        ],
                                                                      ),
                                                                    ]));
                                                          });
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        96)),
                                                        fixedSize:
                                                            const Size(311, 56),
                                                        backgroundColor:
                                                            Color(0xFF21C4A7)),
                                                    child: const Text(
                                                      'Next',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFFFFFFFF),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ]));
                                      });
                                }),
                                child: Ink(
                                    height: 93,
                                    width: 93,
                                    decoration: BoxDecoration(
                                        color: Color(0xff143E51),
                                        borderRadius:
                                            BorderRadius.circular(22)),
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
                                              image: new AssetImage(
                                                  "images/Vector (1).png"),
                                              fit: BoxFit.fill,
                                            ))),
                                        const SizedBox(
                                          height: 2.48,
                                        ),
                                        Text(
                                          "Precautions",
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
                                    "1",
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
                              ),
                            )
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
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
                                          image: new AssetImage(
                                              "images/Vector (2).png"),
                                          fit: BoxFit.fill,
                                        ))),
                                    const SizedBox(
                                      height: 2.48,
                                    ),
                                    Text(
                                      "Open the Kit",
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          wordSpacing: 2),
                                    ),
                                  ],
                                )),
                            Positioned(
                              top: -5,
                              left: -10,
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 8, top: 6),
                                  child: Text(
                                    "2",
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
                              ),
                            )
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: showDialogs()),
                  ],
                ),
              ),
              Positioned(
                top: 629,
                child: Container(
                  margin: EdgeInsets.only(left: 22, right: 23),
                  color: Color(0xFF21C4A79E),
                  child: const Divider(
                    height: 2,
                    thickness: 2,
                    indent: 340,
                    endIndent: 0,
                  ),
                ),
              ),
              Positioned(
                top: 658,
                child: Column(children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 37),
                          child: InkWell(
                              onTap: (() {
                                highlightColor:
                                Color(0xFF143E51).withOpacity(0.4);
                                splashColor:
                                Colors.green.withOpacity(0.5);
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    isIos: true,
                                    duration: Duration(milliseconds: 900),
                                    child: QuizPage(),
                                  ),
                                );
                              }),
                              child: Ink(
                                height: 53,
                                width: 318,
                                decoration: BoxDecoration(
                                    color: Color(0xFF143E51),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(bottom: 15, top: 15),
                                    child: Row(children: [
                                      const SizedBox(
                                        width: 22,
                                      ),
                                      Container(
                                          width: 20,
                                          height: 26.5,
                                          decoration: new BoxDecoration(
                                              image: new DecorationImage(
                                            image: new AssetImage(
                                                "images/Vector (4).png"),
                                            fit: BoxFit.fill,
                                          ))),
                                      const SizedBox(
                                        width: 21,
                                      ),
                                      Text(
                                        'Quiz Challenge',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 105,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        size: 21,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ])),
                              )))),
                  const SizedBox(
                    height: 18,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 37),
                          child: InkWell(
                              onTap: (() {
                                highlightColor:
                                Color(0xFF143E51).withOpacity(0.4);
                                splashColor:
                                Colors.green.withOpacity(0.5);
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        isIos: true,
                                        duration: Duration(milliseconds: 900),
                                        child: product()));
                              }),
                              child: Ink(
                                height: 53,
                                width: 318,
                                decoration: BoxDecoration(
                                    color: Color(0xFF143E51),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(bottom: 15, top: 15),
                                    child: Row(children: [
                                      const SizedBox(
                                        width: 22,
                                      ),
                                      Container(
                                          width: 20,
                                          height: 20,
                                          decoration: new BoxDecoration(
                                              image: new DecorationImage(
                                            image: new AssetImage(
                                                "images/Layer 2.png"),
                                            fit: BoxFit.fill,
                                          ))),
                                      const SizedBox(
                                        width: 21,
                                      ),
                                      Text(
                                        'Scientific Description',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 59,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        size: 21,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ])),
                              ))))
                ]),
              ),
            ])
          ]),
        ));
  }
}
