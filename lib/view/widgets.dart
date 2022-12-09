import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yisitapp/cubit/cubit.dart';
import 'package:yisitapp/cubit/states.dart';
import 'package:yisitapp/hiveAdapters/loginhiveAdapter.dart';
import 'package:yisitapp/hiveDatabse/hiveLoginDatabase.dart';
import 'package:yisitapp/model/homeModel.dart';
import 'package:yisitapp/model/subscribedExperimentsModel.dart';
import 'package:yisitapp/view/individialExperiment.dart';
import 'package:yisitapp/view/shared.dart';
import 'package:yisitapp/view/subscription.dart';


String ageConverter(List<int>? u) {
  int part1 = u![0];
  int part2 = u[1];
  String y = "${part1.toString()}-${part2.toString()}";
  return y;
}

Widget buildItem(BuildContext context, Experiments experiments, int index) =>
    InkWell(
      onTap: ()async{
        HiveLoginModel m=HiveLoginBoxDB().getFromHive();
        await  PubCubit.get(context).getExperimentData(uuid:experiments.uuid!,token:m.token!,context: context);
      },
      child: Container(
          width: (MediaQuery.of(context).size.width) * .5,
          height: (MediaQuery.of(context).size.height) * .4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromRGBO(16, 52, 68, 1)),
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: (MediaQuery.of(context).size.height) * .08,
                  child: Container(
                    height: (MediaQuery.of(context).size.height) * .32,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        image: DecorationImage(
                            image: NetworkImage('${experiments.thumbnail}'),
                            fit: BoxFit.cover)
                    ),
                  )),
          Positioned(
                      bottom: (MediaQuery.of(context).size.height) * .079,
                      left:0,
                      child: ClipRect(
                        child: BackdropFilter(
                          filter:  ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                          child: Container(
                            width: (MediaQuery.of(context).size.width) * .5,
                            height: (MediaQuery.of(context).size.height) *.04,
                              decoration: const BoxDecoration(
                            //     gradient: SweepGradient(colors: [
                            //   Color.fromRGBO(111, 110, 104, 150),
                            //       Color.fromRGBO(95, 95, 89, 80),
                            // ]
                            //     ),
                               color: Color.fromRGBO(111, 110, 104, 230),

                            ),

                          ),
                        ),
                      ),
                    ),
              Positioned(
                bottom: (MediaQuery.of(context).size.height) * .09,//
                right: 8,
                child: SizedBox(
                  width: 91,
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Image(image: AssetImage('images/Vector.png')),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '4.5(243 reviews)',
                        style: TextStyle(color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Google Sans',
                            fontWeight:FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 7, right: 7, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Color.fromRGBO(27, 74, 209, 1),
                            Color.fromRGBO(28, 74, 212, 1),
                            Color.fromRGBO(23, 65, 152, 1),
                          ]),

                          borderRadius: BorderRadius.circular(20),

                          //color: const Color.fromRGBO(27, 74, 209, 1)
                        ),
                        child:
                            const Image(image: AssetImage('images/vector2.png')),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${experiments.title}',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Disengaged'),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        width:
                                            (MediaQuery.of(context).size.width) / 26,

                                        // height:  (MediaQuery.of(context).size. height)/26,

                                        child: const Image(
                                          image: AssetImage('images/Vector3.png'),
                                        )),
                                    const Text('10-13yrs',
                                        style: TextStyle(
                                          fontFamily: 'Google Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width*.03,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                     Text(
                                      'Difficulty',
                                      style:GoogleFonts.poppins(
                                        fontSize: 10,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    RatingBarIndicator(
                                      unratedColor: Colors.white,
                                      rating: 2.0,
                                      itemSize: 5,
                                      direction: Axis.horizontal,
                                      itemCount: 5,
                                      itemPadding:
                                      const EdgeInsets.symmetric(horizontal: 0),
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.circle,
                                        color: Colors.greenAccent,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
          ),
    );
Widget buildItemPhysic(BuildContext context, Experiments experiments, int index) =>
    InkWell(
      onTap: ()async{
        HiveLoginModel m=HiveLoginBoxDB().getFromHive();
      await  PubCubit.get(context).getExperimentData(uuid:experiments.uuid!,token:m.token!,context: context);
      },
      child: Container(
          width: (MediaQuery.of(context).size.width) * .5,
          height: (MediaQuery.of(context).size.height) * .4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromRGBO(16, 52, 68, 1)),
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: (MediaQuery.of(context).size.height) * .08,
                  child: Container(
                    height: (MediaQuery.of(context).size.height) * .32,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        image: DecorationImage(
                            image: NetworkImage('${experiments.thumbnail}'),
                            fit: BoxFit.cover)),
                  )),
              Positioned(
                bottom: (MediaQuery.of(context).size.height) * .08,
                left:0,
                child: ClipRect(
                  child:
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                    child:
                  Container(
                      decoration:  BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(-2, 2),
                           // blurRadius: 5,
                            spreadRadius: 5,
                            color: Colors.black.withOpacity(.04)
                          )
                        ],
                          color: Colors.transparent
                          // gradient: LinearGradient(
                          //   begin: Alignment.topRight,
                          //   end: Alignment.bottomLeft,
                          //   // stops: [
                          //   //   0.3,
                          //   // ],
                          //   //tileMode: TileMode.repeated,
                          //   colors: [
                          //     // Colors.transparent,
                          //      Colors.transparent,
                          //    // Colors.grey.shade300,
                          //    //  Colors.black45,
                          //    //  Colors.black54,
                          //    //  Colors.black54,
                          //    // Colors.black12,
                          //     // Colors.transparent,
                          //     //Colors.grey.shade700,
                          //
                          // ],
                          // )
                      ),
                      width: (MediaQuery.of(context).size.width) * .5,
                      height: (MediaQuery.of(context).size.height) *.04,
                    ),
                  ),
                ),
              ),
                      Positioned(
                        bottom: (MediaQuery.of(context).size.height) * .09,//
                        right: 8,
                        child: SizedBox(
                          width: 91,
                          height: 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Image(image: AssetImage('images/Vector.png')),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '4.5(243 reviews)',
                                style: TextStyle(color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: 'Google Sans',
                                  fontWeight:FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 7, right: 7, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Color.fromRGBO(27, 74, 209, 1),
                            Color.fromRGBO(28, 74, 212, 1),
                            Color.fromRGBO(23, 65, 152, 1),
                          ]),

                          borderRadius: BorderRadius.circular(20),

                          //color: const Color.fromRGBO(27, 74, 209, 1)
                        ),
                        child:
                        const Image(image: AssetImage('images/vector2.png')),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${experiments.title}',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Disengaged'),
                            ), //-
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        width:
                                        (MediaQuery.of(context).size.width) / 26,

                                        // height:  (MediaQuery.of(context).size. height)/26,

                                        child: const Image(
                                          image: AssetImage('images/Vector3.png'),
                                        )),
                                     Text('${ageConverter(experiments.ageCategory)}yrs',
                                        style: TextStyle(
                                          fontFamily: 'Google Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width*.03,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Difficulty',
                                      style:GoogleFonts.poppins(
                                          fontSize: 10,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    RatingBarIndicator(
                                      unratedColor: Colors.white,
                                      rating: experiments.difficulty!.toDouble(),
                                      itemSize: 5,
                                      direction: Axis.horizontal,
                                      itemCount: 5,
                                      itemPadding:
                                      const EdgeInsets.symmetric(horizontal: 0),
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.circle,
                                        color: Colors.greenAccent,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
      ),
    );
Widget buildPageItem(
        BuildContext context, List icons, List titles, int index) =>
    Padding(
      padding: const EdgeInsets.only(right: 2.0),
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 3.3,
            height: MediaQuery.of(context).size.height / 6,
            // color: Colors.deepOrange,
            child: Center(
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    height: MediaQuery.of(context).size.height / 8,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(16, 52, 68, 1),
                        borderRadius: BorderRadius.circular(25)),
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height / 150,
                      left: MediaQuery.of(context).size.width / 13,
                      child: const Text(
                        ' -',
                        style: TextStyle(
                          fontSize: 50,
                        ),
                      )),
                  Positioned(
                      top: MediaQuery.of(context).size.height / 25,
                      left: MediaQuery.of(context).size.width / 19,
                      child: Text(' ${titles[index]} ')),
                ],
              ),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 180,
              left: MediaQuery.of(context).size.width / 460,
              child: Image(image: AssetImage(icons[index])))
        ],
      ),
    );
Widget buildCartItem(double width,double height)=> Column(
  children: [
    Row(
      children: [
        Column(
          children: [
            Container(
              width: width*.43,
              height: height*.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image:DecorationImage(
                      image: AssetImage('images/maxresdefault 1.png'),fit: BoxFit.cover
                  )
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 139,
              height:68 ,
              child: Column(
                children: [
                  Container(

                    child: Text('Elephant Toothpaste',style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                    ),),
                    width: 149,
                    height: 20,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width:62,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Color.fromRGBO(16, 52, 68,1)
                        ),
                        child: Center(
                          child: Text('Age 9-14',style: GoogleFonts.inter(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.w300
                          ),),
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Difficulty',
                            style:GoogleFonts.poppins(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          RatingBarIndicator(
                            unratedColor: Colors.white,
                            rating: 2.0,
                            itemSize: 5,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemPadding:
                            const EdgeInsets.symmetric(horizontal: 0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.circle,
                              color: Colors.greenAccent,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 61,
                        height: 20,
                        child: Text('₹995.00',style: GoogleFonts.inter(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600
                        )),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(
          width: width*.05,
        ),
        Column(
          children: [
            Container(
              width: width*.43,
              height: height*.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image:DecorationImage(
                      image: AssetImage('images/maxresdefault 1.png'),fit: BoxFit.cover
                  )
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 139,
              height:68 ,
              child: Column(
                children: [
                  Container(

                    child: Text('Elephant Toothpaste',style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                    ),),
                    width: 149,
                    height: 20,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width:62,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Color.fromRGBO(16, 52, 68,1)
                        ),
                        child: Center(
                          child: Text('Age 9-14',style: GoogleFonts.inter(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.w300
                          ),),
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Difficulty',
                            style:GoogleFonts.poppins(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          RatingBarIndicator(
                            unratedColor: Colors.white,
                            rating: 2.0,
                            itemSize: 5,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemPadding:
                            const EdgeInsets.symmetric(horizontal: 0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.circle,
                              color: Colors.greenAccent,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 61,
                        height: 20,
                        child: Text('₹995.00',style: GoogleFonts.inter(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600
                        )),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),

      ],
    )
  ],
);
Widget buildDashboardItem(double height,double width,BuildContext context,int index,Message message)=>InkWell(
  onTap: (){
    navigateTo(context, Subscription());
  },
  child:   Column(

    children:  [

      Padding(

        padding: const EdgeInsets.only(left: 30.0,right: 30.0),

        child: Container(

          height: height*.17,

          decoration: BoxDecoration(

              color:Color.fromRGBO(20, 62, 81, 1),

              borderRadius: BorderRadius.circular(20)

          ),

          child: Row(

            children: [

              Padding(

                padding: const EdgeInsets.only(left: 7.0),

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

                        child: Text('${message.title}',style: GoogleFonts.inter(

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

                              child: Text('${message.category}',style: GoogleFonts.inter(

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

                                'Level : ${message.difficulty}',

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

      )

    ],

  ),
);
// class Amira extends StatefulWidget {
//   const Amira({Key? key}) : super(key: key);
//
//   @override
//   State<Amira> createState() => _AmiraState();
// }

// class _AmiraState extends State<Amira> {
//   HiveLoginBoxDB loginBoxDB=HiveLoginBoxDB();
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     loginBoxDB.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     HiveLoginModel model=loginBoxDB.getFromHive();
//     return Container(
//
//     );
//   }
// }
