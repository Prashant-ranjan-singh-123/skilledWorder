import 'package:flutter/material.dart';
import 'package:v_bhartiya/on_boarding/style.dart';

class PageFour extends StatelessWidget {
  const PageFour({super.key});

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
                  Image.asset('assets/onboarding/Management.png'),
                  SizedBox(height: 10,),
                  Text('Notification', style: TextStyleIs().heading(),),
                  const SizedBox(height: 15,),
                  Text('Stay informed with personalized notifications tailored to your preferences and never miss important updates or announcements from our platform.', style: TextStyleIs().subtitle(), textAlign: TextAlign.center,),
                ],
              )),
            ),
          ],
        )
    );
  }
}
