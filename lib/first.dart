import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:puzzle_app/customize.dart';
import 'package:puzzle_app/home.dart';
import 'package:puzzle_app/setting.dart';


// ignore: camel_case_types, must_be_immutable
class firstpage extends StatefulWidget {

  String name;
  String pic;
  String email;

  firstpage({
    Key? key,
    required this.name,
    required this.pic,
    required this.email
  }) : super(key: key);

  @override
  _firstpageState createState() => _firstpageState();
}

// ignore: camel_case_types
class _firstpageState extends State<firstpage> {

  final colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    final page = [
      homepage(
        name: widget.name,
        email: widget.email,
        pic: widget.pic,
      ),
      customizepage(
        name: widget.name,
        email: widget.email,
        pic: widget.pic,
      ),
      settingpage(
        name: widget.name,
        email: widget.email,
        pic: widget.pic,
      )
    ];

    return Scaffold(
      body: page[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
              backgroundColor: Colors.yellow
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.leaderboard
              ),
              label: 'Leaderboard',
              backgroundColor: Colors.red
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.settings_applications
              ),
              label: 'Setting',
              backgroundColor: Colors.green
          )
        ],
        type: BottomNavigationBarType.shifting,
        enableFeedback: true,
        selectedIconTheme: const IconThemeData(
            color: Colors.blue,
            size: 30
        ),
        unselectedIconTheme: const IconThemeData(
            color: Colors.white,
            size: 25
        ),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}



