import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:puzzle_app/start.dart';


// ignore: camel_case_types
class customizepage extends StatefulWidget {

  String name;
  String pic;
  String email;

  customizepage({
    Key? key,
    required this.name,
    required this.pic,
    required this.email
  }) : super(key: key);

  @override
  _customizepageState createState() => _customizepageState();
}

// ignore: camel_case_types
class _customizepageState extends State<customizepage> {

  CollectionReference animationgame1 = FirebaseFirestore.instance.collection('Animation Slide Puzzle(1)');
  CollectionReference animationgame2 = FirebaseFirestore.instance.collection('Animation Slide Puzzle(2)');
  CollectionReference animationgame3 = FirebaseFirestore.instance.collection('Animation Slide Puzzle(3)');
  CollectionReference animationgame4 = FirebaseFirestore.instance.collection('Animation Slide Puzzle(4)');
  CollectionReference animationgame5 = FirebaseFirestore.instance.collection('Animation Rolling Ball Slide Puzzle(1)');
  CollectionReference animationgame6 = FirebaseFirestore.instance.collection('Animation Rolling Ball Slide Puzzle(2)');

  CollectionReference quickgame1 = FirebaseFirestore.instance.collection('Quick Slide Puzzle(1)');
  CollectionReference quickgame2 = FirebaseFirestore.instance.collection('Quick Slide Puzzle(2)');
  CollectionReference quickgame3 = FirebaseFirestore.instance.collection('Quick Slide Puzzle(3)');
  CollectionReference quickgame4 = FirebaseFirestore.instance.collection('Quick Slide Puzzle(4)');
  CollectionReference quickgame5 = FirebaseFirestore.instance.collection('Rolling Ball Slide Puzzle(1)');
  CollectionReference quickgame6 = FirebaseFirestore.instance.collection('Rolling Ball Slide Puzzle(2)');

  @override
  Widget build(BuildContext context) {

    final an1 = animationgame1.orderBy("Move", descending: false);
    final an2 = animationgame2.orderBy("Move", descending: false);
    final an3 = animationgame3.orderBy("Move", descending: false);
    final an4 = animationgame4.orderBy("Move", descending: false);
    final an5 = animationgame5.orderBy("Move", descending: false);
    final an6 = animationgame6.orderBy("Move", descending: false);

    final qu1 = quickgame1.orderBy("Move", descending: false);
    final qu2 = quickgame2.orderBy("Move", descending: false);
    final qu3 = quickgame3.orderBy("Move", descending: false);
    final qu4 = quickgame4.orderBy("Move", descending: false);
    final qu5 = quickgame5.orderBy("Move", descending: false);
    final qu6 = quickgame6.orderBy("Move", descending: false);

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: const Text(
            'Leaderboard',
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
                  'Animation Slide Puzzle (1)',
                  style: TextStyle(
                      color: Colors.yellow
                  ),
                ),
                children: [
                  StreamBuilder(
                    stream: an1.snapshots(),
                    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
                      if(snapshot.hasData){
                        return Container(
                            width: double.infinity,
                            height: 300,
                            child: ListView.builder(
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (context, index){
                                final data = snapshot.data!.docs[index];

                                return data['Mark'] == '1/1' ?
                                Column(
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
                                          'Name: ' + data['who play name'],
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
                                      ),
                                    ),
                                    const Divider(
                                      color: Colors.yellow,
                                    )
                                  ],
                                ) :
                                    Container(
                                      width: 0,
                                      height: 0,
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
                  'Animation Slide Puzzle (2)',
                  style: TextStyle(
                      color: Colors.yellow
                  ),
                ),
                children: [
                  StreamBuilder(
                    stream: an2.snapshots(),
                    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
                      if(snapshot.hasData){
                        return Container(
                            width: double.infinity,
                            height: 300,
                            child: ListView.builder(
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (context, index){
                                final data = snapshot.data!.docs[index];

                                return data['Mark'] == '1/1' ?
                                Column(
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
                                          'Name: ' + data['who play name'],
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
                                      ),
                                    ),
                                    const Divider(
                                      color: Colors.yellow,
                                    )
                                  ],
                                ) :
                                Container(
                                  width: 0,
                                  height: 0,
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
                  'Animation Slide Puzzle (3)',
                  style: TextStyle(
                      color: Colors.yellow
                  ),
                ),
                children: [
                  StreamBuilder(
                    stream: an3.snapshots(),
                    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
                      if(snapshot.hasData){
                        return Container(
                            width: double.infinity,
                            height: 300,
                            child: ListView.builder(
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (context, index){
                                final data = snapshot.data!.docs[index];

                                return data['Mark'] == '1/1' ?
                                Column(
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
                                          'Name: ' + data['who play name'],
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
                                      ),
                                    ),
                                    const Divider(
                                      color: Colors.yellow,
                                    )
                                  ],
                                ) :
                                Container(
                                  width: 0,
                                  height: 0,
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
                  'Animation Slide Puzzle (4)',
                  style: TextStyle(
                      color: Colors.yellow
                  ),
                ),
                children: [
                  StreamBuilder(
                    stream: an4.snapshots(),
                    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
                      if(snapshot.hasData){
                        return Container(
                            width: double.infinity,
                            height: 300,
                            child: ListView.builder(
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (context, index){
                                final data = snapshot.data!.docs[index];

                                return data['Mark'] == '1/1' ?
                                Column(
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
                                          'Name: ' + data['who play name'],
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
                                      ),
                                    ),
                                    const Divider(
                                      color: Colors.yellow,
                                    )
                                  ],
                                ) :
                                Container(
                                  width: 0,
                                  height: 0,
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
                  'Animation Rolling Ball Slide Puzzle (1)',
                  style: TextStyle(
                      color: Colors.yellow
                  ),
                ),
                children: [
                  StreamBuilder(
                    stream: an5.snapshots(),
                    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
                      if(snapshot.hasData){
                        return Container(
                            width: double.infinity,
                            height: 300,
                            child: ListView.builder(
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (context, index){
                                final data = snapshot.data!.docs[index];

                                return data['Mark'] == '1/1' ?
                                Column(
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
                                          'Name: ' + data['who play name'],
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
                                      ),
                                    ),
                                    const Divider(
                                      color: Colors.yellow,
                                    )
                                  ],
                                ) :
                                Container(
                                  width: 0,
                                  height: 0,
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
                  'Animation Rolling Ball Slide Puzzle (2)',
                  style: TextStyle(
                      color: Colors.yellow
                  ),
                ),
                children: [
                  StreamBuilder(
                    stream: an6.snapshots(),
                    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
                      if(snapshot.hasData){
                        return Container(
                            width: double.infinity,
                            height: 300,
                            child: ListView.builder(
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (context, index){
                                final data = snapshot.data!.docs[index];

                                return data['Mark'] == '1/1' ?
                                Column(
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
                                          'Name: ' + data['who play name'],
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
                                      ),
                                    ),
                                    const Divider(
                                      color: Colors.yellow,
                                    )
                                  ],
                                ) :
                                Container(
                                  width: 0,
                                  height: 0,
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
                  'Quick Slide Puzzle (1)',
                  style: TextStyle(
                      color: Colors.yellow
                  ),
                ),
                children: [
                  StreamBuilder(
                    stream: qu1.snapshots(),
                    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
                      if(snapshot.hasData){
                        return Container(
                            width: double.infinity,
                            height: 300,
                            child: ListView.builder(
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (context, index){
                                final data = snapshot.data!.docs[index];

                                return data['Mark'] == '1/1' ?
                                Column(
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
                                          'Name: ' + data['who play name'],
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
                                ) :
                                Container(
                                  width: 0,
                                  height: 0,
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
                    stream: qu2.snapshots(),
                    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
                      if(snapshot.hasData){
                        return Container(
                            width: double.infinity,
                            height: 300,
                            child: ListView.builder(
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (context, index){
                                final data = snapshot.data!.docs[index];

                                return data['Mark'] == '1/1' ?
                                Column(
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
                                          'Name: ' + data['who play name'],
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
                                ) :
                                Container(
                                  width: 0,
                                  height: 0,
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
                    stream: qu3.snapshots(),
                    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
                      if(snapshot.hasData){
                        return Container(
                            width: double.infinity,
                            height: 300,
                            child: ListView.builder(
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (context, index){
                                final data = snapshot.data!.docs[index];

                                return data['Mark'] == '1/1' ?
                                Column(
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
                                          'Name: ' + data['who play name'],
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
                                ) :
                                Container(
                                  width: 0,
                                  height: 0,
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
                    stream: qu4.snapshots(),
                    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
                      if(snapshot.hasData){
                        return Container(
                            width: double.infinity,
                            height: 300,
                            child: ListView.builder(
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (context, index){
                                final data = snapshot.data!.docs[index];

                                return data['Mark'] == '1/1' ?
                                Column(
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
                                          'Name: ' + data['who play name'],
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
                                ) :
                                Container(
                                  width: 0,
                                  height: 0,
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
                    stream: qu5.snapshots(),
                    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
                      if(snapshot.hasData){
                        return Container(
                            width: double.infinity,
                            height: 300,
                            child: ListView.builder(
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (context, index){
                                final data = snapshot.data!.docs[index];

                                return data['Mark'] == '1/1' ?
                                Column(
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
                                          'Name: ' + data['who play name'],
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
                                ) :
                                Container(
                                  width: 0,
                                  height: 0,
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
                    stream: qu6.snapshots(),
                    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
                      if(snapshot.hasData){
                        return Container(
                            width: double.infinity,
                            height: 300,
                            child: ListView.builder(
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (context, index){
                                final data = snapshot.data!.docs[index];

                                return data['Mark'] == '1/1' ?
                                Column(
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
                                          'Name: ' + data['who play name'],
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
                                ) :
                                Container(
                                  width: 0,
                                  height: 0,
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
          ),
        ),
      ),
    );
  }
}



