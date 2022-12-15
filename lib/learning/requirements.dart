import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'Merchants.dart';

class requirements extends StatefulWidget {
  const requirements({super.key});

  @override
  State<requirements> createState() => _requirementsState();
}

class _requirementsState extends State<requirements> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(6, 37, 55, 1),
        body: Container(
            child: Column(children: [
          Column(children: [
            Padding(padding: EdgeInsets.only(left: 2, top: 49)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                    padding: EdgeInsets.only(left: 22, top: 12),
                    child: Icon(
                      CupertinoIcons.arrow_left,
                      size: 20,
                      color: Color(0xFFFFFFFF),
                    )),
                const SizedBox(
                  width: 108,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Text(
                    'Pendulum',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Disengaged',
                      color: Color(0xFFFFFFFF),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 42,
            ),
            Text(
              'Requirements',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontFamily: 'Google Sans',
                color: Color(0xFFFFFFFF),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 34,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 46),
                  width: MediaQuery.of(context).size.width,
                  height: 407,
                  child: ListView.builder(
                      itemCount: Listed.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children:[
                           Row(children: [
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
         
                                  Text(Listed[index].requirement,style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Google Sans',
                            color: Color(0xFFFFFFFF),
                          ),),
                        ]),
                        const SizedBox(height: 15,)]);

                      }))
            ]
                          
                        )
                        
                        
            ]),
          ])
        ));
  }
}