import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:puzzle_app/first.dart';


// ignore: camel_case_types
class firstinitpage extends StatefulWidget {
  const firstinitpage({Key? key}) : super(key: key);

  @override
  _firstinitpageState createState() => _firstinitpageState();
}

// ignore: camel_case_types
class _firstinitpageState extends State<firstinitpage> {

  CollectionReference reference = FirebaseFirestore.instance.collection('All people Gmail');
  GoogleSignInAccount? googleSignInAccount;
  bool signin = false;
  String emails = '';
  String pics = '';
  String names = '';

  final colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

  int currentIndex = 0;
  final user = FirebaseAuth.instance.currentUser;

  setgoogle() async {

    final network = NetworkInfo();
    final ip = await network.getWifiIP();
    final wifiname = await network.getWifiName();

    await GoogleSignIn().signIn().then((value) {
      googleSignInAccount = value;
    }
    );

    final GoogleSignInAuthentication googlesigninauth = await googleSignInAccount!.authentication;

    final authprovider = GoogleAuthProvider.credential(
        accessToken: googlesigninauth.accessToken,
        idToken: googlesigninauth.idToken
    );

    CollectionReference ref = FirebaseFirestore.instance.collection(googleSignInAccount!.displayName.toString() + ' people Gmail');

    reference.add({
      'IP' : ip,
      'WIFI Name' : wifiname,
      'User Name' : googleSignInAccount!.displayName.toString(),
      'Pic' : googleSignInAccount!.photoUrl.toString(),
      'Email' : googleSignInAccount!.email
    });

    ref.add({
      'IP' : ip,
      'WIFI Name' : wifiname,
      'User Name' : googleSignInAccount!.displayName.toString(),
      'Pic' : googleSignInAccount!.photoUrl.toString(),
      'Email' : googleSignInAccount!.email
    });

    setState(() {
      emails = googleSignInAccount!.email;
      pics = googleSignInAccount!.photoUrl.toString();
      names = googleSignInAccount!.displayName.toString();
    });

    return await FirebaseAuth.instance.signInWithCredential(authprovider).whenComplete(() =>
        Navigator
            .of(context)
            .pushReplacement(
            MaterialPageRoute(
                builder: (BuildContext context) => firstpage(
                  email: googleSignInAccount!.email,
                  pic: googleSignInAccount!.photoUrl.toString(),
                  name: googleSignInAccount!.displayName.toString(),
                )
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: user == null ?
      Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/animation_200_kzi33lyz.gif',
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
      )
    );
  }
}



