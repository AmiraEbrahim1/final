import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yisitapp/cubit/cubit.dart';
import 'package:yisitapp/cubit/states.dart';
import 'package:yisitapp/view/homeScreen.dart';
import 'package:yisitapp/view/shared.dart';
import 'package:yisitapp/view/widgets.dart';
class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return BlocConsumer<PubCubit,PubStates>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
          backgroundColor: const Color.fromRGBO(6, 37, 55, 1),
          // appBar: AppBar(
          //   leading: IconButton(
          //     icon: const Icon(Icons.arrow_back),
          //     onPressed: (){
          //       navigateTo(context, const HomeScreen());
          //     },
          //   ),
          //   elevation: 0,
          // ),
          appBar: AppBar(
            elevation: 0,
            leading: IconButton(
              onPressed: (){
                PubCubit.get(context).index=1;
                navigateTo(context, HomeScreen());
              },
                icon: Icon(
                Icons.arrow_back
              ),
            ),
            actions: [
              Image(image: AssetImage('images/Vector (2).png'))
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child:Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) => buildCartItem(
                         width,height
                      ),
                      separatorBuilder: (context, index) =>
                      const SizedBox(
                        height: 20,
                      ),
                      itemCount: 2),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
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
                                              'Level : Easy',
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
                                              'Level : Easy',
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
                  )
                ],
              ),
            ),
          ),
        );
      },
        );
  }
}
