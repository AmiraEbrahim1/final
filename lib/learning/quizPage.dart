import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    List options = ['Variable', 'Pendulum', 'Cycle', 'Circle'];
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromRGBO(6, 37, 55, 1),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          children: [
            SizedBox(
              height: 51,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 22, top: 12),
                  child: Icon(
                    CupertinoIcons.arrow_left,
                    size: 20,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                const SizedBox(
                  width: 134,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Text(
                    'QUIZ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Disengaged',
                      color: Color(0xff868686),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 75,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Container(
                height: 50,
                width: 343,
                child: Text(
                  'What is any motion that repeats itself?',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Google Sans',
                      color: Color(0xffFFFFFF)),
                ),
              ),
            ),
            SizedBox(
              height: 43,
            ),
            for (int i = 0; i < 4; i++)
              Padding(
                padding: const EdgeInsets.only(left: 45, right: 45, bottom: 44),
                child: Container(
                  height: 57,
                  width: 343,
                  color: Color(0xff103444),
                  child: Center(
                    child: Text(
                      options[i],
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Google Sans',
                          color: Color(0xffFFFFFF)),
                    ),
                  ),
                ),
              ),
            SizedBox(height: 44),
            GestureDetector(
              onTap: () {},
              child: Center(
                child: Container(
                  height: 56,
                  width: 311,

                  // color: Colors.red,
                  child: Container(
                    height: 30,
                    width: 311,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(96),
                      color: Color(0xff21C4A7),
                    ),
                    child: const Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}






























// import 'package:flutter/material.dart';

// class QuizPage extends StatefulWidget {
//   const QuizPage({super.key});

//   @override
//   State<QuizPage> createState() => _QuizPageState();
// }

// class _QuizPageState extends State<QuizPage> {
//   final _questions = const [
//     {
//       'questionText': 'Q1. Who created Flutter?',
//       'answers': [
//         {'text': 'Facebook', 'score': -2},
//         {'text': 'Adobe', 'score': -2},
//         {'text': 'Google', 'score': 10},
//         {'text': 'Microsoft', 'score': -2},
//       ],
//     },
//     {
//       'questionText': 'Q2. What is Flutter?',
//       'answers': [
//         {'text': 'Android Development Kit', 'score': -2},
//         {'text': 'IOS Development Kit', 'score': -2},
//         {'text': 'Web Development Kit', 'score': -2},
//         {
//           'text':
//               'SDK to build beautiful IOS, Android, Web & Desktop Native Apps',
//           'score': 10
//         },
//       ],
//     },
//     {
//       'questionText': ' Q3. Which programing language is used by Flutter',
//       'answers': [
//         {'text': 'Ruby', 'score': -2},
//         {'text': 'Dart', 'score': 10},
//         {'text': 'C++', 'score': -2},
//         {'text': 'Kotlin', 'score': -2},
//       ],
//     },
//     {
//       'questionText': 'Q4. Who created Dart programing language?',
//       'answers': [
//         {'text': 'Lars Bak and Kasper Lund', 'score': 10},
//         {'text': 'Brendan Eich', 'score': -2},
//         {'text': 'Bjarne Stroustrup', 'score': -2},
//         {'text': 'Jeremy Ashkenas', 'score': -2},
//       ],
//     },
//     {
//       'questionText':
//           'Q5. Is Flutter for Web and Desktop available in stable version?',
//       'answers': [
//         {
//           'text': 'Yes',
//           'score': -2,
//         },
//         {'text': 'No', 'score': 10},
//       ],
//     },
//   ];

//   var _questionIndex = 0;
//   var _totalScore = 0;

//   void _resetQuiz() {
//     setState(() {
//       _questionIndex = 0;
//       _totalScore = 0;
//     });
//   }

//   void _answerQuestion(int score) {
//     _totalScore += score;

//     setState(() {
//       _questionIndex = _questionIndex + 1;
//     });
//     // ignore: avoid_print
//     print(_questionIndex);
//     if (_questionIndex < _questions.length) {
//       // ignore: avoid_print
//       print('We have more questions!');
//     } else {
//       // ignore: avoid_print
//       print('No more questions!');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Geeks for Geeks'),
//           backgroundColor: const Color(0xFF00E676),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(30.0),
//                 child: _questionIndex < _questions.length
//                     ? Quiz(
//                         answerQuestion: _answerQuestion,
//                         questionIndex: _questionIndex,
//                         questions: _questions,
//                       ) //Quiz
//                     : Result(_totalScore, _resetQuiz),
//               ),
//             ],
//           ),
//         ), //Padding
//       ), //Scaffold
//       debugShowCheckedModeBanner: false,
//     ); //MaterialApp
//   }
// }

// class Quiz extends StatelessWidget {
//   final List<Map<String, Object>> questions;
//   final int questionIndex;
//   final Function answerQuestion;

//   const Quiz({
//     Key? key,
//     required this.questions,
//     required this.answerQuestion,
//     required this.questionIndex,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Question(
//           questions[questionIndex]['questionText'].toString(),
//         ), //Question
//         ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
//             .map((answer) {
//           return Answer(
//               () => answerQuestion(answer['score']), answer['text'].toString());
//         }).toList()
//       ],
//     ); //Column
//   }
// }

// class Question extends StatelessWidget {
//   final String questionText;

//   const Question(this.questionText, {Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       margin: const EdgeInsets.all(10),
//       child: Text(
//         questionText,
//         style: const TextStyle(fontSize: 28),
//         textAlign: TextAlign.center,
//       ), //Text
//     ); //Container
//   }
// }

// class Answer extends StatelessWidget {
//   final Function selectHandler;
//   final String answerText;

//   const Answer(this.selectHandler, this.answerText, {Key? key})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // use SizedBox for white space instead of Container
//     return SizedBox(
//       width: double.infinity,
//       child: ElevatedButton(
//         onPressed: selectHandler(),
//         style: ButtonStyle(
//             textStyle:
//                 MaterialStateProperty.all(const TextStyle(color: Colors.white)),
//             backgroundColor: MaterialStateProperty.all(Colors.green)),
//         child: Text(answerText),
//       ),

//       // RaisedButton is deprecated and should not be used
//       // Use ElevatedButton instead

//       // child: RaisedButton(
//       //   color: const Color(0xFF00E676),
//       //   textColor: Colors.white,
//       //   onPressed: selectHandler(),
//       //   child: Text(answerText),
//       // ), //RaisedButton
//     ); //Container
//   }
// }

// class Result extends StatelessWidget {
//   final int resultScore;
//   final Function resetHandler;

//   const Result(this.resultScore, this.resetHandler, {Key? key})
//       : super(key: key);

//   //Remark Logic
//   String get resultPhrase {
//     String resultText;
//     if (resultScore >= 41) {
//       resultText = 'You are awesome!';
//       print(resultScore);
//     } else if (resultScore >= 31) {
//       resultText = 'Pretty likeable!';
//       print(resultScore);
//     } else if (resultScore >= 21) {
//       resultText = 'You need to work more!';
//     } else if (resultScore >= 1) {
//       resultText = 'You need to work hard!';
//     } else {
//       resultText = 'This is a poor score!';
//       print(resultScore);
//     }
//     return resultText;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text(
//             resultPhrase,
//             style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
//             textAlign: TextAlign.center,
//           ), //Text
//           Text(
//             'Score ' '$resultScore',
//             style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
//             textAlign: TextAlign.center,
//           ), //Text
//           TextButton(
//             onPressed: resetHandler(),
//             child: Container(
//               color: Colors.green,
//               padding: const EdgeInsets.all(14),
//               child: const Text(
//                 'Restart Quiz',
//                 style: TextStyle(color: Colors.blue),
//               ),
//             ),
//           ),
//           // FlatButton is deprecated and should not be used
//           // Use TextButton instead

//           // FlatButton(
//           //   child: Text(
//           //     'Restart Quiz!',
//           //   ), //Text
//           //   textColor: Colors.blue,
//           //   onPressed: resetHandler(),
//           // ), //FlatButton
//         ], //<Widget>[]
//       ), //Column
//     ); //Center
//   }
// }
