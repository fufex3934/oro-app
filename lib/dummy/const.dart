
import 'package:flutter/material.dart';

final primaryColors = ColorScheme.fromSwatch(
  primarySwatch:  const MaterialColor(0xFF2D5B5B, <int, Color>{
    50: Color(0xFFE4F4F4),
    100: Color(0xFFBCE2E2),
    200: Color(0xFF8FCECF),
    300: Color(0xFF62BABD),
    400: Color(0xFF3DA6A9),
    500: Color(0xFF2D5B5B), // Primary color
    600: Color(0xFF206C6C),
    700: Color(0xFF175E5E),
    800: Color(0xFF0D5050),
    900: Color(0xFF004040),
  }),
).copyWith(secondary: Colors.amber);