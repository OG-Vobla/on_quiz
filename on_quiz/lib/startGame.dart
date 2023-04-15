import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:on_quiz/createQuizPage.dart';

class StartGame extends StatefulWidget {
  const StartGame({super.key});

  @override
  State<StartGame> createState() => _StartGameState();
}

String? nameQuiz;

String? loginUser;

String? countQuestions;

class _StartGameState extends State<StartGame> {
  @override
  Widget build(BuildContext context) {
    nameQuiz = activeQuiz.Name;

loginUser = activeQuiz.UserLogin;

countQuestions = activeQuiz.questions.length.toString();
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
floatingActionButton: IconButton(
  onPressed: () => Navigator.popAndPushNamed(context, '/mainPage'),
  icon: Icon( Icons.arrow_back, size: MediaQuery.of(context).size.height * 0.06, color: Color.fromARGB(255, 207, 217, 255),),
),
        backgroundColor:  Color.fromARGB(250, 93, 108, 215),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.09,
                )),

                
                Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.01)),
                Padding(
                    padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                )),
                                      Padding(
                    padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.045,
                )),
                Container(
                  width: (MediaQuery.of(context).size.width * 0.8),
                  height: MediaQuery.of(context).size.height * 0.4,
                                  decoration: BoxDecoration(
                  color: Color.fromARGB(250, 86, 94, 205),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                alignment: Alignment.center,
                  child: Column(
                    children: [
                      Padding(
                    padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.045,
                )),
                      SizedBox(
                  child: Text(
                    nameQuiz!,
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontFamily: "OpenSans-SemiBold",
                    ),
                  ),
                ),
                           Divider(
                            height: 17,
                            thickness: 2,
              color: Color.fromARGB(207, 255, 255, 255)
            ),
                Padding(
                    padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                )),
                SizedBox(
                  child: Text(
                    "Автор: " + loginUser!,
                    style: TextStyle(
                      fontSize: 19,
                      color: Color.fromARGB(207, 255, 255, 255),
                      fontFamily: "OpenSans-SemiBold",
                    ),
                  ),
                ),
                SizedBox(
                  child: Text(
                    "Категория: " + activeQuiz.Category!,
                    style: TextStyle(
                      fontSize: 19,
                      color: Color.fromARGB(207, 255, 255, 255),
                      fontFamily: "OpenSans-SemiBold",
                    ),
                  ),
                ),
                 SizedBox(
                  child: Text(
                    "Количество вопросов: " + countQuestions!,
                    style: TextStyle(
                      fontSize: 19,
                      color: Color.fromARGB(207, 255, 255, 255),
                      fontFamily: "OpenSans-SemiBold",
                    ),
                  ),
                ),
                SizedBox(
                  child: Text(
                    "Сложность: " + activeQuiz.Difficult!,
                    style: TextStyle(
                      fontSize: 19,
                      color: Color.fromARGB(207, 255, 255, 255),
                      fontFamily: "OpenSans-SemiBold",
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                )),
                ],
                
                  ),
                ),
                
                Padding(
                    padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.10,
                )),
                
                Padding(
                    padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01,
                )),
                SizedBox(
                  child: IconButton(
                      icon: Icon(Icons.play_circle_outline),
                      iconSize: MediaQuery.of(context).size.height * 0.25,
                      color: Color.fromARGB(250, 132, 199, 110),
                      onPressed: () {
                        Navigator.pushNamed(context, '/quizgame');
                      }),
                ),
              ],
            ),
          ),
        ));
  }
}
