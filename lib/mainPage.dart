import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:on_quiz/myquiz.dart';
import 'quizsPage.dart';
import 'createQuizPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  });

  @override
  State<MainPage> createState() => StateMainPage();
}

class StateMainPage extends State<MainPage> {
  int selectedIndex = 0;

  void onItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });

    void initFirebase() async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
    }

    @override
    void initState() {
      super.initState();
      initFirebase();
    }
  }

  onItemSearch(String value) {
    setState(
      () {
        // newDealList = dealList
        //     .where((element) => element.title!.contains(value))
        //     .toList();
      },
    );
  }

  TextEditingController searchController = TextEditingController();
  final title = [
    "Викторины",
    "Создание", // 1
    "Мои викторины"
  ];
  bool tittleAppBar = false;
  @override
  Widget build(BuildContext context) {
    final list = [
      const QuizsPage(),
      const CreateQuizPage(),
      const MyQuizPage(),
    ];
    AppBar appBarSearch = AppBar(
      automaticallyImplyLeading: true,
      iconTheme: IconThemeData(
        color: Color.fromARGB(255, 145, 135, 206), //change your color here
      ),
      backgroundColor: (Color.fromARGB(255, 58, 40, 167)),
      centerTitle: true,
      title: TextField(
        style: TextStyle(
            color: Color.fromARGB(250, 153, 144, 210),
            fontFamily: "OpenSans-SemiBold",
            fontSize: 22),
        cursorColor: Color.fromARGB(250, 153, 144, 210),
        decoration: const InputDecoration(
          hintStyle: TextStyle(
              color: Color.fromARGB(250, 153, 144, 210),
              fontFamily: "OpenSans-SemiBold",
              fontSize: 22),
          hintText: "Название",
        ),
        controller: searchController,
        onChanged: onItemSearch,
      ),
      actions: [
        IconButton(
            onPressed: () {
              setState(() {
                searchController.clear();
                tittleAppBar = false;
              });
            },
            icon: const Icon(Icons.close))
      ],
    );
    AppBar appBar = AppBar(
      automaticallyImplyLeading: true,
      iconTheme: IconThemeData(
        color: Color.fromARGB(255, 145, 135, 206), //change your color here
      ),
      backgroundColor: (Color.fromARGB(255, 58, 40, 167)),
      title: Text(
        title[selectedIndex],
        style: TextStyle(
            color: Color.fromARGB(250, 153, 144, 210),
            fontFamily: "OpenSans-SemiBold",
            fontSize: 22),
      ),
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () {
              setState(() {
                tittleAppBar = true;
              });
            },
            icon: const Icon(
              Icons.search_outlined,
              size: 30,
            ))
      ],
    );
    AppBar deffaultAppBar = AppBar(
      automaticallyImplyLeading: true,
      iconTheme: IconThemeData(
        color: Colors.white, //change your color here
      ),
      backgroundColor: Color.fromARGB(255, 58, 40, 167),
      title: Text(title[selectedIndex]),
      centerTitle: true,
    );
    return Scaffold(

        //drawer:const MenuDrawer(),
        backgroundColor: Color.fromARGB(250, 93, 108, 215),
        appBar: selectedIndex == 0
            ? (tittleAppBar ? appBarSearch : appBar)
            : deffaultAppBar,
        body: Center(
          child: list.elementAt(selectedIndex),
        ),
        bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: SizedBox(
              height: 60,
              child: BottomNavigationBar(
                onTap: onItemTap,
                backgroundColor: (Color.fromARGB(255, 58, 40, 167)),
                selectedLabelStyle: TextStyle(
                    color: Color.fromARGB(255, 207, 217, 255),
                    fontFamily: "IMFellGreatPrimerSC-Regular",
                    fontSize: 14),
                unselectedLabelStyle: TextStyle(
                    color: Color.fromARGB(255, 207, 217, 255),
                    fontFamily: "IMFellGreatPrimerSC-Regular",
                    fontSize: 14),
                showUnselectedLabels: true,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.people_outline_outlined,
                        color: Color.fromARGB(255, 145, 135, 206), size: 35),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.add,
                      color: Color.fromARGB(255, 145, 135, 206),
                      size: 40,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline_outlined,
                        color: Color.fromARGB(255, 145, 135, 206), size: 35),
                    label: '',
                  ),
                ],
              ),
            )));
  }
}
