import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lottie/lottie.dart';
import 'package:puzzle_app/firstinit.dart';
import 'package:puzzle_app/history.dart';
import 'package:puzzle_app/quickhistory.dart';
import 'package:puzzle_app/upload.dart';


// ignore: camel_case_types
class settingpage extends StatefulWidget {

  String name;
  String pic;
  String email;

  settingpage({
    Key? key,
    required this.name,
    required this.pic,
    required this.email
  }) : super(key: key);

  @override
  _settingpageState createState() => _settingpageState();
}

// ignore: camel_case_types
class _settingpageState extends State<settingpage> {

  File? image;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: ClipOval(
                        child: Image.network(
                          widget.pic,
                          width: 90,
                          height: 90,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text(
                        widget.name,
                        style: const TextStyle(
                          color: Colors.yellow,
                          fontSize: 30
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Divider(
                color: Colors.yellow,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        PageRouteBuilder(
                            transitionDuration: const Duration(
                                seconds: 2
                            ),
                            transitionsBuilder: (context, animated, secAnimation, child){
                              return ScaleTransition(
                                alignment: Alignment.center,
                                scale: animated,
                                child: child,
                              );
                            },
                            pageBuilder: (context, animated, secAnimation){
                              return historypage(
                                name: widget.name,
                                email: widget.email,
                                pic: widget.pic,
                              );
                            }
                        )
                    );
                  },
                  child: ListTile(
                    title: const Text(
                      'Animation Puzzle History',
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 20
                      ),
                    ),
                    leading: ClipOval(
                      child: Lottie.asset(
                        'assets/94539-order-history.json',
                        width: 50,
                        height: 50,
                        repeat: true
                      ),
                    ),
                    trailing: ClipOval(
                      child: Lottie.asset(
                          'assets/25984-carousel-arrow-right.json',
                          width: 50,
                          height: 50,
                          repeat: true
                      ),
                    ),
                  ),
                )
              ),
              const Divider(
                color: Colors.yellow,
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          PageRouteBuilder(
                              transitionDuration: const Duration(
                                  seconds: 2
                              ),
                              transitionsBuilder: (context, animated, secAnimation, child){
                                return ScaleTransition(
                                  alignment: Alignment.center,
                                  scale: animated,
                                  child: child,
                                );
                              },
                              pageBuilder: (context, animated, secAnimation){
                                return quickhistorypage(
                                  name: widget.name,
                                  email: widget.email,
                                  pic: widget.pic,
                                );
                              }
                          )
                      );
                    },
                    child: ListTile(
                      title: const Text(
                        'Quick Puzzle History',
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 20
                        ),
                      ),
                      leading: ClipOval(
                        child: Lottie.asset(
                            'assets/94539-order-history.json',
                            width: 50,
                            height: 50,
                            repeat: true
                        ),
                      ),
                      trailing: ClipOval(
                        child: Lottie.asset(
                            'assets/25984-carousel-arrow-right.json',
                            width: 50,
                            height: 50,
                            repeat: true
                        ),
                      ),
                    ),
                  )
              ),
              const Divider(
                color: Colors.yellow,
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: InkWell(
                    onTap: () async {
                      final show = showDialog(
                          context: context,
                          barrierDismissible: true,
                          builder: (context){
                            return AlertDialog(
                              title: const Text(
                                'Login In',
                                style: TextStyle(
                                    color: Colors.red
                                ),
                              ),
                              content: const Text(
                                'Whether to Logout ?',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              actions: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: const Text(
                                      'No'
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () async {
                                    GoogleSignIn().signOut().whenComplete(() =>
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) =>
                                                const firstinitpage()
                                            )
                                        )
                                    );
                                    Fluttertoast.showToast(
                                        msg: 'Sign Out',
                                        backgroundColor: Colors.black.withOpacity(0.5),
                                        textColor: Colors.white
                                    );
                                  },
                                  child: const Text(
                                      'Yes'
                                  ),
                                ),
                              ],
                            );
                          }
                      );
                    },
                    child: ListTile(
                      title: const Text(
                        'Sign Out',
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 20
                        ),
                      ),
                      leading: ClipOval(
                        child: Lottie.asset(
                            'assets/68582-log-out.json',
                            width: 50,
                            height: 50,
                            repeat: true
                        ),
                      ),
                      trailing: ClipOval(
                        child: Lottie.asset(
                            'assets/25984-carousel-arrow-right.json',
                            width: 50,
                            height: 50,
                            repeat: true
                        ),
                      ),
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}


//68582-log-out
