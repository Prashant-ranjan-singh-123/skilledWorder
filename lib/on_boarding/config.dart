import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:v_bhartiya/authantication/login.dart';
import 'package:v_bhartiya/authantication/login_signup_ask.dart';
import 'package:v_bhartiya/on_boarding/page_1.dart';
import 'package:v_bhartiya/on_boarding/page_2.dart';
import 'package:v_bhartiya/on_boarding/page_3.dart';
import 'package:v_bhartiya/on_boarding/page_4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:v_bhartiya/on_boarding/style.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool isLast=false;
  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(64,123,255,1),
    ));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(64,123,255,1),
        toolbarHeight: 15,
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: PageView(
                onPageChanged: (int val){
                  if(val==3){
                    isLast=true;
                  }else{
                    isLast=false;
                  }
                  setState(() {isLast;});
                },
              controller: controller,
                children: const [
                  PageOne(),
                  PageTwo(),
                  PageThree(),
                  PageFour()
                ],
            ),
          ),
          Align(
            alignment: const Alignment(0,0.85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (!isLast) InkWell(
                  onTap: (){
                    controller.jumpToPage(3);
                  },
                    child: Card(
                      color: Color.fromRGBO(64,123,255,0.9),
                      child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('Skip', style: TextStyleIs().skip_and_next(),),
                    )))
                else Text('    ', style: TextStyleIs().skip_and_next(),),
                SmoothPageIndicator(
                  controller: controller,
                  count: 4,
                  effect: const SwapEffect(),
                ),
                if (!isLast) InkWell(
                  onTap: (){
                    controller.nextPage(duration: Duration(milliseconds: 400), curve: Curves.easeIn);
                  },
                    child: Card(
                        color: Color.fromRGBO(64,123,255,0.9),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text('Next', style: TextStyleIs().skip_and_next(),),
                        )))
                else InkWell(
                  onTap: (){
                    Get.off(const LoginOrSignUpAsking(), transition: Transition.zoom, duration: Duration(seconds: 1));
                  }, child: Card(
                  color: Color.fromRGBO(64,123,255,0.9),
                    child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text('Done', style: TextStyleIs().skip_and_next(),),
                  )))
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SvgPicture.asset(
              'assets/onboarding/wave.svg',
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ],
      ),
    );
  }
}