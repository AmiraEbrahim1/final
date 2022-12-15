import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Merchants {
  final String name;
  final SizedBox sizedBox;

  Merchants(this.name, this.sizedBox);
}

final Listss = [
  Merchants(
      "Wash your hands.",
      SizedBox(
        width: 74,
      )),
  Merchants(
      "Wear mask.",
      SizedBox(
        width: 123,
      )),
  Merchants(
      "Wear gloves.",
      SizedBox(
        width: 113,
      )),
  Merchants(
      "Handle kit carefully",
      SizedBox(
        width: 63,
      )),
];

class M {
  final String name;
  final SizedBox sizedBox;

  M(this.name, this.sizedBox);
}

final Lists = [
  M(
      "Gloves",
      SizedBox(
        width: 160,
      )),
  M(
      "Mask",
      SizedBox(
        width: 174,
      )),
  M(
      "First aid kit",
      SizedBox(
        width: 129,
      )),
  M(
      "Bowl of water",
      SizedBox(
        width: 105,
      )),
];

class Requirements {
  final String requirement;

  Requirements(this.requirement);
}

final Listed = [
  Requirements('Food Coloring'),
  Requirements('Corn Syrup'),
  Requirements('Vinegar'),
  Requirements('Baking Soda'),
  Requirements('Oil'),
  Requirements('Salt'),
  Requirements('Milk'),
  Requirements('Dish Soap'),
  Requirements('Yeast'),
  Requirements('Cornstarch'),
];
/*
class Button {
  final Ink ink;

  Button(this.ink);
}

final buttonlist = [
  ink(
    height: 62,
    width: 308,
    decoration: BoxDecoration(
        color: Color(0xFF143E51), borderRadius: BorderRadius.circular(17)),
    child: Padding(
        padding: EdgeInsets.only(left: 38, bottom: 21, top: 21),
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
  )
];*/