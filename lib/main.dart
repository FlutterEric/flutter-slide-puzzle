import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:puzzle_app/customize.dart';
import 'package:puzzle_app/first.dart';
import 'package:puzzle_app/firstinit.dart';
import 'package:puzzle_app/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
    )
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyAppPage(),
    );
  }
}


class MyAppPage extends StatefulWidget {
  const MyAppPage({Key? key}) : super(key: key);

  @override
  _MyAppPageState createState() => _MyAppPageState();
}

enum AuthState{
  notSignIn,
  signedIn
}

class _MyAppPageState extends State<MyAppPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(
          seconds: 7,
      ),
            () async =>
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const firstinitpage()
                )
            )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0Xff4f69c6),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/animation_500_kznx9bxc.gif',
                width: 100,
                height: 100,
              ),
              const Padding(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  'Slide Puzzle App',
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}

/*
user == null ?
      Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/512/993/993686.png',
                width: 100,
                height: 100,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () => setgoogle(),
                    child: Row(
                      children: [
                        Image.network(
                          'https://cdn-icons-png.flaticon.com/512/300/300221.png',
                          width: 50,
                          height: 50,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            'Sign In With Google',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ) :
    firstpage(
      email: FirebaseAuth.instance.currentUser!.email.toString(),
      name: FirebaseAuth.instance.currentUser!.displayName.toString(),
      pic: FirebaseAuth.instance.currentUser!.photoURL.toString(),
    );

appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText(
              'Flutter Puzzle',
              textStyle: const TextStyle(
                fontSize: 20,
                fontFamily: 'Horizon',
              ),
              colors: colorizeColors
            ),
          ],
          isRepeatingAnimation: true,
        )
      ),
 */


