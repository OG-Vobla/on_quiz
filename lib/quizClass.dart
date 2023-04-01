import 'package:flutter/material.dart';

class Quiz {
  String? Name;
  String? UserLogin;
  List<Question> questions = [];
  Quiz({this.Name, this.UserLogin});
}

class Question{
    int? id;
    String? discription;
    String? answerOne;
    String? answerTwo;
    String? answerThree;
    String? answerFour;
    
}