import 'package:flutter/material.dart';
import 'package:v_bhartiya/on_boarding/style.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

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
                  Image.asset('assets/onboarding/Payment.png'),
                  SizedBox(height: 10,),
                  Text('Payment', style: TextStyleIs().heading(),),
                  const SizedBox(height: 15,),
                  Text('Explore our diverse range of payment plans, each designed to provide flexibility and cater to your specific needs and preferences.', style: TextStyleIs().subtitle(), textAlign: TextAlign.center,),
                ],
              )),
            ),
          ],
        )
    );
  }
}
