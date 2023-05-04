import '../screens/hibbo_detail_screen.dart';
import 'package:flutter/material.dart';

import '../dummy/hibbo_question_data.dart';
import '../widgets/hibbo_item.dart';
class HibboScreen extends StatelessWidget {
  static const routName = '/hibbo-screen';
  const HibboScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white30,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  height: 300,
                  child: Image.asset(
                    "assets/images/tapha.jpg",
                    fit: BoxFit.cover,
                    width: double.infinity,

                  )
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: QUESTIONDATA.map((qdata) {
                  return GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(
                          context,
                          HibboDetailScreen.routName,
                          arguments: qdata.title
                      );
                    },
                    child: HibboItem(
                      title: qdata.title,
                      question: qdata.questions,

                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        )
    );
  }
}

