import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:v_bhartiya/authantication/login.dart';
import 'package:v_bhartiya/authantication/register.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class LoginOrSignUpAsking extends StatefulWidget {
  const LoginOrSignUpAsking({super.key});

  @override
  State<LoginOrSignUpAsking> createState() => _LoginOrSignUpAskingState();
}

class _LoginOrSignUpAskingState extends State<LoginOrSignUpAsking> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(64,123,255,1),
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(64, 123, 255, 1),
        toolbarHeight: 15, // Adjust the height as needed
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: const Color.fromRGBO(241, 237, 247, 1),
            child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: SizedBox(
                      width: 350,
                        height: 350,
                        child: Lottie.asset('assets/onboarding/welcome.json', reverse: true)),
                  ),
                  const SizedBox(height: 90,),
                  GestureDetector(
                    onTap: (){
                      Get.to(const Login(),transition: Transition.downToUp, duration: Duration(seconds: 1));
                    },
                    child: Container(
                      height: 53,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(104, 149, 210,1),
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: const Center(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.login, color: Colors.white,),
                          SizedBox(width: 12,),
                          Text('SIGN IN',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'Roboto'
                          ),),
                        ],
                      ),),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  GestureDetector(
                    onTap: (){
                      Get.to(const Register(),transition: Transition.downToUp, duration: const Duration(seconds: 1));
                    },
                    child: Container(
                      height: 53,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(208,72,72,1),
                        borderRadius: BorderRadius.circular(10),
                        // border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: const Center(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.supervisor_account, color: Colors.white,),
                          SizedBox(width: 12,),
                          Text('SIGN UP',style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),),
                        ],
                      ),),
                    ),
                  ),
                ]
            ),
          ),
          // Align(
          //   alignment: Alignment.topCenter,
          //   child: SvgPicture.asset(
          //     'assets/onboarding/wave.svg',
          //     width: MediaQuery.of(context).size.width,
          //   ),
          // ),
        ],
      ),
    );
  }
}
