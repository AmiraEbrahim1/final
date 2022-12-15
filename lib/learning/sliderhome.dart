import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:yisitapp/learning/sliderdetails.dart';
import 'package:yisitapp/learning/slidermodel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _pageController;
  int _currentPage = 0;
  int _currentIndex = 0;
  double sliderValue = 0;
  double slidersValue = 0;
  bool press = false;
  bool pressed = true;
  int _progressValue = 0;
  double _progress = 0;
  double _controller = 0.0;
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: _currentPage, keepPage: true);
    _progressValue = 0;
  }

  void _updateProgress() {
    setState(() {
      for (int i = _currentIndex; i < listedd.length; i++)
        _progressValue = _currentIndex;
    });
  }

  void _disgradeProgress() {
    setState(() {
      if (_progressValue != 0) {
        for (int i = _currentIndex; i < listedd.length; i--)
          _progressValue = _currentIndex;
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(6, 37, 55, 1),
        body: SingleChildScrollView(
          child: Column(children: [
            Column(
              children: [
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
                AspectRatio(
                  aspectRatio: 336 / 504,
                  child: PageView.builder(
                      onPageChanged: (index) {
                        setState(() {
                          _currentIndex = index;
                          _currentIndex == _progressValue;
                          _controller + 0.3;
                        });
                      },
                      itemCount: listedd.length,
                      physics: const ClampingScrollPhysics(),
                      controller: _pageController,
                      itemBuilder: (context, index) {
                        return carouselView(index);
                      }),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 45, right: 45),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          height: 22,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(95)),
                          child: SmoothPageIndicator(  
   controller: _pageController,  
   count:  listedd.length,  
   axisDirection: Axis.horizontal,  
   effect:  SlideEffect(  
      spacing:  8.0,  
      radius:  4.0,  
      dotWidth:  24.0,  
      dotHeight:  16.0,  
     // paintStyle:  PaintingStyle.stroke,  
      strokeWidth:  1.5,  
      dotColor:  Color(0xFFD9D9D9),  
      activeDotColor:  Color(0xFF21C4A7) 
   ),  
)
                         
                          /*SliderIndicator(
                            length: 4,

                            activeIndex: _currentIndex.round(),
                            indicator: const Icon(FontAwesomeIcons.star,
                            size: 50,

                            color: Color(0xFFD9D9D9),),
                            activeIndicator:  Icon(FontAwesomeIcons.rocket,
                            color: Color(0xFF21C4A7),
                           ),
                          )*/
                          /* LinearProgressIndicator(
                            backgroundColor: Color(0xFFD9D9D9),
                            valueColor: new AlwaysStoppedAnimation<Color>(
                                Color(0xFF21C4A7)),
                            value: _controller,
                          )*/
                          ),
                      Text('${(_currentIndex).round()}%'),
                    ],
                  ),
                ),
                /* Slider(
                  min: 0.0,
                  max: 100.0,
                  activeColor: Colors.purple,
                  inactiveColor: Colors.purple.shade100,
                  thumbColor: Colors.pink,
                  value: slidersValue,
                  onChanged: (value) {
                    setState(() {
                     
                      slidersValue = value;
                    });
                  },
                ),*/
                const SizedBox(height: 15),
                Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              pressed = true;
                              _disgradeProgress();

                              _pageController.jumpToPage(_currentIndex - 1);
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              fixedSize: const Size(115, 39),
                              backgroundColor: Color(0xFFAFFFF1)),
                          child: const Text(
                            'Back',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Inter',
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _updateProgress();
                              press = true;
                              _pageController.jumpToPage(_currentIndex + 1);
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              fixedSize: const Size(115, 39),
                              backgroundColor: Color(0xFF21C4A7)),
                          child: const Text(
                            'Next',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Inter',
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ]),
        ));
  }

  Widget button(Data data) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailsScreen(data: data)));
      },
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          fixedSize: const Size(115, 39),
          backgroundColor: Color(0xFF21C4A7)),
      child: const Text(
        'Next',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: 'Inter',
          color: Color(0xFFFFFFFF),
        ),
      ),
    );
  }

  Widget carouselView(int index) {
    return carouselCard(listedd[index]);
  }

  Widget carouselCard(Data data) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Hero(
            tag: data.container,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsScreen(data: data)));
              },
              child: Container(
                child: data.container,
              ),
            ),
          ),
        ),

        /*  Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            data.title,
            style: const TextStyle(
                color: Colors.black45,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "\$${data.price}",
            style: const TextStyle(
                color: Colors.black87,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        )*/
      ],
    );
  }
}