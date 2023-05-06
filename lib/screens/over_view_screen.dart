
import '../widgets/app_drawer.dart';
import '../widgets/over_view_item.dart';
import 'package:flutter/material.dart';

import '../dummy/dummy_data.dart';

class OverViewScreen extends StatelessWidget {
  static const routeName = '/overview-screen';
  const OverViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
            'Afoola Nyaataa fi Uffannaa Oromoo',
          style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 20,
            fontWeight: FontWeight.w900
          ),
        ),
      ),
      drawer: AppDrawer(),
      body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            childAspectRatio: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10

          ),
         children: DUMMY_CATEGORIES.map((catData) {
           return OverViewItems(
               title: catData.title,
               imageUrl: catData.imageUrl,
             id: catData.id,
           );
         }).toList(),
      ),
    );
  }
}
