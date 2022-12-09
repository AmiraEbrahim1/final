import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yisitapp/cubit/cubit.dart';
import 'package:yisitapp/cubit/states.dart';
import 'package:yisitapp/model/experimentModel.dart';
import 'package:yisitapp/model/homeModel.dart';
import 'package:yisitapp/view/faqs.dart';
import 'package:yisitapp/view/homeScreen.dart';
import 'package:yisitapp/view/home_bot_navigation.dart';
import 'package:yisitapp/view/shared.dart';
class IndividualExpriment extends StatefulWidget {

  IndividualExpriment() : super();
  @override
  State<IndividualExpriment> createState() => _IndividualExprimentState();
}

class _IndividualExprimentState extends State<IndividualExpriment> {
  @override
  Widget build(BuildContext context) {
    final width =MediaQuery.of(context).size.width;
    final height =MediaQuery.of(context).size.height;
    return BlocConsumer<PubCubit,PubStates>(
        listener: (context,state){},
        builder: (context,state){
          return ConditionalBuilder(
      condition: PubCubit.get(context).dataExperimentModel != null,
      fallback: (context) =>
      const Center(child: CircularProgressIndicator()),
      builder: (BuildContext context) {
        // final TextSpan textAnswerSpan = HTML.toTextSpan(
        //   context,
        //   widget.description.toString(),
        //   linksCallback: (dynamic link) {
        //     debugPrint('You clicked on ${link.toString()}');
        //   },
        //   // as name suggests, optionally set the default text style
        //  // defaultTextStyle: TextStyle(color: Colors.grey[700]),
        //   // overrideStyle: <String, TextStyle>{
        //   //   'p': const TextStyle(fontSize: 22,
        //   //       fontWeight: FontWeight.w500,
        //   //       color: Colors.white),
        //     // 'li': const TextStyle(fontSize: 17.3),
        //     // 'h4': const TextStyle(wordSpacing: 2,
        //     //     fontSize: 22,
        //     //     fontWeight: FontWeight.w500,
        //     //     color: Colors.white),
        //     // specify any tag not just the supported ones,
        //     // and apply TextStyles to them and/override them
        // //  },
        // );
        return Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                    height: height,
                    color: Color.fromRGBO(6, 38, 57, 1)
                ),
                Container(
                  height: height*.4,
                  width: width,
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(image: AssetImage('images/Rectangle 2500 (1).png')
                  //       ,fit: BoxFit.fill)
                  // ),
                  child: Image(image:NetworkImage('${PubCubit.get(context).dataExperimentModel!.thumbnail}') ,fit: BoxFit.cover,),
                ),
                Positioned(
                  top: height*.32,
                  left: 20,
                  child: Container(
                    height: height*.27,
                    width: width*.9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Color.fromRGBO(20, 62, 81, 1)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
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
                              SizedBox(
                                width:10,
                              ),
                              Text(
                                '${PubCubit.get(context).dataExperimentModel!.title}',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Disengaged'),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
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
                                    rating: PubCubit.get(context).dataExperimentModel!.difficulty!.toDouble(),
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
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:  [
                                  Image(image: AssetImage('images/Vector.png')),
                                  SizedBox(
                                    width: 4,
                                  ),

                                  Text(
                                    '[${PubCubit.get(context).dataExperimentModel!.difficulty.toString()}]',
                                    style: TextStyle(color: Colors.white,
                                        fontSize: 14,
                                        fontFamily: 'Google Sans',
                                        fontWeight:FontWeight.w400
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 17,),
                          Row(
                            children: [
                              Text(
                                'Description :',
                                style:GoogleFonts.poppins(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 284,
                                height: height*.08,
                                child: Html(data:'${PubCubit.get(context).dataExperimentModel!.description}',
                                  //textAnswerSpan.toString(),
                               style: {
                               "body":Style(
                                fontSize: FontSize(10.0),
                                fontWeight: FontWeight.w400,
                                color: Colors.white
                                ),
                                },
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: height*.62,
                  left: 35,
                  child: Container(
                    height: height*.06,
                    width: width*.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Color.fromRGBO(20, 62, 81, 1)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 10),
                      child: InkWell(
                        onTap: drawer,
                        child: Row(
                          children: [
                            Image(image: AssetImage('images/greenvector.png'),width: 16,height: 16,),
                            SizedBox(width: 15,),
                            Text('Learning Outcomes',style:GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: height*.7,
                  left: 35,
                  child: InkWell(
                    onTap: (){
                      navigateTo(context, Faqs(faq:PubCubit.get(context).dataExperimentModel!.faq![0] ,));
                    },
                    child: Container(
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
                            Image(image: AssetImage('images/greenvector1.png'),width: 16,height: 16,),
                            SizedBox(width: 15,),
                            Text('FAQS',style:GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: height*.78,
                  left: 35,
                  child: Container(
                    height: height*.06,
                    width: width*.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Color.fromRGBO(20, 62, 81, 1)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 10),
                      child: InkWell(
                        onTap:(){} ,
                        child: Row(
                          children: [
                            Image(image: AssetImage('images/greenvector2.png'),width: 16,height: 16,),
                            SizedBox(width: 15,),
                            Text('Delivery Details',style:GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: height*.9,
                  left: 35,
                  child: Container(
                    height: height*.07,
                    width: width*.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromRGBO(33, 196, 167, 1)
                    ),
                    child: TextButton(
                        onPressed: (){},
                        child: Text('Get the Kit',style:GoogleFonts.poppins(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),)
                    ),
                  ),
                ),
                Positioned(
                    top: 25,
                    left: 20,
                    child: IconButton(
                        onPressed: (){
                          PubCubit.get(context).index=1;
                          navigateTo(context, HomeScreen());
                        },
                        icon: Icon(Icons.arrow_back,color: Colors.white,)))
              ],
            )
          ],
        ),
      ); },
    );});
  }
  void drawer(){
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
        context: context,
        builder:(context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Container(
      decoration: BoxDecoration(
      color: Color.fromRGBO(20, 62, 81, 1),
        borderRadius: BorderRadius.circular(35)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 35,right: 35,top: 15,bottom: 20),
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width:
            239,
            height: 30,
            child: Text('Learning Outcomes',style:GoogleFonts.poppins(
                fontSize: 23,
                color: Colors.white,
                fontWeight: FontWeight.w600),),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 272 ,
            height:270 ,

            child: ListView(
              shrinkWrap: true,
              children: [
                Text(
                  '${outcomesConverter(PubCubit.get(context).dataExperimentModel!.outcomes!)}' ,textAlign:TextAlign.center,style:GoogleFonts.poppins(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromRGBO(33, 196, 167, 1)
            ),
            child: TextButton(
                onPressed: (){},
                child: Text('Back',style:GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),)
            ),
          ),

        ],
        ),
      ),
      ),
    );
    }
    );
  }
  String outcomesConverter(List<String> u){
    String f='';
    for (int i = 0; i < u.length; i++) {

      f= f+u[i]+'.';
    }
    return f;
  }
}
