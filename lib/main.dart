import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'authPage.dart';
import 'registrationPage.dart';
import 'mainPage.dart';
import 'myquiz.dart';
import 'CreateQuestion.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyThemeApp());
}

class MyThemeApp extends StatelessWidget {
  const MyThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthPage(),
        '/regPage': (context) => const RegistrationPage(),
        '/mainPage': (context) => const MainPage(),
        '/myquiz': (context) => const MyQuizPage(),
        '/CreateQuestion': (context) => const CreateQuestion(),
      },
    );
  }
}
