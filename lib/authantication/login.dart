import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:v_bhartiya/authantication/register.dart';
import 'package:v_bhartiya/authantication/otp.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {
  signInFun(){
    Get.to(const Otp(), transition: Transition.fade, duration: Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Color.fromRGBO(64,123,255,1),
              child: const Padding(
                padding: EdgeInsets.only(top: 60.0, left: 22),
                child: Text(
                  'Hello\nSign In!',
                  style: TextStyle(
                      fontFamily: 'Lora',
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                height: double.infinity,
                width: double.infinity,
                child:  Padding(
                  padding: const EdgeInsets.only(left: 18.0,right: 18),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 70,),
                        const TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.phone_android,color: Colors.grey,),
                              label: Text('Phone Number',style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color:Colors.black38,
                                fontFamily: 'Lora'
                              ),)
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
                              label: Text('Password',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Colors.black38,
                                fontFamily: 'Lora'
                              ),)
                          ),
                        ),
                        const SizedBox(height: 20,),
                        const Align(
                          alignment: Alignment.centerRight,
                          child: Text('Forgot Password?',style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Oswald',
                            fontSize: 17,
                            color: Color.fromRGBO(208,72,72,1),
                          ),),
                        ),
                        const SizedBox(height: 70,),
                        InkWell(
                          onTap: (){
                            signInFun();
                          },
                          child: Container(
                            height: 55,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color.fromRGBO(64,123,255,0.8),
                              // border: Border.all(color: Colors.black, width: 2),
                            ),
                            child: const Center(child: Text('SIGN IN',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white

                            ),),),
                          ),
                        ),
                        const SizedBox(height: 150,),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text("Don't have account?",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey
                              ),),
                              InkWell(
                                onTap: (){
                                  Get.off(Register(),transition: Transition.fade, duration: Duration(seconds: 1));
                                },
                                child: const Text("Sign up",style: TextStyle(///done login page
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.black
                                ),),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }



  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     resizeToAvoidBottomInset: false,
  //     backgroundColor: Colors.white,
  //     appBar: AppBar(
  //       backgroundColor: Colors.white,
  //       foregroundColor: Colors.white,
  //       leading: IconButton(
  //         onPressed: () {
  //           Navigator.pop(context);
  //         },
  //         icon: Icon(Icons.arrow_back_ios,
  //           size: 20,
  //           color: Colors.black,),
  //         color: Colors.white,
  //
  //       ),
  //     ),
  //     body: Stack(
  //       children: [
  //         SingleChildScrollView(
  //           child: SizedBox(
  //             height: MediaQuery.of(context).size.height,
  //             width: double.infinity,
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: <Widget>[
  //                 Expanded(child: Column(
  //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                   children: <Widget>[
  //                     Column(
  //                       children: <Widget>[
  //                         Image.asset('assets/onboarding/login.png', width: 250, height: 250,),
  //                         Text("Login",
  //                           style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
  //                         SizedBox(height: 20,),
  //                         Text("Login to your account",
  //                           style: TextStyle(
  //                               fontSize: 15,
  //                               color:Colors.grey[700]),)
  //                       ],
  //                     ),
  //                     Padding(
  //                       padding: EdgeInsets.symmetric(horizontal: 40),
  //                       child: Column(
  //                         children: <Widget>[
  //                           inputFile(label: "Email"),
  //                           inputFile(label: "Password", obscureText: true)
  //                         ],
  //                       ),
  //                     ),
  //                     Padding(padding:
  //                     EdgeInsets.symmetric(horizontal: 40),
  //                       child: Container(
  //                         padding: EdgeInsets.only(top: 3, left: 3),
  //                         decoration:
  //                         BoxDecoration(
  //                             borderRadius: BorderRadius.circular(50),
  //                             border: const Border(
  //                               bottom: BorderSide(color: Colors.black),
  //                               top: BorderSide(color: Colors.black),
  //                               left: BorderSide(color: Colors.black),
  //                               right: BorderSide(color: Colors.black),
  //
  //                             )
  //
  //
  //
  //                         ),
  //                         child: MaterialButton(
  //                           minWidth: double.infinity,
  //                           height: 60,
  //                           onPressed: () {},
  //                           color: Color(0xff0095FF),
  //                           elevation: 0,
  //                           shape: RoundedRectangleBorder(
  //                             borderRadius: BorderRadius.circular(50),
  //
  //                           ),
  //                           child: Text(
  //                             "Login", style: TextStyle(
  //                             fontWeight: FontWeight.w600,
  //                             fontSize: 18,
  //                             color: Colors.white,
  //
  //                           ),
  //                           ),
  //
  //                         ),
  //                       ),
  //                     ),
  //
  //
  //                     Row(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: <Widget>[
  //                         Text("Don't have an account?"),
  //                         Text(" Sign up", style: TextStyle(
  //                           fontWeight: FontWeight.w600,
  //                           fontSize: 18,
  //
  //                         ),)
  //                       ],
  //                     ),
  //
  //                     Container(
  //                       padding: EdgeInsets.only(top: 100),
  //                       height: 200,
  //                       decoration: const BoxDecoration(
  //                         image: DecorationImage(
  //                             image: AssetImage("assets/background.png"),
  //                             fit: BoxFit.fitHeight
  //                         ),
  //
  //                       ),
  //                     )
  //
  //                   ],
  //                 ))
  //               ],
  //             ),
  //           ),
  //         ),
  //         Align(
  //           alignment: Alignment.topCenter,
  //           child: SvgPicture.asset(
  //             'assets/onboarding/wave.svg',
  //             width: MediaQuery.of(context).size.width,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

}


// we will be creating a widget for text field
Widget inputFile({label, obscureText = false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color:Colors.black87
        ),

      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0,
                horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.grey.shade400
              ),

            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400)
            )
        ),
      ),
      SizedBox(height: 10,)
    ],
  );
}
