import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


// ignore: camel_case_types
class startpage extends StatefulWidget {
  const startpage({Key? key}) : super(key: key);

  @override
  _startpageState createState() => _startpageState();
}

// ignore: camel_case_types
class _startpageState extends State<startpage> {

  CollectionReference reference = FirebaseFirestore.instance.collection('Quick Slide Puzzle(1)');

  @override
  Widget build(BuildContext context) {

    final ref = reference.orderBy('Time');

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: StreamBuilder(
            stream: ref.snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
              if(snapshot.hasData){
                return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index){
                    final data = snapshot.data!.docs[index];

                    return Column(
                      children: [
                        Text(
                          data['Time']
                        )
                      ],
                    );
                  },
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          )
        ),
      ),
    );
  }
}



