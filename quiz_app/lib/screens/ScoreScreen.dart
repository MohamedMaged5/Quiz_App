import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/Global/Global.dart';
import 'package:quizz_app/Screens/OpeningScreen.dart';

class ScoreScreen extends StatelessWidget {
  final int index;
  final int score;

  const ScoreScreen({super.key, required this.index, required this.score});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  opacity: 0.2,
                  fit: BoxFit.cover,
                  image: AssetImage("images/open1.png"),
                ),
                color: Color.fromARGB(255, 187, 187, 187),
              ),
              child: Center(
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(fontSize: 30, color: Colors.black),
                    children: [
                      const TextSpan(text: "Hello "),
                      TextSpan(
                        text: usernamecontroll.text,
                        style: GoogleFonts.caveat(
                            fontWeight: FontWeight.bold, fontSize: 32),
                      ),
                      TextSpan(text: "  your score is $score/${index + 1}"),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.7),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  elevation: 15,
                  shadowColor: Colors.black,
                  backgroundColor: const Color.fromARGB(255, 255, 212, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OpeningScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Quiz again",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
