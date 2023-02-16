import 'package:flutter/material.dart';

class ColorService {
  Color primaryColor() {
    return const Color(0xFFF97801);
  }
  LinearGradient inactiveGradient() {
    return const LinearGradient(
      colors: <Color>[
        Color(0xFF6A6A6A),
        Color(0xFF969696),
      ],
    );
  }
}
