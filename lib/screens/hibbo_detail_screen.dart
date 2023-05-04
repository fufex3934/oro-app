import 'package:afoola/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import '../dummy/hibbo_question_data.dart';
class HibboDetailScreen extends StatelessWidget {
  static const routName = "/hibbo-detail";

  const HibboDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _selectedTitle =
    ModalRoute.of(context)?.settings.arguments.toString();
    final _selectedQuiz = QUESTIONDATA.firstWhere((qdata) {
      return qdata.title == _selectedTitle;
    });
    final _selectedIndex = QUESTIONDATA.indexOf(_selectedQuiz);

    return Scaffold(
      backgroundColor: const Color(0xffF5F5DC),
      appBar: AppBar(
        title: Text(_selectedQuiz.title),
        centerTitle: true,
        backgroundColor: const Color(0xff2D5B5B),
      ),
      drawer: AppDrawer(),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.only(top: 120.0, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\" ${_selectedQuiz.questions} \"",
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff654321),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Deebii: ",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff654321),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        _selectedQuiz.answers,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff707070),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 48,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff2D5B5B),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32.0,
                      vertical: 16.0,
                    ),
                    textStyle: const TextStyle(fontSize: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                  child: const Text(
                    "Share on Social Media",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  if (_selectedIndex > 0) {
                    Navigator.of(context).pushNamed(
                      HibboDetailScreen.routName,
                      arguments: QUESTIONDATA[_selectedIndex - 1].title,
                    );
                  }
                },
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  if (_selectedIndex < QUESTIONDATA.length - 1) {
                    Navigator.of(context).pushNamed(
                      HibboDetailScreen.routName,
                      arguments: QUESTIONDATA[_selectedIndex + 1].title,
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
