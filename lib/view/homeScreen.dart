import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yisitapp/cubit/cubit.dart';
import 'package:yisitapp/cubit/states.dart';
import 'package:yisitapp/view/cart_screen.dart';
import 'package:yisitapp/view/dashboard.dart';
import 'package:yisitapp/view/dropDown.dart';
import 'package:yisitapp/view/home_bot_navigation.dart';
import 'package:yisitapp/view/miniScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController(
    initialPage: 1,
  );

  //int current=0;

  CarouselController carouselController = CarouselController();
  @override
  void initState() {
    // HiveLoginBoxDB().box.clear();//for logOut
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return BlocConsumer<PubCubit, PubStates>(
      listener: (context, state) {},
      builder: (context, state) {
        //  print(PubCubit.get(context).dataLoginModel!.user!.studentName!);
        return Scaffold(
          backgroundColor: const Color.fromRGBO(6, 37, 55, 1),
          appBar: PubCubit.get(context).index == 1
              ? AppBar(
                  elevation: 0,
                  leading: Container(
                      padding: const EdgeInsets.only(left: 8),
                      child: const Image(
                        image: AssetImage('images/Untitled-1-Recovered 2.png'),
                        width: 30,
                        height: 30,
                      )),
                  centerTitle: false,
                  actions: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 20.0, top: 5),
                          child: Text(
                            'Welcome',
                            style: GoogleFonts.poppins(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        DropDownWidget(width: width * 0.3),
                      ],
                    ),
                  ],
                )
              : PreferredSize(
                  preferredSize: const Size.fromHeight(10), child: Container()),
          body: PubCubit.get(context).dataModel == null
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : PageView(
                  onPageChanged: (index) {
                    pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.linearToEaseOut,
                    );
                    PubCubit.get(context).changeNav(index);
                  },
                  controller: pageController,
                  children: [
                    const DashBoard(),
                    MiniScreen(
                      carouselController: carouselController,
                      //current: PubCubit.get(context).index
                    ),
                    const CartScreen()
                  ],
                ),
          bottomNavigationBar: HomeBotNavigation(
            pageController: pageController,
          ),
        );
      },
    );
    //    },
    // ),
    //  );
  }
}
