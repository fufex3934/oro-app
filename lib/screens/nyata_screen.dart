import 'package:flutter/material.dart';

import '../dummy/nyata_data.dart';
import '../widgets/nyata_item.dart';

class NyataScreen extends StatelessWidget {
  const NyataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemBuilder: (context,index){
            return NyataItem(
                imageUrl: nyata[index].imageUrl,
                title: nyata[index].title,
                description: nyata[index].description,
              source: nyata[index].source,
              dateUsed: nyata[index].dateUse,
            );
          },
        itemCount: nyata.length,
      ),
    );
  }
}
