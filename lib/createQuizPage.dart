import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:on_quiz/authPage.dart';
import 'package:on_quiz/quizClass.dart';
import 'package:on_quiz/registrationPage.dart';
import 'package:on_quiz/services/model.dart';
import 'package:on_quiz/services/services.dart';

const List<String> categoryList = <String>[
  'Наука',
  'Биология',
  'История',
  'Политика',
  'Игры',
  'Аниме',
  'Кино',
  'Спорт',
  'Сериалы',
  'Книги'
];

const List<String> complexityList = <String>['Легкая', 'Средняя', 'Сложная'];

final CollectionReference collectionReference =
    FirebaseFirestore.instance.collection('Users');

class CreateQuizPage extends StatefulWidget {
  const CreateQuizPage({super.key});

  @override
  State<CreateQuizPage> createState() => _MyWidgetState();
}

String? categoryValue = null;
String? complexity = null;
CollectionReference users = FirebaseFirestore.instance.collection('users');

class _MyWidgetState extends State<CreateQuizPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController quesCountController = new TextEditingController();
    TextEditingController nameController = new TextEditingController();
    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 60)),

        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(250, 86, 94, 205)),
          child: SizedBox(
              width: 300,
              height: 50,
              child: DropdownButton<String>(
                  onTap: () {
                  },
                  value: categoryValue,
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
                  items: categoryList
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Text(value,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontFamily: "OpenSans-SemiBold",
                            )),
                      ),
                    );
                  }).toList(),
                  elevation: 20,
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      categoryValue = value!;
                    });
                  },
                  hint: Container(
                    margin: EdgeInsets.all(10),
                    child: Text("Категория",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: "OpenSans-SemiBold",
                        )),
                  ))),
        ),
        Padding(padding: EdgeInsets.only(top: 30)),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(250, 86, 94, 205)),
          child: SizedBox(
              width: 300,
              height: 50,
              child: DropdownButton<String>(
                  onTap: () {
                  },
                  value: complexity,
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
                  items: complexityList
                      .map<DropdownMenuItem<String>>((String index) {
                    return DropdownMenuItem<String>(
                      value: index,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Text(index,
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
                    String nameQuiz = nameController.text;
                    String count = quesCountController.text;
                    setState(() {
                      complexity = index!;
                    });
                    nameController.text = nameQuiz;
                    quesCountController.text = count;
                  },
                  hint: Container(
                    margin: EdgeInsets.all(10),
                    child: Text("Сложность",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: "OpenSans-SemiBold",
                        )),
                  ))),
        ),
        Padding(padding: EdgeInsets.only(top: 30)),
                Container(
          child: SizedBox(
            width: 300,
            height: 53,
            child: TextField(
              controller: nameController,
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
                hintText: "Название викторины",
                
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
              controller: quesCountController,
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
                hintText: "Количество вопросов",
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
              icon: Icon(Icons.arrow_forward),
              iconSize: 80,
              color: Color.fromARGB(250, 132, 199, 110),
              onPressed: () async {
                String? Login = "";
                QuerySnapshot querySnapshot = await users.get();
                final allData =
                    querySnapshot.docs.map((doc) => doc.data()).toList();
                for (int i = 0; i < allData.length; i++) {
                  if (querySnapshot.docs[i].get('id') == curUser?.id) {
                    Login = querySnapshot.docs[i].get('Login');
                  }
                }
                if (categoryValue != null && complexity != null && nameController.text !="") {
                  questionsCount = int.parse(quesCountController.text);
                  activeQuiz = new Quiz(
                      UserLogin: Login,
                      Category: categoryValue,
                      Name: nameController.text,
                      Difficult: complexity);
                  quesIndex = 1;
                  Navigator.pushNamed(context, "/createQuestion");
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}

int? quesIndex;
int? questionsCount;
Quiz activeQuiz = new Quiz(UserLogin: "", Category: "", Name: "", Difficult: "");
