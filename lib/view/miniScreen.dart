import 'package:carousel_slider/carousel_slider.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yisitapp/cubit/cubit.dart';
import 'package:yisitapp/cubit/states.dart';
import 'package:yisitapp/view/widgets.dart';

class MiniScreen extends StatefulWidget {
  final CarouselController carouselController;
  const MiniScreen({
    Key? key,//stateful widget
    required this.carouselController,
  }) : super(key: key);

  @override
  State<MiniScreen> createState() => _MiniScreenState();
}
class _MiniScreenState extends State<MiniScreen> {
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  List titles = ['ROBOTICS', 'HEART STRUCTURE', 'ELECTRIC BULB'];
  List titlesPhysic = [
    'ELECTRIC BULB',
    'ROBOTICS',
    'HEART STRUCTURE',
  ];
  List buildImages = [
    'images/Rectangle 2513.png',
    'images/Rectangle 2513.png',
    'images/Rectangle 2513.png'
  ];
  List buildImagesPhysic = [
    'images/bulb.png',
    'images/bulb.png',
    'images/bulb.png'
  ];

  List imgList = [
    'images/Rectangle 2500 (1).png',
    'images/Rectangle 2517 (1).png',
    'images/Rectangle 2519 (1).png',
  ];

  @override
  void initState() {
    super.initState();
  }
@override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    PubCubit myCubit = PubCubit.get(context);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return BlocConsumer<PubCubit, PubStates>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              CarouselSlider(
                  carouselController: widget.carouselController,
                  items: imgList
                      .map((e) => Container(
                            width: width * 0.8,
                            height: height * .5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(e.toString()),
                                  fit: BoxFit.cover,
                                )),
                            // child: Image(
                            //       image: NetworkImage(e.toString()),fit: BoxFit.cover,
                            //     ),
                          ))
                      .toList(),
                  options: CarouselOptions(
                      onPageChanged: ((index, carouselReason) {
                        PubCubit.get(context).changePage(index);
                      }),
                      enableInfiniteScroll: false,
                      autoPlay: true,
                      height: height * .2,
                      initialPage: 0,
                      reverse: false,
                      autoPlayAnimationDuration: const Duration(seconds: 2),
                      autoPlayInterval: const Duration(seconds: 3),
                      viewportFraction: .84,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      scrollDirection: Axis.horizontal,
                      enlargeCenterPage: false)),
              //         Container(
              //           width: width*0.8,
              //                 height: height*.3,
              //           child: PageView.builder(
              //           itemCount: imgList.length,
              //
              // pageSnapping: true,
              // controller: _pageController,
              // onPageChanged: (page) {
              // setState(() {
              //   PubCubit.get(context).changePage(page);
              // });
              // },
              // itemBuilder: (context, pagePosition) {
              // return Container(
              // margin: EdgeInsets.all(10),
              // child: Image.asset(imgList[pagePosition]),
              // );
              // }),
              //         ),

              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: map<Widget>(imgList, (index, url) {
                  return GestureDetector(
                    onTap: () {
                      widget.carouselController.animateToPage(index.key);
                    },
                    child: Container(
                      width: 10.0,
                      height: 10.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: PubCubit.get(context).current == index
                            ? Colors.greenAccent
                            : Colors.white,
                      ),
                    ),
                  );
                }),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 98,
                          height: 21,
                          child: Text(
                            'TRENDING',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Disengaged'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ConditionalBuilder(
                    condition: PubCubit.get(context).dataModel != null,
                    builder: (context) => Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        width: width,
                        height: 195,
                        child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return
                                buildItem(
                                context,
                                myCubit.trendingList[index]
                                //myCubit.dataModel!.experiments![index]
                                    ,
                                index);
                              },
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                                  width: 10,
                                ),
                            itemCount: myCubit.trendingList.length ),
                      ),
                    ),
                    fallback: (context) =>
                        const Center(child: CircularProgressIndicator()),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 98,
                          height: 21,
                          child: Text(
                            'PHYSICS',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Disengaged'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ConditionalBuilder(
                    condition: PubCubit.get(context).dataModel != null,
                    builder: (context) => Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        width: width,
                        height: 195,
                        child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, index) => buildItemPhysic(
                                  context,
                                  PubCubit.get(context).physicsList[index],
                                  index,
                                ),
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                                  width: 10,
                                ),
                            itemCount: titlesPhysic.length),
                      ),
                    ),
                    fallback: (context) =>
                        const Center(child: CircularProgressIndicator()),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 110,
                          height: 21,
                          child: Text(
                            'chemistry',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'Disengaged')
                          ),
                        )
                      ],
                    ),
                  ),
                  ConditionalBuilder(
                    condition: PubCubit.get(context).dataModel != null,
                    builder: (context) => Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        width: width,
                        height: 195,
                        child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, index) => buildItemPhysic(
                                  context,
                                  PubCubit.get(context).chemistryList[index],
                                  index,
                                ),
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                                  width: 10,
                                ),
                            itemCount:
                                PubCubit.get(context).chemistryList.length),
                      ),
                    ),
                    fallback: (context) =>
                        const Center(child: CircularProgressIndicator()),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 98,
                          height: 21,
                          child: Text(
                            'BIOLOGY',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Disengaged')
                      ,
                          ))],
                    ),
                  ),
                  ConditionalBuilder(
                    condition: PubCubit.get(context).dataModel != null,
                    builder: (context) => Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        width: width,
                        height: 195,
                        child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, index) => buildItemPhysic(
                                  context,
                                  PubCubit.get(context).biologyList[index],
                                  index,
                                ),
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                                  width: 10,
                                ),
                            itemCount:
                                PubCubit.get(context).biologyList.length),
                      ),
                    ),
                    fallback: (context) =>
                        const Center(child: CircularProgressIndicator()),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
