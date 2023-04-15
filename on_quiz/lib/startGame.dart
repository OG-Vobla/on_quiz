import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
        backgroundColor: Color.fromARGB(250, 93, 108, 215),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1,
                )),
                Image.asset(
                  'assets/ques_icon.png',
                  width: MediaQuery.of(context).size.height * 0.15,
                  height: MediaQuery.of(context).size.height * 0.15,
                  fit: BoxFit.cover,
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Text(
                  "ОнКвиз",
                  style: TextStyle(
                      color: Color.fromARGB(250, 249, 225, 159),
                      fontFamily: "OpenSans-SemiBold",
                      fontSize: 24),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.01)),
                Padding(
                    padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                )),
                SizedBox(
                  child: Text(
                    "Название викторины",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontFamily: "OpenSans-SemiBold",
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                )),
                SizedBox(
                  child: Text(
                    "Автор:",
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                      fontFamily: "OpenSans-SemiBold",
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                )),
                SizedBox(
                  child: Text(
                    "Количество вопросов:",
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                      fontFamily: "OpenSans-SemiBold",
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.10,
                )),
                SizedBox(
                  child: Text(
                    "Начать",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontFamily: "OpenSans-SemiBold",
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01,
                )),
                SizedBox(
                  child: IconButton(
                      icon: Icon(Icons.play_circle_outline),
                      iconSize: 170,
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
