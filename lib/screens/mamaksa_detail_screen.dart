import 'package:afoola/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import '../dummy/mamaksa_data.dart';

class MamaksaDetailScreen extends StatefulWidget {
  final String title;

  const MamaksaDetailScreen({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  _MamaksaDetailScreenState createState() => _MamaksaDetailScreenState();
}

class _MamaksaDetailScreenState extends State<MamaksaDetailScreen> {
  int _currentIndex = 0;

  void _goToPreviousTitle() {
    setState(() {
      _currentIndex = (_currentIndex - 1).clamp(0, MAMAKSOTA.length - 1);
    });
  }

  void _goToNextTitle() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % MAMAKSOTA.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: const Text('Mamaksa detail'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: Image.asset(
              'assets/images/om.jpg',
              key: ValueKey<int>(_currentIndex),
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.3,
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                ' " ${MAMAKSOTA[_currentIndex]} "',
                style: const TextStyle(
                  fontSize: 22,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold,
                  color: Color(0xff654321),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 16,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: _goToPreviousTitle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: IconButton(
                  icon: const Icon(Icons.arrow_forward),
                  onPressed: _goToNextTitle,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
