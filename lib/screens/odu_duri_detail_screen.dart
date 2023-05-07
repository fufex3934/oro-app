import 'package:flutter/material.dart';
import '../dummy/odu_duri_data.dart';

class OduDuriDetailScreen extends StatefulWidget {
  final int index;

  const OduDuriDetailScreen({Key? key, required this.index}) : super(key: key);

  @override
  _OduDuriDetailScreenState createState() => _OduDuriDetailScreenState();
}

class _OduDuriDetailScreenState extends State<OduDuriDetailScreen> {
  bool _showFullDescription = false;

  void _toggleDescription() {
    setState(() {
      _showFullDescription = !_showFullDescription;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/oda.jpg',
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 20,
                  left: 10,
                  child: IconButton(
                    icon:  Icon(
                        Icons.arrow_back_ios,
                        color:Theme.of(context).colorScheme.primary
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    ODU_DURI_DATA[widget.index].title,
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Pacifico',
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    _showFullDescription
                        ? ODU_DURI_DATA[widget.index].describtion
                        : ODU_DURI_DATA[widget.index].describtion.split('\n').take(10).join('\n'),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.primary,
                      decoration: TextDecoration.none,
                      height: 1.5,
                      letterSpacing: 0.5,
                    ),
                  ),
                  if (!_showFullDescription)
                    GestureDetector(
                      onTap: _toggleDescription,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          'Read More',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
