import '../dummy/const.dart';
import '../screens/over_view_screen.dart';

import '../screens/nyata_detail_screen.dart';
import '../screens/splash_screen.dart';
import '../screens/uffata_detail_screen.dart';
import '../screens/uffata_screen.dart';

import '../screens/hibbo_detail_screen.dart';
import '../screens/hibbo_screen.dart';
import '../screens/over_view_detail_screen.dart';
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
         colorScheme: primaryColors,
         fontFamily: "RobotoCondensed",
       ),
       home:  const SplashScreen(),
       routes: {
         HibboScreen.routName: (ctx) => const HibboScreen(),
         HibboDetailScreen.routName: (ctx) => const HibboDetailScreen(),
         OverViewDetailScreen.routName: (ctx) => const OverViewDetailScreen(),
         UffataDetailScreen.routName:(ctx)=>UffataDetailScreen(),
         UffataScreen.routeName:(ctx)=>const UffataScreen(),
         NyataDetailScreen.routeName:(ctx)=>const NyataDetailScreen(),
         OverViewScreen.routeName:(ctx)=>const OverViewScreen()
       },
     );

  }
}




