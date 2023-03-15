import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final"

  @override
  State<RegistrationPage> createState() => _MyRegistrationPageState();
}

class _MyRegistrationPageState extends State<RegistrationPage> {
  final Login = TextEditingController();
final Password = TextEditingController();
final RepeatPassword = TextEditingController();
final Phone = TextEditingController();
final Email = TextEditingController();

  @override
  void dispose() {
    Login.dispose();
    Password.dispose();
    RepeatPassword.dispose();
    Phone.dispose();
    Email.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color.fromARGB(250, 93, 108, 215),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.arrow_back), onPressed: () {
          Navigator.popAndPushNamed(context, '/');
      },
      backgroundColor: Colors.transparent,
      elevation: 0.0,),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: Center(
        child: Column(
          children: [
            
            Column(

              children:<Widget> [ 
             Padding(padding: EdgeInsets.only(top: 62)),
             Padding(padding: EdgeInsets.only(top: 60)),
            Text(
              "Регистрация",
              style: TextStyle(color: Colors.white, fontFamily: "OpenSans-SemiBold", fontSize: 32),),
                         Padding(padding: EdgeInsets.only(top: 30)),
            Container(
                child: SizedBox(
                width: 246,
                height: 53,
                child:  TextField(
                  style:  TextStyle(color: Color.fromARGB(200, 40, 49, 73), fontFamily: "OpenSans-SemiBold", fontSize: 22),
                  controller: Login,
                  cursorColor: Color.fromARGB(6, 160, 160, 160),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 20, 10, 0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(width: 0, color: Color.fromARGB(250, 93, 108, 215)),
                  ),
                     focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(width: 0, color: Color.fromARGB(250, 93, 108, 215)),
                  ),
                filled: true,
                hintText: "Логин",
                fillColor: Color.fromARGB(255, 255, 255, 255),
                hintStyle: TextStyle(color: Color.fromARGB(105, 40, 49, 73), fontFamily: "OpenSans-SemiBold", fontSize: 22),
                
                ),
                 ),
              ),
              ),
                         Padding(padding: EdgeInsets.only(top: 20)),
                          Container(
                child: SizedBox(
                width: 246,
                height: 53,
                child:  TextField(
                  controller: Password,
                                  style:  TextStyle(color: Color.fromARGB(200, 40, 49, 73), fontFamily: "OpenSans-SemiBold", fontSize: 22),
                  cursorColor: Color.fromARGB(6, 160, 160, 160),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 20, 10, 0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(width: 0, color: Color.fromARGB(250, 93, 108, 215)),
                  ),
                     focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(width: 0, color: Color.fromARGB(250, 93, 108, 215)),
                  ),
                filled: true,
                hintText: "Пароль",
                fillColor: Color.fromARGB(255, 255, 255, 255),
                hintStyle: TextStyle(color: Color.fromARGB(105, 40, 49, 73), fontFamily: "OpenSans-SemiBold", fontSize: 22),
                
                ),
                 ),
              ),
              ),
                         Padding(padding: EdgeInsets.only(top: 20)),
              Container(
                child: SizedBox(
                width: 246,
                height: 53,
                child:  TextField(
                                                    style:  TextStyle(color: Color.fromARGB(200, 40, 49, 73), fontFamily: "OpenSans-SemiBold", fontSize: 22),
                  controller: RepeatPassword,
                  cursorColor: Color.fromARGB(6, 160, 160, 160),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 20, 10, 0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(width: 0, color: Color.fromARGB(250, 93, 108, 215)),
                  ),
                     focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(width: 0, color: Color.fromARGB(250, 93, 108, 215)),
                  ),
                filled: true,
                hintText: "Повтор пароля",
                fillColor: Color.fromARGB(255, 255, 255, 255),
                hintStyle: TextStyle(color: Color.fromARGB(105, 40, 49, 73), fontFamily: "OpenSans-SemiBold", fontSize: 22),
                
                ),
                 ),
              ),
              ),
                         Padding(padding: EdgeInsets.only(top: 20)),
                          Container(
                child: SizedBox(
                width: 246,
                height: 53,
                child:  TextField(
                  controller: Phone,
                                  style:  TextStyle(color: Color.fromARGB(200, 40, 49, 73), fontFamily: "OpenSans-SemiBold", fontSize: 22),
                  cursorColor: Color.fromARGB(6, 160, 160, 160),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 20, 10, 0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(width: 0, color: Color.fromARGB(250, 93, 108, 215)),
                  ),
                     focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(width: 0, color: Color.fromARGB(250, 93, 108, 215)),
                  ),
                filled: true,
                hintText: "Телефон",
                fillColor: Color.fromARGB(255, 255, 255, 255),
                hintStyle: TextStyle(color: Color.fromARGB(105, 40, 49, 73), fontFamily: "OpenSans-SemiBold", fontSize: 22),
                
                ),
                 ),
              ),
              ),            Padding(padding: EdgeInsets.only(top: 20)),
              Container(
                child: SizedBox(
                width: 246,
                height: 53,
                child:  TextField(
                  controller: Email,
                                                    style:  TextStyle(color: Color.fromARGB(200, 40, 49, 73), fontFamily: "OpenSans-SemiBold", fontSize: 22),
                  
                  cursorColor: Color.fromARGB(6, 160, 160, 160),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 20, 10, 0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(width: 0, color: Color.fromARGB(250, 93, 108, 215)),
                  ),
                     focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(width: 0, color: Color.fromARGB(250, 93, 108, 215)),
                  ),
                filled: true,
                hintText: "Почта",
                fillColor: Color.fromARGB(255, 255, 255, 255),
                hintStyle: TextStyle(color: Color.fromARGB(105, 40, 49, 73), fontFamily: "OpenSans-SemiBold", fontSize: 22),
                
                ),
                 ),
              ),
              ),
              Padding(padding: EdgeInsets.only(top: 80)),
              Container(child: ElevatedButton(
                onPressed: () {

                }, child: Text(
                    "Зарегистрироваться", 
                  style: TextStyle(color: Colors.white, fontFamily: "OpenSans-SemiBold", fontSize: 18),
                  ),
                  style: ButtonStyle(
                    
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 58, 40, 167)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )
                    )
                  ),
                  ) ,
              height: 37,
              width: 210,
              ),
              ],
            ),
           
          ],
        ),
      ),

    );
  }
}
