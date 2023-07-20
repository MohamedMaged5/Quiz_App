import 'package:flutter/material.dart';
import 'package:quizz_app/Global/Global.dart';
import 'package:quizz_app/screens/questions.dart';
import 'package:quizz_app/shared/catocontainer.dart';

class CatoScreen extends StatelessWidget {
  const CatoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CatoContainer(
              ontapfunction: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Questions(
                      quizlist: SportsQuiz,
                      quizcalor: const Color.fromARGB(255, 187, 187, 187),
                      quizname: "Sports Quiz",
                    ),
                  ),
                );
              },
              imagename: "images/sports1.png",
              textofcontainer: "Sports Quiz",
              colorofcontainer: const Color.fromARGB(255, 187, 187, 187),
            ),
            CatoContainer(
              ontapfunction: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Questions(
                      quizcalor: const Color.fromARGB(255, 255, 212, 0),
                      quizname: "History Quiz",
                      quizlist: HistoryQuiz,
                    ),
                  ),
                );
              },
              imagename: "images/history1.png",
              textofcontainer: "History Quiz",
              colorofcontainer: const Color.fromARGB(255, 255, 212, 0),
            ),
            CatoContainer(
              ontapfunction: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Questions(
                      quizcalor: const Color.fromARGB(255, 187, 187, 187),
                      quizname: "Geogriaphy Quiz",
                      quizlist: GeoQuiz,
                    ),
                  ),
                );
              },
              imagename: "images/geo1.png",
              textofcontainer: "Geogriaphy Quiz",
              colorofcontainer: const Color.fromARGB(255, 187, 187, 187),
            )
          ],
        ),
      ),
    );
  }
}
