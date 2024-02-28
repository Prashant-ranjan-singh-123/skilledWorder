import 'package:flutter/material.dart';

class TextStyleIs{
  TextStyle skip_and_next() {
    return const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 18,
      color: Colors.white,
      fontFamily: 'DancingScript-SemiBold'
    );
  }

  TextStyle heading() {
    return const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 30,
        fontFamily: 'Oswald',
    );
  }
  TextStyle subtitle() {
    return const TextStyle(
        fontFamily: 'Lora',
        fontWeight: FontWeight.w400,
        fontSize: 15,
    );
  }
}