import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yisitapp/cubit/cubit.dart';
import 'package:yisitapp/cubit/states.dart';
import 'package:yisitapp/view/shared.dart';
import 'package:yisitapp/view/widgets.dart';
class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  List titles = [
    ' \n Concepts \n     Level',
    ' \n Experience \n     Level',
    ' \n Badges\n   Level'
  ];
  List icons = [
    'images/Group 5209.png',
    'images/Group 5206.png',
    'images/Group 5211.png'
  ];
  bool isMoved=false;
  @override
  Widget build(BuildContext context) {
     final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return BlocConsumer<PubCubit,PubStates>(
      listener: (context,state){},
      builder: (context,state){
        return PubCubit.get(context).subscribedDataExperimentModel!=null?Scaffold(
            backgroundColor: const Color.fromRGBO(6, 37, 55, 1),
            body: DefaultTabController(
              length: 2,
              child: Column(children: [
                SizedBox(
                  height: height / 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        child: Image(
                          image: AssetImage('images/Ellipse 578.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 7.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      'WELCOME',
                                      style: TextStyle(color: Colors.white, fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: width*.34,
                                    ),
                                    InkWell(
                                      onTap: (){},
                                      child: Row(
                                        children: [
                                          Text('Scan QR', style:GoogleFonts.poppins(
                                              fontSize: 10,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400
                                          ),),
                                          SizedBox(
                                            width: 7,
                                          ),
                                          Image(image: AssetImage('images/scan.png'))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children:  [
                                Text(
                                  name,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height / 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(icons, (index, url) {
                    return buildPageItem(context, icons, titles, index);
                  }),
                ),

                Expanded(
                  // height: 300, //height of TabBarView
                  child: Stack(
                    children: [
                      TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        children: <Widget>[
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(height: 90,),
                                ListView.separated(
                                    shrinkWrap: true,
                                    physics: const BouncingScrollPhysics(),
                                    itemBuilder: (context, index) => buildDashboardItem(
                                        height,width,context,index,PubCubit.get(context).subscribedDataExperimentModel!.message![index]
                                    ),
                                    separatorBuilder: (context, index) =>
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    itemCount: PubCubit.get(context).subscribedDataExperimentModel!.message!.length),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            child:PubCubit.get(context).subscribedDataExperimentModel!=null
                            ?Column(
                              children: [
                                SizedBox(height: 90,),
                                ListView.separated(
                                    shrinkWrap: true,
                                    physics: const BouncingScrollPhysics(),
                                    itemBuilder: (context, index) => buildDashboardItem(
                                        height,width,context,index,PubCubit.get(context).subscribedDataExperimentModel!.message![index]
                                    ),
                                    separatorBuilder: (context, index) =>
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    itemCount: PubCubit.get(context).subscribedDataExperimentModel!.message!.length),
                              ],
                            ):Center(child: CircularProgressIndicator(),),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0,right: 30.0,top:5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color:Color.fromRGBO(16, 52, 68, 1),
                          ),
                          child:  TabBar(
                            labelStyle:const TextStyle(
                                fontFamily: 'Disengaged',
                                fontSize: 16,
                                fontWeight: FontWeight.w400
                            ) ,
                            // indicatorWeight: 4,
                            // indicatorColor: Color.fromRGBO(29, 168, 154, 1),
                            labelColor: Colors.white,
                            unselectedLabelStyle: TextStyle(color: Colors.white,fontFamily:'Disengaged',fontSize: 16 ,fontWeight: FontWeight.w400),
                            unselectedLabelColor: Colors.white,
                            indicator: BoxDecoration(
                              color: Color.fromRGBO(29, 168, 154, 1),
                              borderRadius:isMoved==false? BorderRadius.only(topLeft:Radius.circular(20),bottomLeft:Radius.circular(20) ):BorderRadius.only(topRight:Radius.circular(20),bottomRight:Radius.circular(20) ),
                            ),
                            onTap: (index){
                              if(index % 2!=0){
                                setState(() {
                                  isMoved=true;
                                });
                              }else{
                                setState(() {
                                  isMoved=false;
                                });
                              }
                            },
                            tabs: [
                              Tab(text: 'PURCHASED'),
                              Tab(text: 'SUBSCRIBED'),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ]),
            )):Center(child: CircularProgressIndicator(),);
      },
    );
  }
}
