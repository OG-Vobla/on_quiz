import 'package:flutter/material.dart';

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

const List<String> complexityList = <String>['Легкий', 'Средний', 'Сложный'];

class CreateQuizPage extends StatefulWidget {
  const CreateQuizPage({super.key});

  @override
  State<CreateQuizPage> createState() => _MyWidgetState();
}

String categoryValue = categoryList.first;
String complexity = complexityList.first;

class _MyWidgetState extends State<CreateQuizPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 60)),
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
                hintText: "Название",
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
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(250, 86, 94, 205)),
          child: SizedBox(
              width: 220,
              height: 50,
              child: DropdownButton<String>(
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
                items:
                    categoryList.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(value),
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
              )),
        ),
        Padding(padding: EdgeInsets.only(top: 30)),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(250, 86, 94, 205)),
          child: SizedBox(
              width: 190,
              height: 50,
              child: DropdownButton<String>(
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
                      child: Text(index),
                    ),
                  );
                }).toList(),
                elevation: 20,
                onChanged: (String? index) {
                  // This is called when the user selects an item.
                  setState(() {
                    complexity = index!;
                  });
                },
              )),
        ),
        Padding(padding: EdgeInsets.only(top: 30)),
        Container(
          child: SizedBox(
            width: 100,
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
                hintText: "Кол",
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
              onPressed: () {
                Navigator.pushNamed(context, '/CreateQuestion');
              },
            ),
          ),
        ),
      ],
    );
  }
}
