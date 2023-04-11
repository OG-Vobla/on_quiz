import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:on_quiz/createQuizPage.dart';
import 'package:on_quiz/quizClass.dart';

class CreateQuestion extends StatefulWidget {
  const CreateQuestion({super.key});

  @override
  State<CreateQuestion> createState() => _CreateQuestionState();
}

TextEditingController discriptionController = new TextEditingController();

TextEditingController FirstAnswerController = new TextEditingController();

TextEditingController SecondAnswerController = new TextEditingController();

TextEditingController ThreeAnswerController = new TextEditingController();

TextEditingController FourAnswerController = new TextEditingController();

String? CorrectAnswerController;

List<String?> answersList = [
  "Вариант 1",
  "Вариант 2",
  "Вариант 3",
  "Вариант 4"
];

class _CreateQuestionState extends State<CreateQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(250, 93, 108, 215),
        body: Center(
            child: Column(children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 70)),
          Container(
            child: SizedBox(
              width: 350,
              height: 150,
              child: TextField(
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 4,
                controller: discriptionController,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "OpenSans-SemiBold",
                  fontSize: 22,
                ),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                        width: 0, color: Color.fromARGB(250, 86, 94, 205)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                        width: 0, color: Color.fromARGB(250, 93, 108, 215)),
                  ),
                  filled: true,
                  hintText: "Вопроc " + quesIndex.toString() + "...",
                  fillColor: Color.fromARGB(250, 86, 94, 205),
                  hintStyle: TextStyle(
                      color: Color.fromARGB(250, 250, 250, 250),
                      fontFamily: "OpenSans-SemiBold",
                      fontSize: 22),
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 5)),

          SizedBox(
            height: 400,
            child:           ListView(
            children: [
                        Container(
            child: SizedBox(
              width: 300,
              height: 53,
              child: TextField(
                controller: FirstAnswerController,
                style: TextStyle(
                    color: Color.fromARGB(250, 250, 250, 250),
                    fontFamily: "OpenSans-SemiBold",
                    fontSize: 22),
                cursorColor: Color.fromARGB(250, 250, 250, 250),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 20, 10, 0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                        width: 0, color: Color.fromARGB(250, 93, 108, 215)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                        width: 0, color: Color.fromARGB(250, 93, 108, 215)),
                  ),
                  filled: true,
                  hintText: "Вариант 1",
                  fillColor: Color.fromARGB(250, 86, 94, 205),
                  hintStyle: TextStyle(
                      color: Color.fromARGB(250, 250, 250, 250),
                      fontFamily: "OpenSans-SemiBold",
                      fontSize: 22),
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 30)),
          Container(
            child: SizedBox(
              width: 300,
              height: 53,
              child: TextField(
                controller: SecondAnswerController,
                style: TextStyle(
                    color: Color.fromARGB(250, 250, 250, 250),
                    fontFamily: "OpenSans-SemiBold",
                    fontSize: 22),
                cursorColor: Color.fromARGB(250, 250, 250, 250),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 20, 10, 0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                        width: 0, color: Color.fromARGB(250, 93, 108, 215)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                        width: 0, color: Color.fromARGB(250, 93, 108, 215)),
                  ),
                  filled: true,
                  hintText: "Вариант 2",
                  fillColor: Color.fromARGB(250, 86, 94, 205),
                  hintStyle: TextStyle(
                      color: Color.fromARGB(250, 250, 250, 250),
                      fontFamily: "OpenSans-SemiBold",
                      fontSize: 22),
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 30)),
          Container(
            child: SizedBox(
              width: 300,
              height: 53,
              child: TextField(
                controller: ThreeAnswerController,
                style: TextStyle(
                    color: Color.fromARGB(250, 250, 250, 250),
                    fontFamily: "OpenSans-SemiBold",
                    fontSize: 22),
                cursorColor: Color.fromARGB(250, 250, 250, 250),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 20, 10, 0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                        width: 0, color: Color.fromARGB(250, 93, 108, 215)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                        width: 0, color: Color.fromARGB(250, 93, 108, 215)),
                  ),
                  filled: true,
                  hintText: "Вариант 3",
                  fillColor: Color.fromARGB(250, 86, 94, 205),
                  hintStyle: TextStyle(
                      color: Color.fromARGB(250, 250, 250, 250),
                      fontFamily: "OpenSans-SemiBold",
                      fontSize: 22),
                ),
              ),
            ),
          ),
          Container(
            child: SizedBox(
              width: 300,
              height: MediaQuery.of(context.size.height * 0.05),
              child: TextField(
                controller: FourAnswerController,
                style: TextStyle(
                    color: Color.fromARGB(250, 250, 250, 250),
                    fontFamily: "OpenSans-SemiBold",
                    fontSize: 22),
                cursorColor: Color.fromARGB(250, 250, 250, 250),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 20, 10, 0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                        width: 0, color: Color.fromARGB(250, 93, 108, 215)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                        width: 0, color: Color.fromARGB(250, 93, 108, 215)),
                  ),
                  filled: true,
                  hintText: "Вариант 4",
                  fillColor: Color.fromARGB(250, 86, 94, 205),
                  hintStyle: TextStyle(
                      color: Color.fromARGB(250, 250, 250, 250),
                      fontFamily: "OpenSans-SemiBold",
                      fontSize: 22),
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 40)),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(250, 86, 94, 205)),
            child: SizedBox(
                width: 220,
                height: 57,
                child: DropdownButton<String>(
                    value: CorrectAnswerController,
                    isExpanded: true,
                    underline: Container(
                      height: 0,
                      color: Color.fromARGB(250, 86, 94, 205),
                    ),
                    dropdownColor: Color.fromARGB(250, 86, 94, 205),
                    style: const TextStyle(color: Colors.white, fontSize: 22),
                    icon: const Icon(Icons.keyboard_arrow_down_sharp,
                        color: Color.fromARGB(255, 58, 40, 167)),
                    iconSize: 50,
                    items: answersList
                        .map<DropdownMenuItem<String>>((String? value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Text(value!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: "OpenSans-SemiBold",
                              )),
                        ),
                      );
                    }).toList(),
                    elevation: 20,
                    onChanged: (String? index) {
                      setState(() {
                        CorrectAnswerController = index!;
                      });
                    },
                    hint: Container(
                      margin: EdgeInsets.all(10),
                      child: Text("Ответ",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: "OpenSans-SemiBold",
                          )),
                    )),
                    ),
          ),
          Padding(padding: EdgeInsets.only(top: 40)),
            ],
          ),
          ),
                    Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Color.fromARGB(250, 132, 199, 110),
                  width: 5,
                ),
                color: Color.fromARGB(250, 93, 108, 215)),
            child: SizedBox(
              child: IconButton(
                icon: Icon(Icons.add),
                iconSize: 80,
                color: Color.fromARGB(250, 132, 199, 110),
                onPressed: () {
                  if (discriptionController.text != "" &&
                      FirstAnswerController.text != "" &&
                      SecondAnswerController.text != "" &&
                      ThreeAnswerController.text != "" &&
                      FourAnswerController.text != "" &&
                      CorrectAnswerController != "") {
                    if (CorrectAnswerController == "Вариант 1") {
                      activeQuiz.questions.add(new Question(
                          discription: discriptionController.text,
                          answerOne: FirstAnswerController.text,
                          answerTwo: SecondAnswerController.text,
                          answerThree: ThreeAnswerController.text,
                          answerFour: FourAnswerController.text,
                          correctanswer: FirstAnswerController.text));
                    } else if (CorrectAnswerController == "Вариант 2") {
                      activeQuiz.questions.add(new Question(
                          discription: discriptionController.text,
                          answerOne: FirstAnswerController.text,
                          answerTwo: SecondAnswerController.text,
                          answerThree: ThreeAnswerController.text,
                          answerFour: FourAnswerController.text,
                          correctanswer: SecondAnswerController.text));
                    } else if (CorrectAnswerController == "Вариант 3") {
                      activeQuiz.questions.add(new Question(
                          discription: discriptionController.text,
                          answerOne: FirstAnswerController.text,
                          answerTwo: SecondAnswerController.text,
                          answerThree: ThreeAnswerController.text,
                          answerFour: FourAnswerController.text,
                          correctanswer: ThreeAnswerController.text));
                    } else if (CorrectAnswerController == "Вариант 4") {
                      activeQuiz.questions.add(new Question(
                          discription: discriptionController.text,
                          answerOne: FirstAnswerController.text,
                          answerTwo: SecondAnswerController.text,
                          answerThree: ThreeAnswerController.text,
                          answerFour: FourAnswerController.text,
                          correctanswer: FourAnswerController.text));
                    }
                    if (quesIndex == questionsCount) {
                      FirebaseFirestore.instance
                          .collection('quizs')
                          .doc()
                          .set({
                        'name': activeQuiz.Name,
                        'userLogin': activeQuiz.UserLogin,
                        "category": activeQuiz.Category,
                        "difficult": activeQuiz.Difficult,
                        "questions":
                            FieldValue.arrayUnion(activeQuiz.questions.map<Map>((e)=> e.toMap()).toList()),
                      });
                      Navigator.pushNamed(context, '/mainPage');
                    } else {
                      setState(() {
                        quesIndex = quesIndex! + 1;
                        discriptionController.text = "";
                        FirstAnswerController.text = "";
                        SecondAnswerController.text = "";
                        ThreeAnswerController.text = "";
                        FourAnswerController.text = "";
                      });

                    }

                  }
                },
              ),
            ),
          ),

        ])));
  }
}
