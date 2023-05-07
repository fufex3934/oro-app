import 'package:flutter/material.dart';
import '../dummy/odu_duri_data.dart';
import '../widgets/app_drawer.dart';
import 'odu_duri_detail_screen.dart';

class OduDuriScreen extends StatelessWidget {
  const OduDuriScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      backgroundColor: Colors.grey.shade100,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 16.0),
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Qabiyyee Oduu Durii',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Raleway',
                      color: Theme.of(context).colorScheme.primary,
                      letterSpacing: 3,
                      decoration: TextDecoration.underline
                    ),

                  ),
                  const SizedBox(height: 8.0),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 2.0,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                    child: const SizedBox(height: 8.0),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: ODU_DURI_DATA.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Card(
                    elevation: 5.0,
                    color: Colors.white,
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      title: Text(
                        ODU_DURI_DATA[index].title.toUpperCase(),
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.brown,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>  OduDuriDetailScreen(index: index,),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
