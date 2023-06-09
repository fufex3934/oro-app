import 'package:afoola/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class UffataDetailScreen extends StatelessWidget {
  static const routName = 'uffata-detail';

  @override
  Widget build(BuildContext context) {
    final _args = ModalRoute.of(context)?.settings.arguments as Map?;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              image: DecorationImage(
                image: AssetImage(_args!['image']),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: MediaQuery.of(context).padding.top + 10,
                  left: 10,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Card(
                elevation: 7,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _args['description'],
                        style: const TextStyle(
                          fontSize: 24,
                          fontFamily: 'Pacifico',
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          Icon(
                            Icons.check_circle,
                            size: 20,
                            color: Colors.green,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Guyyaa Ayyaanaaf",
                            style:  TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          Icon(
                            Icons.check_circle,
                            size: 20,
                            color: Colors.red,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Fuudhaaf Heerumaaf',
                            style:  TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: Row(
                          children: const [
                            Icon(
                              Icons.check_circle,
                              size: 20,
                              color: Colors.green,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Kabaja Guyyaa Dhalootaaf",
                              style:  TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
