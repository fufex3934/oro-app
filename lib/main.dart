import 'package:afoola/screens/splash_screen.dart';
import 'package:afoola/screens/uffata_detail_screen.dart';
import 'package:afoola/screens/uffata_screen.dart';

import '../screens/hibbo_detail_screen.dart';
import '../screens/hibbo_screen.dart';
import '../screens/over_view_detail_screen.dart';
import '../screens/over_view_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

     return  MaterialApp(
       title: 'Afoola Oromoo',
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
         colorScheme: ColorScheme.fromSwatch(
           primarySwatch: const MaterialColor(0xFF2D5B5B, <int, Color>{
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
         ).copyWith(secondary: Colors.amber),
         fontFamily: "RobotoCondensed",
       ),
       home:  SplashScreen(),
       routes: {
         HibboScreen.routName: (ctx) => const HibboScreen(),
         HibboDetailScreen.routName: (ctx) => const HibboDetailScreen(),
         OverViewDetailScreen.routName: (ctx) => const OverViewDetailScreen(),
         UffataDetailScreen.routName:(ctx)=>UffataDetailScreen(),
         UffataScreen.routeName:(ctx)=>UffataScreen()
       },
     );

  }
}




