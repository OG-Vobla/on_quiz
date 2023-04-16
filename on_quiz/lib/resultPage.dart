import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPState();
}

class _ResultPState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
      child: Column(
        children: [
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 249, 225, 159),
                  size: MediaQuery.of(context).size.height * 0.10,
                ),
                Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 249, 225, 159),
                  size: MediaQuery.of(context).size.height * 0.13,
                ),
                Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 249, 225, 159),
                  size: MediaQuery.of(context).size.height * 0.10,
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01)),
          Text(
            "Вы заработали:",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "OpenSans-SemiBold",
              fontSize: MediaQuery.of(context).size.height * 0.03,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05)),
          Container(
            width: (MediaQuery.of(context).size.width * 0.8),
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              color: Color.fromARGB(250, 86, 94, 205),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            alignment: Alignment.center,
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.045,
                )),
                SizedBox(
                  child: Text(
                    "Название викторины",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontFamily: "OpenSans-SemiBold",
                    ),
                  ),
                ),
                Divider(
                    height: 15,
                    thickness: 2,
                    color: Color.fromARGB(207, 255, 255, 255)),
                Padding(
                    padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                )),
                SizedBox(
                  child: Text(
                    "Автор: ",
                    style: TextStyle(
                      fontSize: 19,
                      color: Color.fromARGB(207, 255, 255, 255),
                      fontFamily: "OpenSans-SemiBold",
                    ),
                  ),
                ),
                SizedBox(
                  child: Text(
                    "Категория: ",
                    style: TextStyle(
                      fontSize: 19,
                      color: Color.fromARGB(207, 255, 255, 255),
                      fontFamily: "OpenSans-SemiBold",
                    ),
                  ),
                ),
                SizedBox(
                  child: Text(
                    "Количество вопросов: ",
                    style: TextStyle(
                      fontSize: 19,
                      color: Color.fromARGB(207, 255, 255, 255),
                      fontFamily: "OpenSans-SemiBold",
                    ),
                  ),
                ),
                SizedBox(
                  child: Text(
                    "Сложность: ",
                    style: TextStyle(
                      fontSize: 19,
                      color: Color.fromARGB(207, 255, 255, 255),
                      fontFamily: "OpenSans-SemiBold",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.13,
          )),
        ],
      ),
    ));
  }
}
