import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:v_bhartiya/on_boarding/style.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(241, 237, 247, 1),
        body: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.13,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/onboarding/login.png'),
                  SizedBox(height: 10,),
                  Text('Login', style: TextStyleIs().heading(),),
                  SizedBox(height: 15,),
                  Text('Welcome to our platform! Simply login with your credentials to access a world of possibilities.', style: TextStyleIs().subtitle(), textAlign: TextAlign.center,),
                ],
              )),
            ),
          ],
        )
    );
  }
}
