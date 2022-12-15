import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yisitapp/learning/Merchants.dart';

class DataModel {
  final String title;
  final String imageName;
  final double price;
  DataModel(
    this.title,
    this.imageName,
    this.price,
  );
}

List<DataModel> dataList = [
  DataModel("Short Dress", "images/Layer2.png", 300.8),
  DataModel("Office Formals", "images/Layer2.png", 245.2),
  DataModel("Casual Jeans", "images/Star 1.png", 168.2),
  DataModel("Jeans Skirt", "images/Layer2.png", 136.7),
];

class Data {
  final Container container;

  Data(this.container);
}

List<Data> listedd = [
  Data(Container(
    child: Column(children: [
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
        height: 24,
      ),
      Column(children: [
        Container(
            padding: const EdgeInsets.only(left: 46),
            width: 400,
            height: 407,
            child: ListView.builder(
                itemCount: Listed.length,
                itemBuilder: (context, index) {
                  return Column(children: [
                    Row(children: [
                      Container(
                        width: 3,
                        height: 3,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        Listed[index].requirement,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 15,
                    )
                  ]);
                }))
      ]),
    ]),
  )),
  Data(
    Container(
        child: Column(children: [
      const SizedBox(
        height: 17,
      ),
      Column(children: [
        Container(
          width: 336,
          height: 555,
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
          ),
        ),
      ]),
    ])),
  ),
  Data(Container(
      child: Column(children: [
    const SizedBox(
      height: 73,
    ),
    Column(children: [
      Container(
        width: 350,
        height: 225,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
        ),
      ),
    ]),
    const SizedBox(
      height: 45,
    ),
    Container(
      width: 304,
      height: 40,
      child: Text(
        "Did you count how many times it swings back and forth.",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: 'Google Sans',
          color: Color(0xFFFFFFFF),
        ),
        textAlign: TextAlign.center,
      ),
    ),
    const SizedBox(
      height: 38,
    ),
    Padding(
        padding: const EdgeInsets.only(left: 102),
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  fixedSize: const Size(83, 35),
                  backgroundColor: Color(0xFF103444)),
              child: const Text(
                'Yes',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  fixedSize: const Size(83, 35),
                  backgroundColor: Color(0xFF103444)),
              child: const Text(
                'No',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
          ],
        )),
  ]))),
  Data(
    Container(
      child: Column(
        children: [
          const SizedBox(
            height: 73,
          ),
          Column(children: [
            Container(
              width: 350,
              height: 225,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
              ),
            ),
          ]),
          const SizedBox(
            height: 45,
          ),
          Container(
            width: 304,
            height: 40,
            child: Text(
              "Did you count how many times it swings back and forth.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'Google Sans',
                color: Color(0xFFFFFFFF),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ),
  ),
];

List<Data> quiz = [
  Data(Container(
    child: Column(children: [
      const SizedBox(
        height: 75,
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
        height: 24,
      ),
      Column(children: [
        Container(
            padding: const EdgeInsets.only(left: 46),
            width: 400,
            height: 407,
            child: ListView.builder(
                itemCount: Listed.length,
                itemBuilder: (context, index) {
                  return Column(children: [
                    Row(children: [
                      Container(
                        width: 3,
                        height: 3,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        Listed[index].requirement,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 15,
                    )
                  ]);
                }))
      ]),
    ]),
  )),
  Data(
    Container(
        child: Column(children: [
      const SizedBox(
        height: 17,
      ),
      Column(children: [
        Container(
          width: 336,
          height: 555,
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
          ),
        ),
      ]),
    ])),
  ),
  Data(Container(
      child: Column(children: [
    const SizedBox(
      height: 73,
    ),
    Column(children: [
      Container(
        width: 350,
        height: 225,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
        ),
      ),
    ]),
    const SizedBox(
      height: 45,
    ),
    Container(
      width: 304,
      height: 40,
      child: Text(
        "Did you count how many times it swings back and forth.",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: 'Google Sans',
          color: Color(0xFFFFFFFF),
        ),
        textAlign: TextAlign.center,
      ),
    ),
    const SizedBox(
      height: 38,
    ),
    Padding(
        padding: const EdgeInsets.only(left: 102),
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  fixedSize: const Size(83, 35),
                  backgroundColor: Color(0xFF103444)),
              child: const Text(
                'Yes',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  fixedSize: const Size(83, 35),
                  backgroundColor: Color(0xFF103444)),
              child: const Text(
                'No',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
          ],
        )),
  ]))),
  Data(
    Container(
      child: Column(
        children: [
          const SizedBox(
            height: 73,
          ),
          Column(children: [
            Container(
              width: 350,
              height: 225,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
              ),
            ),
          ]),
          const SizedBox(
            height: 45,
          ),
          Container(
            width: 304,
            height: 40,
            child: Text(
              "Did you count how many times it swings back and forth.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'Google Sans',
                color: Color(0xFFFFFFFF),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ),
  )
];
