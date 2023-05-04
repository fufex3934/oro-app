import '../dummy/uffata_data.dart';
import '../widgets/app_drawer.dart';
import '../widgets/uffata_item.dart';
import 'package:flutter/material.dart';

class UffataScreen extends StatelessWidget {
  static const routeName = 'uffata-screen';
  const UffataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: AppDrawer(),
      body: ListView.builder(
          itemBuilder: (context,index){
            return UffataItem(
                imageUrl: uffata[index].imageUrl,
                description: uffata[index].description,
                uses: uffata[index].uses,
                source: uffata[index].source
            );
          },
        itemCount: uffata.length,
      )
    );
  }
}
