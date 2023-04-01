import 'package:flutter/material.dart';

class QuizsPage extends StatelessWidget {
  const QuizsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Card quizCard = new Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),

        child: Column(
          children: <Widget>[
            Row(children:  <Widget>[
               ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            tileColor: Color.fromARGB(255, 0, 0, 0),
            title: Text(
              "Название",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "OpenSans-SemiBold",
                  fontSize: 22),
            ),
            subtitle: Text(
              "Пользователь",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "OpenSans-SemiBold",
                  fontSize: 22),
            ),
            trailing: Icon(
              Icons.star,
              color: Color.fromARGB(255, 249, 225, 159),
            ))
            ],),
            Row()
          ],
        )
        );
    return ListView(
      
    );
  }
}
