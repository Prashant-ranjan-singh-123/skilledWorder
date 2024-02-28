import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:v_bhartiya/authantication/login.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _obscureText1st = true;
  TextEditingController pass1 = TextEditingController();
  TextEditingController pass2 = TextEditingController();

  void sign_up_fun(){
    print(pass1.text);
    print(pass2.text);
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
                  'Create Your\nAccount',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Roboto',
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 20,),
                        const TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.location_history_rounded,color: Colors.grey,),
                              hintText: 'ex: Rohan Singh',
                              hintStyle: TextStyle(
                                  color:Colors.black45,
                                  fontFamily: 'Roboto'
                              ),
                              label: Text('Full Name',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Colors.black,
                                fontFamily: 'Roboto'
                              ),)
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.location_on,color: Colors.grey,),
                              label: Text('State',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Colors.black87,
                              ),)
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.location_city,color: Colors.grey,),
                              label: Text('City',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Colors.black87,
                              ),)
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.pin,color: Colors.grey,),
                              label: Text('Pin Code',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Colors.black87,
                              ),)
                          ),
                        ),
                        const TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.phone_android,color: Colors.grey,),
                              hintText: 'ex: 7967482039',
                              hintStyle: TextStyle(
                                  color:Colors.black45,
                                  fontFamily: 'Roboto'
                              ),
                              label: Text('Phone Number',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Colors.black87,
                              ),)
                          ),
                        ),
                    TextField(
                      obscureText: _obscureText1st,
                      controller: pass1,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: _obscureText1st
                              ? Icon(Icons.visibility_off, color: Colors.grey)
                              : Icon(Icons.visibility, color: Colors.grey),
                          onPressed: () {
                            setState(() {
                              _obscureText1st = !_obscureText1st;
                            });
                          },
                        ),
                        labelText: 'Password',
                        labelStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      onChanged: (value) {
                      },
                    ),
                        const TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
                              label: Text('Confirm Password',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Colors.black87,
                              ),)
                          ),
                        ),
                    
                        const SizedBox(height: 10,),
                        const SizedBox(height: 70,),
                        InkWell(
                          onTap: (){
                            sign_up_fun();
                          },
                          child: Container(
                            height: 55,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color:Color.fromRGBO(64,123,255,0.8),
                              // border: Border.all(color: Colors.black, width: 2),
                            ),
                            child: const Center(child: Text('SIGN UP',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white
                            ),),),
                          ),
                        ),
                        const SizedBox(height: 80,),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text("Have an account?",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey
                              ),),
                              InkWell(
                                onTap: (){
                                  Get.off(const Login(),transition: Transition.fade, duration: Duration(seconds: 1));
                                },
                                child: const Text("Sign In",style: TextStyle(///done login page
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.black
                                ),),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30,)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}