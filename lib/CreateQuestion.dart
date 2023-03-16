import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateQuestion extends StatefulWidget {
  const CreateQuestion({super.key});

  @override
  State<CreateQuestion> createState() => _CreateQuestionState();
}

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
              height: 250,
              child: TextField(
                keyboardType: TextInputType.multiline,
                expands: true,
                maxLines: null,
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
                  hintText: "Вопрос...",
                  fillColor: Color.fromARGB(250, 86, 94, 205),
                  hintStyle: TextStyle(
                      color: Color.fromARGB(250, 250, 250, 250),
                      fontFamily: "OpenSans-SemiBold",
                      fontSize: 22),
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 50)),
          Container(
            child: SizedBox(
              width: 300,
              height: 53,
              child: TextField(
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
                  hintText: "Ответ 1",
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
                  hintText: "Ответ 2",
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
                  hintText: "Ответ 3",
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
                  hintText: "Ответ 4",
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
                onPressed: () {},
              ),
            ),
          ),
        ])));
  }
}
