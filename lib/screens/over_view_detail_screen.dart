
import '../screens/jechama_screen.dart';
import '../screens/odu_duri_screen.dart';
import '../screens/uffata_screen.dart';
import 'package:flutter/material.dart';

import 'hibbo_screen.dart';
import 'mamaksa_screen.dart';
import 'nyata_screen.dart';


class OverViewDetailScreen extends StatelessWidget {
  static const routName = '/over-view-detail';
  const OverViewDetailScreen( {super.key});


  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map?;
    final id = args!['id'] as String;
    final title = args['title'] as String;

    final Map<String, WidgetBuilder> screens = {
      'id1': (context) => const HibboScreen(),
      'id2':(context)=>const UffataScreen(),
      'id3': (context) => const NyataScreen(),
      'id4': (context) => const MamaksaScreen(),
      'id5': (context) => const OduDuriScreen(),
      'id6': (context) => const JechamaScreen(),
    };
    final screenBuilder = screens[id];
    if (screenBuilder == null) {
      return  const Scaffold(
        body: Center(
          child: Text('Screen not found.'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: screenBuilder(context),
    );
  }
  }

