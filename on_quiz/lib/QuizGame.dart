import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<GamePage> {
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
              height: MediaQuery.of(context).size.height * 0.2,
              child: TextField(
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 4,
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
                  hintText: "Вопроc ",
                  fillColor: Color.fromARGB(250, 86, 94, 205),
                  hintStyle: TextStyle(
                      color: Color.fromARGB(250, 250, 250, 250),
                      fontFamily: "OpenSans-SemiBold",
                      fontSize: 22),
                ),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.02,
          )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              children: [
                Container(
                  child: SizedBox(
                    width: 300,
                    height: MediaQuery.of(context).size.height * 0.07,
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
                              width: 0,
                              color: Color.fromARGB(250, 93, 108, 215)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                              width: 0,
                              color: Color.fromARGB(250, 93, 108, 215)),
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
                Padding(
                    padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                )),
                Container(
                  child: SizedBox(
                    width: 300,
                    height: MediaQuery.of(context).size.height * 0.07,
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
                              width: 0,
                              color: Color.fromARGB(250, 93, 108, 215)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                              width: 0,
                              color: Color.fromARGB(250, 93, 108, 215)),
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
                Padding(
                    padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                )),
                Container(
                  child: SizedBox(
                    width: 300,
                    height: MediaQuery.of(context).size.height * 0.07,
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
                              width: 0,
                              color: Color.fromARGB(250, 93, 108, 215)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                              width: 0,
                              color: Color.fromARGB(250, 93, 108, 215)),
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
                Padding(
                    padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                )),
                Container(
                  child: SizedBox(
                    width: 300,
                    height: MediaQuery.of(context).size.height * 0.07,
                    // height: MediaQuery.of(context.size.height * 0.05),
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
                              width: 0,
                              color: Color.fromARGB(250, 93, 108, 215)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                              width: 0,
                              color: Color.fromARGB(250, 93, 108, 215)),
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
                Padding(
                    padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                )),
              ],
            ),
          ),
          Container(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              child: IconButton(
                  icon: Icon(Icons.arrow_circle_left),
                  iconSize: 80,
                  color: Color.fromARGB(250, 132, 199, 110),
                  onPressed: () {}),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              child: IconButton(
                  icon: Icon(Icons.arrow_circle_right),
                  iconSize: 80,
                  color: Color.fromARGB(250, 132, 199, 110),
                  onPressed: () {}),
            )
          ]))
        ])));
  }
}
