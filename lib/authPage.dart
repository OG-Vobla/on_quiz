import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:on_quiz/registrationPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});
  @override
  State<AuthPage> createState() => _MyAuthPageState();
}

class _MyAuthPageState extends State<AuthPage> {
  final Login = TextEditingController();
  final Password = TextEditingController();

  @override
  void dispose() {
    Login.dispose();
    Password.dispose();
    super.dispose();
  }

  void initFirebase() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }

  @override
  void initState() {
    super.initState();
    initFirebase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(250, 93, 108, 215),
      body: Center(
        child: Column(
          children: [
            Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 62)),
                Image.asset(
                  'assets/ques_icon.png',
                  width: 115,
                  height: 115,
                  fit: BoxFit.cover,
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Text(
                  "ОнКвиз",
                  style: TextStyle(
                      color: Color.fromARGB(250, 249, 225, 159),
                      fontFamily: "OpenSans-SemiBold",
                      fontSize: 24),
                ),
                Padding(padding: EdgeInsets.only(top: 60)),
                Text(
                  "Авторизация",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "OpenSans-SemiBold",
                      fontSize: 32),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Container(
                  child: SizedBox(
                    width: 246,
                    height: 53,
                    child: TextField(
                      style: TextStyle(
                          color: Color.fromARGB(200, 40, 49, 73),
                          fontFamily: "OpenSans-SemiBold",
                          fontSize: 22),
                      controller: Login,
                      cursorColor: Color.fromARGB(6, 160, 160, 160),
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
                        hintText: "Логин",
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        hintStyle: TextStyle(
                            color: Color.fromARGB(105, 40, 49, 73),
                            fontFamily: "OpenSans-SemiBold",
                            fontSize: 22),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Container(
                  child: SizedBox(
                    width: 246,
                    height: 53,
                    child: TextField(
                      controller: Password,
                      style: TextStyle(
                          color: Color.fromARGB(200, 40, 49, 73),
                          fontFamily: "OpenSans-SemiBold",
                          fontSize: 22),
                      cursorColor: Color.fromARGB(6, 160, 160, 160),
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
                        hintText: "Пароль",
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        hintStyle: TextStyle(
                            color: Color.fromARGB(105, 40, 49, 73),
                            fontFamily: "OpenSans-SemiBold",
                            fontSize: 22),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 55)),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/mainPage');
                    },
                    child: Text(
                      "Войти",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "OpenSans-SemiBold",
                          fontSize: 18),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 58, 40, 167)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ))),
                  ),
                  height: 37,
                  width: 100,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: 10)),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/regPage');
                  },
                  child: Text(
                    "Регистрация",
                    style: TextStyle(
                        color: Color.fromARGB(170, 255, 255, 255),
                        fontFamily: "OpenSans-SemiBold",
                        fontSize: 16,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
