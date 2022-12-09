import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yisitapp/cubit/cubit.dart';
import 'package:yisitapp/cubit/states.dart';
import 'package:yisitapp/model/experimentModel.dart';
import 'package:yisitapp/view/individialExperiment.dart';
import 'package:yisitapp/view/shared.dart';
class Faqs extends StatefulWidget {
   Faqs({required this.faq}) : super();
Faq faq=Faq();
  @override
  State<Faqs> createState() => _FaqsState();
}

class _FaqsState extends State<Faqs> {
  ExpandedTileController controller=ExpandedTileController();
  @override
  Widget build(BuildContext context) {
    final width =MediaQuery.of(context).size.width;
    final height =MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(6, 38, 57, 1),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
          //  navigateTo(context,IndividualExpriment());
          },
        ),
        centerTitle: true,
        title:Text(
          'faqs on',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Disengaged'),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(33, 196, 167, 1)
            ),
            child: TextButton(
                onPressed: (){},
                child: Text(
                  'Pendulum',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Disengaged'),
                ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) =>
                Padding(padding: EdgeInsets.all(5)),
            itemBuilder: (context, index){
              return InkWell(
              onTap: (){
                PubCubit.get(context).changeIndex(index);
                  PubCubit.get(context).onPress(index,PubCubit.get(context).current_index);
              },
                child: Drop(faq:PubCubit.get(context).dataExperimentModel!.faq![index],index: index,current_index: PubCubit.get(context).current_index,));},
            itemCount: PubCubit.get(context).dataExperimentModel!.faq!.length,
          ),

        ],
      ),
    );
  }
  // Widget dropDown(double width,double height){
  //  return ExpandedTile(
  //     theme: const ExpandedTileThemeData(
  //       headerColor: Colors.green,
  //       headerRadius: 24.0,
  //       // headerPadding: EdgeInsets.all(24.0),
  //       headerSplashColor: Colors.transparent,
  //       contentBackgroundColor: Colors.blue,
  //       // contentPadding: EdgeInsets.all(24.0),
  //       contentRadius: 12.0,
  //     ),
  //     trailing: Icon(CupertinoIcons.chevron_down,color: Colors.white,size: 12,),
  //     controller: controller,
  //     title: Text('${widget.faq.question}',style:GoogleFonts.poppins(
  //         fontSize: 14,
  //         color: Colors.white,
  //         fontWeight: FontWeight.w400),)
  //     // Padding(
  //     //   padding: const EdgeInsets.only(left: 25.0),
  //     //   child: Container(
  //     //     height: height*.08,
  //     //     width: width*.85,
  //     //     decoration: BoxDecoration(
  //     //         borderRadius: BorderRadius.circular(11),
  //     //         color: Color.fromRGBO(20, 62, 81, 1)
  //     //     ),
  //     //     child: Padding(
  //     //       padding: const EdgeInsets.only(left: 15.0,right: 10),
  //     //       child: Row(
  //     //         children: [
  //     //           Text('Which Pendulum will Swing Faster',style:GoogleFonts.poppins(
  //     //               fontSize: 14,
  //     //               color: Colors.white,
  //     //               fontWeight: FontWeight.w400),),
  //     //           Spacer(),
  //     //           Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,)
  //     //         ],
  //     //       ),
  //     //     ),
  //     //   ),
  //     // )
  //    ,
  //     content:Text(
  //         "${widget.faq.answer}"
  //     ,style: TextStyle(color: Colors.white),
  //       textAlign: TextAlign.center,
  //       maxLines: 5,
  //       overflow: TextOverflow.ellipsis,
  //     ),
  //     onTap: () {
  //       debugPrint("tapped!!");
  //     },
  //     onLongTap: () {
  //       debugPrint("long tapped!!");
  //     },
  //      );
  //      }
}
class Drop extends StatelessWidget {
   int index;
   int current_index;
  Drop({required this.faq,required this.index,required this.current_index}) : super();
Faq faq=Faq();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PubCubit,PubStates> (
        listener: (context,state){},
      builder: (context, state)=> Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(15),
              color: Color.fromRGBO(16,52,68, 1)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: Text('${faq.question}',style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                     )),
                    SizedBox(width: 10,),
                    Icon(PubCubit.get(context).isExpanded && PubCubit.get(context).current_index==index  ?CupertinoIcons.chevron_up:CupertinoIcons.chevron_down,color: Colors.white,size: 18,)
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              AnimatedOpacity(
                duration:Duration(
                  milliseconds: 500
                ) ,
                opacity:PubCubit.get(context).isExpanded && PubCubit.get(context).current_index==index  ?1:0 ,
                child:PubCubit.get(context).isExpanded && PubCubit.get(context).current_index==index  ? Text("${faq.answer} ",style:TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ):Container(
                  width: 0,
                  height: 0,
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
