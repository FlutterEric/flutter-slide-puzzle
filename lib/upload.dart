import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:image/image.dart' as imglib;
import 'package:http/http.dart';


// ignore: camel_case_types
class uploadpage extends StatefulWidget {

  String name;
  String pic;
  String email;
  File image;

  uploadpage({
    Key? key,
    required this.name,
    required this.pic,
    required this.email,
    required this.image
  }) : super(key: key);

  @override
  _uploadpageState createState() => _uploadpageState();
}

// ignore: camel_case_types
class _uploadpageState extends State<uploadpage> {

  TextEditingController textEditingController = TextEditingController();
  TextEditingController username = TextEditingController();
  final form = GlobalKey<FormState>();

  late TransformationController controller;
  late TransformationController controller1;

  /*
  List<Image> splitImage({required Image inputImage, required int horizontalPieceCount, required int verticalPieceCount}) {
    imglib.Image image = inputImage as imglib.Image;

    final int xLength = (image.width / horizontalPieceCount).round();
    final int yLength = (image.height / verticalPieceCount).round();
    List<imglib.Image> pieceList = <imglib.Image>[];

    for (int y = 0; y < verticalPieceCount; y++)
      // ignore: curly_braces_in_flow_control_structures
      for (int x = 0; x < horizontalPieceCount; x++) {
        pieceList.add(
          imglib.copyCrop(image, x, y, x * xLength, y * yLength),
        );
      }

    final bytes = Io.File(widget.image).readAsBytesSync();
    String img64 = base64Encode(bytes);

    final decodedBytes = base64Decode(img64);
    var file = Io.File(widget.image);
    file.writeAsBytesSync(decodedBytes);

    /*
    List<Image> outputImageList = <Image>[];
    for (imglib.Image img in pieceList) {
      outputImageList.add(Image.memory(imglib.encodeJpg(img)));
    }


    return outputImageList;
     */
  }
   */

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = TransformationController();
    controller1 = TransformationController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
    controller1.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.indigo,
            title: const Text(
              'Set Your Puzzle',
              style: TextStyle(
                color: Colors.yellow
              ),
            ),
            actions: [
              InkWell(
                onTap: () {},
                child: ClipOval(
                  child: Lottie.asset(
                    'assets/7491-uploading-files.json',
                    width: 50,
                    height: 50
                  ),
                ),
              )
            ],
          ),
          body: Form(
            key: form,
            child: SafeArea(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      child: Center(
                        // ignore: unnecessary_null_comparison
                        child: widget.image == null ?
                        Container(
                          width: double.infinity,
                          height: 200,
                          child: const Center(
                            child: Icon(
                              Icons.add,
                              size: 150,
                            ),
                          ),
                        ) :
                        Container(
                          width: double.infinity,
                          height: 200,
                          child: Image.file(
                              widget.image
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.transparent,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: TextFormField(
                      controller: textEditingController,
                      decoration: const InputDecoration(
                        hintText: 'Set Puzzle Name',
                        labelText: 'Puzzle Name',
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Please set your Puzzle Name';
                        }
                      },
                    ),
                  ),
                  const Divider(
                    color: Colors.transparent,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: TextFormField(
                      controller: username,
                      decoration: InputDecoration(
                          hintText: 'Set User Name',
                          labelText: 'User Name',
                          suffix: ClipOval(
                              child: Lottie.asset(
                                  'assets/9992-name-profile-icon-animation-filled.json',
                                  width: 20,
                                  height: 20
                              )
                          )
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Please set your Puzzle Name';
                        }
                      },
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.file(
                            widget.image
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          /*
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _splitImages(
                'https://tile.loc.gov/image-services/iiif/service:gmd:gmd409:g4093:g4093m:la002141/full/pct:12.5/0/default.jpg'
              );
            },
            child: const Icon(
              Icons.add
            ),
          ),
           */
        ),
    );
  }
}



