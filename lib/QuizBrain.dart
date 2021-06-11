import 'question.dart';

class QuizBrain {
  List<Question> _questionBank = [
    Question(questionText: "Question 1", questionAnswer: true),
    Question(questionText: "Question 2", questionAnswer: false),
    Question(questionText: "Question 3", questionAnswer: true),
    Question(questionText: "Question 4", questionAnswer: false),
    Question(questionText: "Question 5", questionAnswer: true),
    Question(questionText: "Question 6", questionAnswer: false),
  ];

  String getQuestionText(int num) {
    return _questionBank[num].questionText;
  }

  bool getQuestionAnswer(int ans) {
    return _questionBank[ans].questionAnswer;
  }
}
