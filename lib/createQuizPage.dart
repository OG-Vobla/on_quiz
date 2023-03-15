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

class CreateQuizPage extends StatefulWidget {
  const CreateQuizPage({super.key});

  @override
  State<CreateQuizPage> createState() => _MyWidgetState();
}

String dropDownValue = categoryList.first;

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
        Padding(padding: EdgeInsets.only(top: 20)),
        Container(
          color: Color.fromARGB(250, 86, 94, 205),
          child: SizedBox(
              width: 100,
              height: 50,
              child: DropdownButton<String>(
                value: dropDownValue,
                style: const TextStyle(color: Colors.white),
                underline: Container(
                  height: 2,
                  color: Colors.white,
                ),
                icon: const Icon(Icons.keyboard_arrow_down_sharp),
                items:
                    categoryList.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                elevation: 10,
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropDownValue = value!;
                  });
                },
              )),
        ),
        Padding(padding: EdgeInsets.only(top: 55)),
      ],
    );
  }
}
