import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


// ignore: camel_case_types
class quickhistorypage extends StatefulWidget {

  String name;
  String pic;
  String email;

  quickhistorypage({
    Key? key,
    required this.name,
    required this.pic,
    required this.email
  }) : super(key: key);

  @override
  _quickhistorypageState createState() => _quickhistorypageState();
}

// ignore: camel_case_types
class _quickhistorypageState extends State<quickhistorypage> {

  @override
  Widget build(BuildContext context) {

    CollectionReference animationgame1 = FirebaseFirestore.instance.collection(widget.name + ' Quick Slide Puzzle(1)');
    CollectionReference animationgame2 = FirebaseFirestore.instance.collection(widget.name + ' Quick Slide Puzzle(2)');
    CollectionReference animationgame3 = FirebaseFirestore.instance.collection(widget.name + ' Quick Slide Puzzle(3)');
    CollectionReference animationgame4 = FirebaseFirestore.instance.collection(widget.name + ' Quick Slide Puzzle(4)');
    CollectionReference animationgame5 = FirebaseFirestore.instance.collection(widget.name + ' Rolling Ball Slide Puzzle(1)');
    CollectionReference animationgame6 = FirebaseFirestore.instance.collection(widget.name + ' Rolling Ball Slide Puzzle(2)');

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: const Text(
            'Quick Slide Puzzle History',
            style: TextStyle(
                color: Colors.yellow
            ),
          ),
        ),
        body: SafeArea(
            child: ListView(
              children: [
                ExpansionTile(
                  title: const Text(
                    'Quick Slide Puzzle (1)',
                    style: TextStyle(
                        color: Colors.yellow
                    ),
                  ),
                  children: [
                    StreamBuilder(
                      stream: animationgame1.snapshots(),
                      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
                        if(snapshot.hasData){
                          return Container(
                              width: double.infinity,
                              height: 300,
                              child: ListView.builder(
                                itemCount: snapshot.data!.docs.length,
                                itemBuilder: (context, index){
                                  final data = snapshot.data!.docs[index];

                                  return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: ListTile(
                                          leading: Image.asset(
                                            'assets/mathgame.png',
                                            width: 50,
                                            height: 50,
                                          ),
                                          title: Text(
                                            'Mark: ' + data['Mark'],
                                            style: const TextStyle(
                                                color: Colors.yellow,
                                                fontSize: 18
                                            ),
                                          ),
                                          subtitle: Text(
                                            'Move: ' + data['Move'],
                                            style: const TextStyle(
                                                color: Colors.yellow,
                                                fontSize: 16
                                            ),
                                          ),
                                          trailing: Text(
                                            'Time: ' + data['Time'] + 's',
                                            style: const TextStyle(
                                              color: Colors.yellow
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Divider(
                                        color: Colors.yellow,
                                      )
                                    ],
                                  );
                                },
                              )
                          );
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.yellow,
                ),
                ExpansionTile(
                  title: const Text(
                    'Quick Slide Puzzle (2)',
                    style: TextStyle(
                        color: Colors.yellow
                    ),
                  ),
                  children: [
                    StreamBuilder(
                      stream: animationgame2.snapshots(),
                      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
                        if(snapshot.hasData){
                          return Container(
                              width: double.infinity,
                              height: 300,
                              child: ListView.builder(
                                itemCount: snapshot.data!.docs.length,
                                itemBuilder: (context, index){
                                  final data = snapshot.data!.docs[index];

                                  return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: ListTile(
                                          leading: Image.asset(
                                            'assets/blue/bluepuzzle.png',
                                            width: 50,
                                            height: 50,
                                          ),
                                          title: Text(
                                            'Mark: ' + data['Mark'],
                                            style: const TextStyle(
                                                color: Colors.yellow,
                                                fontSize: 18
                                            ),
                                          ),
                                          subtitle: Text(
                                            'Move: ' + data['Move'],
                                            style: const TextStyle(
                                                color: Colors.yellow,
                                                fontSize: 16
                                            ),
                                          ),
                                          trailing: Text(
                                            'Time: ' + data['Time'] + 's',
                                            style: const TextStyle(
                                                color: Colors.yellow
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Divider(
                                        color: Colors.yellow,
                                      )
                                    ],
                                  );
                                },
                              )
                          );
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.yellow,
                ),
                ExpansionTile(
                  title: const Text(
                    'Quick Slide Puzzle (3)',
                    style: TextStyle(
                        color: Colors.yellow
                    ),
                  ),
                  children: [
                    StreamBuilder(
                      stream: animationgame3.snapshots(),
                      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
                        if(snapshot.hasData){
                          return Container(
                              width: double.infinity,
                              height: 300,
                              child: ListView.builder(
                                itemCount: snapshot.data!.docs.length,
                                itemBuilder: (context, index){
                                  final data = snapshot.data!.docs[index];

                                  return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: ListTile(
                                          leading: Image.asset(
                                            'assets/green/greenpuzzle.png',
                                            width: 50,
                                            height: 50,
                                          ),
                                          title: Text(
                                            'Mark: ' + data['Mark'],
                                            style: const TextStyle(
                                                color: Colors.yellow,
                                                fontSize: 18
                                            ),
                                          ),
                                          subtitle: Text(
                                            'Move: ' + data['Move'],
                                            style: const TextStyle(
                                                color: Colors.yellow,
                                                fontSize: 16
                                            ),
                                          ),
                                          trailing: Text(
                                            'Time: ' + data['Time'] + 's',
                                            style: const TextStyle(
                                                color: Colors.yellow
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Divider(
                                        color: Colors.yellow,
                                      )
                                    ],
                                  );
                                },
                              )
                          );
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.yellow,
                ),
                ExpansionTile(
                  title: const Text(
                    'Quick Slide Puzzle (4)',
                    style: TextStyle(
                        color: Colors.yellow
                    ),
                  ),
                  children: [
                    StreamBuilder(
                      stream: animationgame4.snapshots(),
                      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
                        if(snapshot.hasData){
                          return Container(
                              width: double.infinity,
                              height: 300,
                              child: ListView.builder(
                                itemCount: snapshot.data!.docs.length,
                                itemBuilder: (context, index){
                                  final data = snapshot.data!.docs[index];

                                  return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: ListTile(
                                          leading: Image.asset(
                                            'assets/yellow/yellowpuzzle.png',
                                            width: 50,
                                            height: 50,
                                          ),
                                          title: Text(
                                            'Mark: ' + data['Mark'],
                                            style: const TextStyle(
                                                color: Colors.yellow,
                                                fontSize: 18
                                            ),
                                          ),
                                          subtitle: Text(
                                            'Move: ' + data['Move'],
                                            style: const TextStyle(
                                                color: Colors.yellow,
                                                fontSize: 16
                                            ),
                                          ),
                                          trailing: Text(
                                            'Time: ' + data['Time'] + 's',
                                            style: const TextStyle(
                                                color: Colors.yellow
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Divider(
                                        color: Colors.yellow,
                                      )
                                    ],
                                  );
                                },
                              )
                          );
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.yellow,
                ),
                ExpansionTile(
                  title: const Text(
                    'Quick Rolling Ball Slide Puzzle (1)',
                    style: TextStyle(
                        color: Colors.yellow
                    ),
                  ),
                  children: [
                    StreamBuilder(
                      stream: animationgame5.snapshots(),
                      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
                        if(snapshot.hasData){
                          return Container(
                              width: double.infinity,
                              height: 300,
                              child: ListView.builder(
                                itemCount: snapshot.data!.docs.length,
                                itemBuilder: (context, index){
                                  final data = snapshot.data!.docs[index];

                                  return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: ListTile(
                                          leading: Image.asset(
                                            'assets/rollingball1.png',
                                            width: 50,
                                            height: 50,
                                          ),
                                          title: Text(
                                            'Mark: ' + data['Mark'],
                                            style: const TextStyle(
                                                color: Colors.yellow,
                                                fontSize: 18
                                            ),
                                          ),
                                          subtitle: Text(
                                            'Move: ' + data['Move'],
                                            style: const TextStyle(
                                                color: Colors.yellow,
                                                fontSize: 16
                                            ),
                                          ),
                                          trailing: Text(
                                            'Time: ' + data['Time'] + 's',
                                            style: const TextStyle(
                                                color: Colors.yellow
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Divider(
                                        color: Colors.yellow,
                                      )
                                    ],
                                  );
                                },
                              )
                          );
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.yellow,
                ),
                ExpansionTile(
                  title: const Text(
                    'Quick Rolling Ball Slide Puzzle (2)',
                    style: TextStyle(
                        color: Colors.yellow
                    ),
                  ),
                  children: [
                    StreamBuilder(
                      stream: animationgame6.snapshots(),
                      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
                        if(snapshot.hasData){
                          return Container(
                              width: double.infinity,
                              height: 300,
                              child: ListView.builder(
                                itemCount: snapshot.data!.docs.length,
                                itemBuilder: (context, index){
                                  final data = snapshot.data!.docs[index];

                                  return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: ListTile(
                                          leading: Image.asset(
                                            'assets/rollingball2.png',
                                            width: 50,
                                            height: 50,
                                          ),
                                          title: Text(
                                            'Mark: ' + data['Mark'],
                                            style: const TextStyle(
                                                color: Colors.yellow,
                                                fontSize: 18
                                            ),
                                          ),
                                          subtitle: Text(
                                            'Move: ' + data['Move'],
                                            style: const TextStyle(
                                                color: Colors.yellow,
                                                fontSize: 16
                                            ),
                                          ),
                                          trailing: Text(
                                            'Time: ' + data['Time'] + 's',
                                            style: const TextStyle(
                                                color: Colors.yellow
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Divider(
                                        color: Colors.yellow,
                                      )
                                    ],
                                  );
                                },
                              )
                          );
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.yellow,
                ),
              ],
            )
        ),
      ),
    );
  }
}



