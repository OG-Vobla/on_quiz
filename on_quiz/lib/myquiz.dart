import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:on_quiz/authPage.dart';
import 'package:on_quiz/quizClass.dart';

import 'createQuestion.dart';
import 'createQuizPage.dart';

class MyQuizPage extends StatelessWidget {
  const MyQuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    Icon icon = new Icon(
      Icons.star,
      color: Color.fromARGB(255, 249, 225, 159),
      size: 35,
    );
    return  StreamBuilder(
        stream: FirebaseFirestore.instance.collection('quizs').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.data?.docs.length == 0 || !snapshot.hasData) {
            return Text(
              "Нет Записей",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "IMFellGreatPrimerSC-Regular",
                  fontSize: 20),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data?.docs.length,
              itemBuilder: (BuildContext context, int index) {
                GestureDetector card = GestureDetector(
                  onTap: () async {
                    quesIndex = 0;
                    activeQuiz = new Quiz(
                        Category: snapshot.data?.docs[index].get('category'),
                        Difficult: snapshot.data?.docs[index].get('difficult'),
                        Name: snapshot.data?.docs[index].get('name'),
                        UserLogin: snapshot.data?.docs[index].get('userLogin'));
                        List<Question> quess = [];
                    List<dynamic> sdf =
                        snapshot.data?.docs[index].get('questions');
                        final List<Map<String, dynamic>> fooData =
    List.from(sdf.where((x) => x is Map));
    for (var element in fooData) {
      quess.add(Question(discription: element['discription'], answerFour: element['answerFour'], answerOne: element['answerOne'], answerThree: element['answerThree'], answerTwo: element['answerTwo'], correctanswer: element['correctanswer']));
    }
activeQuiz.questions = quess;
discriptionController.text =
        activeQuiz.questions[quesIndex].discription.toString();
    FirstAnswerController.text =
        activeQuiz.questions[quesIndex].answerOne.toString();
    SecondAnswerController.text =
        activeQuiz.questions[quesIndex].answerTwo.toString();
    ThreeAnswerController.text =
        activeQuiz.questions[quesIndex].answerThree.toString();
    FourAnswerController.text =
        activeQuiz.questions[quesIndex].answerFour.toString();
    CorrectAnswerController =
        (activeQuiz.questions[quesIndex].correctanswer.toString() ==
                activeQuiz.questions[quesIndex].answerOne.toString()
            ? answersList[0]
            : activeQuiz.questions[quesIndex].correctanswer.toString() ==
                    activeQuiz.questions[quesIndex].answerTwo.toString()
                ? answersList[1]
                : activeQuiz.questions[quesIndex].correctanswer.toString() ==
                        activeQuiz.questions[quesIndex].answerThree.toString()
                    ? answersList[2]
                    : answersList[3]);
                    questionsCount  = activeQuiz.questions.length;
                    Navigator.pushNamed(context, '/createQuestion').then((value) =>                             FirebaseFirestore.instance
                                .collection('quizs')
                                .doc(snapshot.data?.docs[index].id)
                                .set({
                              'name': activeQuiz.Name,
                              'userLogin': activeQuiz.UserLogin,
                              "category": activeQuiz.Category,
                              "difficult": activeQuiz.Difficult,
                              "questions": FieldValue.arrayUnion(activeQuiz
                                  .questions
                                  .map<Map>((e) => e.toMap())
                                  .toList()),
                            }));
                  },
                  child: new Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(
                          color: Color.fromARGB(255, 86, 94, 205),
                        )),
                    color: Color.fromARGB(255, 86, 94, 205),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    snapshot.data?.docs[index].get('name'),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "OpenSans-SemiBold",
                                      fontSize: 22,
                                    ),
                                  ),
                                )),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: (snapshot.data?.docs[index]
                                                .get('difficult')! ==
                                            "Легкая"
                                        ? icon
                                        : (snapshot.data?.docs[index]
                                                    .get('difficult')! ==
                                                "Средняя"
                                            ? (Row(
                                                children: [icon, icon],
                                              ))
                                            : Row(children: [
                                                icon,
                                                icon,
                                                icon
                                              ])))))
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    snapshot.data?.docs[index].get('userLogin'),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "OpenSans-SemiBold",
                                      fontSize: 22,
                                    ),
                                  ),
                                )),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    snapshot.data?.docs[index].get('category'),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "OpenSans-SemiBold",
                                      fontSize: 22,
                                    ),
                                  ),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                );
                String newStr = snapshot.data?.docs[index].get('userLogin');

                  if (newStr.contains(userLogin)) {
                    return card;
                  }
          
                return Card();
              },
            );
          }
        },
      );
  }
}
