import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:developer';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';

import 'Pages/page_1.dart';
import 'Pages/page_2.dart';
import 'Pages/page_3.dart';
import 'Pages/page_4.dart';

class MainScreenUser extends StatefulWidget {

  @override
  State<MainScreenUser> createState() => _MainScreenUserState();
}

class _MainScreenUserState extends State<MainScreenUser> {
  final _pageController = PageController(initialPage: 0);
  final _controller = NotchBottomBarController(index: 0);
  int maxCount = 4;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<Widget> bottomBarPages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(64,123,255,1),
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      appBar: AppBar(title: const Text('FlutterforGeeks')),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
          bottomBarPages.length,
              (index) => bottomBarPages[index],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: bottomBarPages.length <= maxCount
          ? AnimatedNotchBottomBar(
        notchBottomBarController: _controller,
        color: Color.fromRGBO(64,123,255,1),
        showLabel: false,
        notchColor: const Color.fromRGBO(7,15,43,1),
        removeMargins: false,
        bottomBarWidth: 400,
        durationInMilliSeconds: 400,
        showShadow: true,
        bottomBarItems: const [
          BottomBarItem(
            inActiveItem: Padding(
              padding: EdgeInsets.only(bottom: 4.0),
              child: Icon(
                Icons.home_filled,
                color: Colors.black87,
              ),
            ),
            activeItem: Icon(
              Icons.home_filled,
              color: Colors.white,
            ),
            itemLabel: 'Page 1',
          ),
          BottomBarItem(
            inActiveItem: Padding(
              padding: EdgeInsets.only(bottom: 4.0),
              child: Icon(
                Icons.notifications,
                color: Colors.black87,
              ),
            ),
            activeItem: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            itemLabel: 'Page 2',
          ),
          BottomBarItem(
            inActiveItem: Padding(
              padding: EdgeInsets.only(bottom: 4.0),
              child: Icon(
                Icons.payment_rounded,
                color: Colors.black87,
              ),
            ),
            activeItem: Icon(
              Icons.payment_rounded,
              color: Colors.white,
            ),
            itemLabel: 'Page 3',
          ),
          BottomBarItem(
            inActiveItem: Padding(
              padding: EdgeInsets.only(bottom: 4.0),
              child: Icon(
                Icons.face,
                color: Colors.black87,
              ),
            ),
            activeItem: Icon(
              Icons.face,
              color: Colors.white,
            ),
            itemLabel: 'Page 4',
          ),
        ],
        onTap: (index) {
          log('current selected index $index');
          _pageController.jumpToPage(index);
        },
        kIconSize: 1.2,
        kBottomRadius: 6,
      )
          : null,
    );
  }
}
