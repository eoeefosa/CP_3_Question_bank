import 'package:flutter/material.dart';
import 'QuizBrain.dart';

QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenMain(),
    );
  }
}

class ScreenMain extends StatefulWidget {
  const ScreenMain({Key key}) : super(key: key);

  @override
  _ScreenMainState createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  List<Icon> scoreKeeper = [];

  int index = 0;
  // List<String> questions = [
  //   "question 1",
  //   "question 2",
  //   "question 3",
  //   "question 4",
  //   "question 5",
  //   "question 6",
  // ];
  // List<bool> answer = [
  //   true,
  //   false,
  //   true,
  //   false,
  //   true,
  //   false,
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    // questions[index],
                    // quizBrain.questionBank[index].questionText,
                    quizBrain.getQuestionText(index),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                // ignore: deprecated_member_use
                child: TextButton(
                  style: TextButton.styleFrom(primary: Colors.green),
                  onPressed: () {
                    setState(() {
                      // scoreKeeper.add(
                      //   Icon(
                      //     Icons.check,
                      //     color: Colors.green,
                      //   ),
                      // );
                      bool correctAns =
                          // quizBrain.questionBank[index].questionAnswer;
                          quizBrain.getQuestionAnswer(index);

                      if (correctAns == true) {
                        scoreKeeper.add(Icon(
                          Icons.check,
                          color: Colors.green,
                        ));
                      } else {
                        scoreKeeper.add(Icon(
                          Icons.close,
                          color: Colors.red,
                        ));
                      }
                    });

                    index += 1;
                  },
                  child: Text(
                    "Yes",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                // ignore: deprecated_member_use
                child: TextButton(
                  style: TextButton.styleFrom(primary: Colors.red),
                  onPressed: () {
                    setState(() {
                      // scoreKeeper.add(
                      //   Icon(
                      //     Icons.close,
                      //     color: Colors.red,
                      //   ),
                      // );

                      bool correctAns =
                          // quizBrain.questionBank[index].questionAnswer;
                          quizBrain.getQuestionAnswer(index);
                      if (correctAns == false) {
                        scoreKeeper.add(Icon(
                          Icons.check,
                          color: Colors.green,
                        ));
                      } else {
                        scoreKeeper.add(Icon(
                          Icons.close,
                          color: Colors.red,
                        ));
                      }
                    });

                    index += 1;
                  },
                  child: Text(
                    "False",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: scoreKeeper,
              ),
            )
          ],
        ),
      ),
    );
  }
}
