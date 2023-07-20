import 'package:flutter/material.dart';
import 'package:quizz_app/Screens/OpeningScreen.dart';
import 'package:quizz_app/screens/ScoreScreen.dart';

class Questions extends StatefulWidget {
  final String? quizname;
  final Color? quizcalor;
  final List quizlist;
  const Questions(
      {super.key, this.quizcalor, this.quizname, required this.quizlist});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  int index = 0;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const OpeningScreen(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
          ),
          backgroundColor: widget.quizcalor,
          title: Center(
            child: Column(
              children: [
                Text(
                  "${widget.quizname}",
                  style: const TextStyle(color: Colors.black),
                ),
                Text(
                  "${index + 1}/${widget.quizlist.length}",
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                )
              ],
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("images/openlogo.png"),
            ),
          ],
        ),
        body: Column(
          //  mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 1 / 4,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  opacity: 0.2,
                  fit: BoxFit.cover,
                  image: AssetImage("images/q1.png"),
                ),
                color: Color.fromARGB(255, 229, 225, 225),
              ),
              child: Center(
                child: Text(
                  widget.quizlist[index]["question"],
                  style: const TextStyle(fontSize: 25),
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 1 / 10,
                  ),
                  for (int i = 0;
                      i < (widget.quizlist[index]["answer"] as List).length;
                      i++)
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 9,
                        shadowColor: Colors.black,
                        backgroundColor: widget.quizcalor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        score = score +
                                (widget.quizlist[index]["answer"][i]["score"])
                            as int;
                        if (index == widget.quizlist.length - 1) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ScoreScreen(index: index, score: score),
                            ),
                          );
                        } else {
                          setState(() {
                            index++;
                          });
                        }
                      },
                      child: Text(
                        widget.quizlist[index]["answer"][i]["ans"],
                        style:
                            const TextStyle(color: Colors.black, fontSize: 20),
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
