import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'package:http/http.dart' as http;
import 'package:yisitapp/learning/product.dart';

class learningscreen extends StatefulWidget {
  var recievedtoken;
  var userid;
  learningscreen({this.recievedtoken, this.userid});

  @override
  State<learningscreen> createState() => _learningscreenState();
}

class _learningscreenState extends State<learningscreen> {
  var mapResponse;
  var dataResponse;
  var title;
  Future<void> getExper() async {
    var client = http.Client();
    var headers = {'token': '${widget.recievedtoken}'};
    var url = Uri.parse(
        'http://178.128.63.131:3001/get-user-experiments/${widget.userid}');
    var response = await client.get(url, headers: headers);
    print("hello hii ${response.body}");
  }

  @override
  void initState() {
    getExper();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 37, 55, 1),
      body: Container(
        child: Column(children: [
          Column(children: [
            Padding(padding: EdgeInsets.only(left: 2, top: 31)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    CupertinoIcons.arrow_left,
                    size: 20,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                Text(
                  'Magic Blue Liquid',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ],
            ),
          ]),
          const SizedBox(
            height: 28,
          ),
          Container(
              padding: EdgeInsets.only(left: 12),
              height: 126,
              width: 308,
              decoration: BoxDecoration(
                  color: Color(0xFF143E51),
                  borderRadius: BorderRadius.circular(17)),
              child: Row(children: [
                Container(
                  padding: EdgeInsets.all(12),
                  height: 102,
                  width: 99,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Colors.amber),
                ),
                const SizedBox(
                  width: 7,
                ),
                Column(children: [
                  Padding(
                      padding: EdgeInsets.only(top: 37),
                      child: Container(
                          height: 25,
                          width: 171,
                          child:
                              /*FutureBuilder(
                          future: fetchUsers(),
                          builder:
                              (BuildContext context, AsyncSnapshot snapshot) {
                            if (snapshot.hasData) {
                              return ListView.builder(
                                itemCount: snapshot.data.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Text
                                     (snapshot.data[index]['category']);

                                  /* Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text(snapshot.data[index]['name']['title'] +
                        " " +
                        snapshot.data[index]['name']['first'] +
                        " " +
                        snapshot.data[index]['name']['last']),
                    trailing:
                        Text(snapshot.data[index]['dob']['age'].toString()),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        snapshot.data[index]['picture']['large'],
                      ),
                    ),
                    subtitle: Text(snapshot.data[index]['email']),
                  )
                ],
              ),
            );*/
                                },
                              );
                            } else {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                          },
                        ),*/
                              dataResponse == null
                                  ? Text("data")
                                  : Text(
                                      dataResponse['title'],
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Inter',
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    )
                          /* FutureBuilder<User>(
                                future: fetchUser(),
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState ==
                                      ConnectionState.done) {
                                    print("hi");
                                    if (snapshot.hasData) {
                                      return Text("${snapshot.data!.message}");
                                    }
                                  }
                                  return const CircularProgressIndicator();
                                }),*/
                          )),
                  Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Container(
                          height: 25,
                          width: 171,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Color(0xff103444),
                                  ),
                                  height: 20,
                                  width: 62,
                                  child: const Center(
                                    child: Text(
                                      ('Chemistry'),
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: 'Inter',
                                        color: Color(0xFFFFFFFF),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Container(
                                  height: 20,
                                  color: Color(0xFFFFFFFF),
                                  child: const VerticalDivider(
                                    width: 1.2,
                                    indent: 7,
                                    thickness: 1,
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Colors.transparent,
                                  ),
                                  height: 20,
                                  width: 53,
                                  child: const Center(
                                    child: Text(
                                      ('Level: Easy'),
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: 'Inter',
                                        color: Color(0xFFFFFFFF),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ]))),

/*
                      */
                ]),
              ])),
          const SizedBox(
            height: 29,
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 44),
                  child: Container(
                    height: 20,
                    width: 184,
                    child: Text(
                      'Experiments Included',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inter',
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ))),
          const SizedBox(
            height: 20,
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 42),
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
                                child: product()));
                      }),
                      child: Ink(
                        height: 62,
                        width: 308,
                        decoration: BoxDecoration(
                            color: Color(0xFF143E51),
                            borderRadius: BorderRadius.circular(17)),
                        child: Padding(
                            padding:
                                EdgeInsets.only(left: 38, bottom: 21, top: 21),
                            child: Row(children: [
                              Text(
                                'pendulum',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Disengaged',
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                              const SizedBox(
                                width: 140,
                              ),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 21,
                                color: Color(0xFFFFFFFF),
                              ),
                            ])),
                      )))),
          const SizedBox(
            height: 12,
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 42),
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
                                child: product()));
                      }),
                      child: Ink(
                        height: 62,
                        width: 308,
                        decoration: BoxDecoration(
                            color: Color(0xFF143E51),
                            borderRadius: BorderRadius.circular(17)),
                        child: Padding(
                            padding:
                                EdgeInsets.only(left: 38, bottom: 21, top: 21),
                            child: Row(children: [
                              Text(
                                'Electric Bulb',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Disengaged',
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                              const SizedBox(
                                width: 94,
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
    );
    /*Column(
                    children:[
                   Padding(
                      padding: EdgeInsets.only(left: 2),
                      child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.filter_list,
                        color: Color(0xff9A9A9A),
                      ),
                      Text(
                        'Filter',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )]),
                SizedBox(
                  width: 12,
                ),
                Container(
                  color: Colors.black,
                  child: const VerticalDivider(
                    width: 2,
                    thickness: 2,
                    indent: 5,
                    endIndent: 29,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  width: 53,
                  height: 20,
                  child: Text(
                    'Trending',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ]),
          ]),
            )],
        )));*/
  }
}
