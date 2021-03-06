import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:marquee/marquee.dart';
import 'package:puzzle_app/Chinesegame/chinesegame7.dart';


// ignore: camel_case_types, must_be_immutable
class chinesegame6 extends StatefulWidget {

  String name;
  String pic;
  String email;

  chinesegame6({
    Key? key,
    required this.name,
    required this.pic,
    required this.email,
  }) : super(key: key);

  @override
  _chinesegame6State createState() => _chinesegame6State();
}

// ignore: camel_case_types
class _chinesegame6State extends State<chinesegame6> with TickerProviderStateMixin {

  CollectionReference reference = FirebaseFirestore.instance.collection('Chinese Game(6)');

  bool set1 = false;
  bool set2 = false;
  bool set3 = false;
  bool set4 = false;
  bool set5 = false;
  bool set6 = false;
  bool set7 = false;
  bool set8 = false;
  bool set9 = false;
  bool set10 = false;
  bool set11 = false;
  bool set12 = false;
  bool set13 = false;
  bool set14 = false;
  bool set15 = false;

  late final AnimationController _controller = AnimationController(
    vsync: this, // the SingleTickerProviderStateMixin
    duration: const Duration(seconds: 2),
  )..forward();
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  late final AnimationController _controller2 = AnimationController(
    vsync: this, // the SingleTickerProviderStateMixin
    duration: const Duration(seconds: 3),
  )..forward();
  late final Animation<double> _animation2 = CurvedAnimation(
    parent: _controller2,
    curve: Curves.easeIn,
  );

  late final AnimationController _controller3 = AnimationController(
    vsync: this, // the SingleTickerProviderStateMixin
    duration: const Duration(seconds: 4),
  )..forward();
  late final Animation<double> _animation3 = CurvedAnimation(
    parent: _controller3,
    curve: Curves.easeIn,
  );

  late final AnimationController _controller4 = AnimationController(
    vsync: this, // the SingleTickerProviderStateMixin
    duration: const Duration(seconds: 5),
  )..forward();
  late final Animation<double> _animation4 = CurvedAnimation(
    parent: _controller4,
    curve: Curves.easeIn,
  );

  late final AnimationController _controller5 = AnimationController(
    vsync: this, // the SingleTickerProviderStateMixin
    duration: const Duration(seconds: 6),
  )..forward();
  late final Animation<double> _animation5 = CurvedAnimation(
    parent: _controller5,
    curve: Curves.easeIn,
  );

  late final AnimationController _controller6 = AnimationController(
    vsync: this, // the SingleTickerProviderStateMixin
    duration: const Duration(seconds: 2),
  )..forward();
  late final Animation<double> _animation6 = CurvedAnimation(
    parent: _controller6,
    curve: Curves.easeIn,
  );

  late final AnimationController _controller7 = AnimationController(
    vsync: this, // the SingleTickerProviderStateMixin
    duration: const Duration(seconds: 3),
  )..forward();
  late final Animation<double> _animation7 = CurvedAnimation(
    parent: _controller7,
    curve: Curves.easeIn,
  );

  late final AnimationController _controller8 = AnimationController(
    vsync: this, // the SingleTickerProviderStateMixin
    duration: const Duration(seconds: 4),
  )..forward();
  late final Animation<double> _animation8 = CurvedAnimation(
    parent: _controller8,
    curve: Curves.easeIn,
  );

  late final AnimationController _controller9 = AnimationController(
    vsync: this, // the SingleTickerProviderStateMixin
    duration: const Duration(seconds: 5),
  )..forward();
  late final Animation<double> _animation9 = CurvedAnimation(
    parent: _controller9,
    curve: Curves.easeIn,
  );

  late final AnimationController _controller10 = AnimationController(
    vsync: this, // the SingleTickerProviderStateMixin
    duration: const Duration(seconds: 6),
  )..forward();
  late final Animation<double> _animation10 = CurvedAnimation(
    parent: _controller10,
    curve: Curves.easeIn,
  );

  late final AnimationController _controller11 = AnimationController(
    vsync: this, // the SingleTickerProviderStateMixin
    duration: const Duration(seconds: 2),
  )..forward();
  late final Animation<double> _animation11 = CurvedAnimation(
    parent: _controller11,
    curve: Curves.easeIn,
  );

  late final AnimationController _controller12 = AnimationController(
    vsync: this, // the SingleTickerProviderStateMixin
    duration: const Duration(seconds: 3),
  )..forward();
  late final Animation<double> _animation12 = CurvedAnimation(
    parent: _controller12,
    curve: Curves.easeIn,
  );

  late final AnimationController _controller13 = AnimationController(
    vsync: this, // the SingleTickerProviderStateMixin
    duration: const Duration(seconds: 4),
  )..forward();
  late final Animation<double> _animation13 = CurvedAnimation(
    parent: _controller13,
    curve: Curves.easeIn,
  );

  late final AnimationController _controller14 = AnimationController(
    vsync: this, // the SingleTickerProviderStateMixin
    duration: const Duration(seconds: 5),
  )..forward();
  late final Animation<double> _animation14 = CurvedAnimation(
    parent: _controller14,
    curve: Curves.easeIn,
  );

  late final AnimationController _controller15 = AnimationController(
    vsync: this, // the SingleTickerProviderStateMixin
    duration: const Duration(seconds: 6),
  )..forward();
  late final Animation<double> _animation15 = CurvedAnimation(
    parent: _controller15,
    curve: Curves.easeIn,
  );

  late final AnimationController _controllernext = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _controllernext,
    curve: Curves.elasticIn,
  ));

  late final AnimationController _controllernew = AnimationController(
    vsync: this, // the SingleTickerProviderStateMixin
    duration: const Duration(seconds: 7),
  )..forward();
  late final Animation<double> _animationnew = CurvedAnimation(
    parent: _controllernew,
    curve: Curves.easeIn,
  );

  double angle = 0;

  var number = ['???', '???', '???', '???', '???', '???', '???', '???', '???', '???', '???', '???', '???', '???', '???', '???', '???', '???', '???', 0];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    number.shuffle();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controllernew.dispose();
    _controllernext.dispose();
    _controller.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    _controller5.dispose();
    _controller6.dispose();
    _controller7.dispose();
    _controller8.dispose();
    _controller9.dispose();
    _controller10.dispose();
    _controller11.dispose();
    _controller12.dispose();
    _controller13.dispose();
    _controller14.dispose();
    _controller15.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    CollectionReference ref = FirebaseFirestore.instance.collection(widget.name + ' Chinese Game(6)');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          'Four-Character Idiom (6)',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          height: size.height,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 30,
                color: Colors.indigo,
                child: Marquee(
                  text: 'The game can be played repeatedly, If you want to check the score you can go to the setting page',
                  style: const TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 17
                  ),
                  blankSpace: 30,
                  velocity: 100,
                  pauseAfterRound: const Duration(
                      seconds: 3
                  ),
                  scrollAxis: Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: size.height * 0.60,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                      ),
                      itemCount: number.length,
                      itemBuilder: (context, index){
                        final numbers = number[index];

                        return number[index] != 0 ?
                        InkWell(
                            onTap: () {
                              if(set2 == false){
                                if(index - 1 >= 0 && number[index - 1] == 0 && index % 4 != 0 ||
                                    index + 1 < 16 && number[index + 1] == 0 && (index + 1) % 4 != 0 ||
                                    (index - 4 >= 0 && number[index - 4] == 0) ||
                                    (index + 4 < 20 && number[index + 4] == 0)
                                ){
                                  setState(() {
                                    number[number.indexOf(0)] = number[index];
                                    number[index] = 0;
                                  });
                                }
                              } else {
                                return;
                              }
                            },
                            child: Padding(
                                padding: const EdgeInsets.only(top: 5, left: 5),
                                child: Container(
                                    height: size.height * 0.60,
                                    decoration: const BoxDecoration(
                                        color: Colors.yellow,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          topLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                        )
                                    ),
                                    child: Center(
                                      child: Text(
                                        '$numbers',
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black
                                        ),
                                      ),
                                    )
                                )
                            )
                        ) :
                        Padding(
                            padding: const EdgeInsets.only(top: 5, left: 5),
                            child: Container(
                                height: size.height * 0.60,
                                decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      topLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    )
                                ),
                                child: const Center(
                                  child: Text(
                                    '',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    ),
                                  ),
                                )
                            )
                        );
                      },
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      set1 == true && (number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                          set1 == true && (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                          set1 == true && (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                          set1 == true && (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???') ||
                          set1 == true && (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')?
                      Row(
                        children: [
                          FadeTransition(
                            opacity: _animation,
                            child: const Text(
                              '???',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          FadeTransition(
                            opacity: _animation2,
                            child: const Text(
                              '???',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          FadeTransition(
                            opacity: _animation3,
                            child: const Text(
                              '???',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          FadeTransition(
                            opacity: _animation4,
                            child: const Text(
                              '???',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: FadeTransition(
                                opacity: _animation5,
                                child: const CircleAvatar(
                                  backgroundColor: Colors.green,
                                  child: Icon(
                                    Icons.check,
                                    size: 30,
                                  ),
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: FadeTransition(
                                opacity: _animationnew,
                                child: TextButton(
                                  onPressed: () {
                                    showGeneralDialog(
                                      barrierLabel: "Label",
                                      barrierDismissible: false,
                                      barrierColor: Colors.black.withOpacity(0.5),
                                      transitionDuration: const Duration(milliseconds: 700),
                                      context: context,
                                      pageBuilder: (context, anim1, anim2) {
                                        return Dialog(
                                            child: Container(
                                              width: 300,
                                              height: 300,
                                              color: Colors.white,
                                              child: ListView(
                                                children: const [
                                                  Padding(
                                                    padding: EdgeInsets.only(top: 10),
                                                    child: Text(
                                                      '????????????: ??????/Meaning',
                                                      style: TextStyle(
                                                          fontSize: 22,
                                                          color: Colors.black,
                                                          fontWeight: FontWeight.bold
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(top: 20),
                                                    child: ExpansionTile(
                                                      title: Text(
                                                        '????????????: ??????(??????)',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                      ),
                                                      children: [
                                                        Text(
                                                          '?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '???????????n p??n l?? d??o',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '???????????????????????????????????????',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '????????????????????????',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '????????????????????????????????????????????????????????????????????????????????????????????????????????',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '????????????????????????????????????????????????????????????????????????',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(top: 20),
                                                    child: ExpansionTile(
                                                      title: Text(
                                                        '????????????: Meaning(English)',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                      ),
                                                      children: [
                                                        Text(
                                                          'Meaning???Although the situation is very poor, still willing to hold fast to the faith.',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          'Antonym???Do whatever you want',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          'Synonym???Anpo guard road',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          'Usage???Describes people for the realization of their beliefs or ideals; would rather be in a poor and harsh environment. Generally used as predicate, attributive.',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          'Example???Peace of mind and happiness is the attitude of life in the world advocated by ancient Confucianism.',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                        );
                                      },
                                      transitionBuilder: (context, anim1, anim2, child) {
                                        return SlideTransition(
                                          position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0)).animate(anim1),
                                          child: child,
                                        );
                                      },
                                    );
                                  },
                                  child: const Text(
                                      'View Meaning'
                                  ),
                                )
                            ),
                          )
                        ],
                      ) : set1 == true ?
                      Row(
                        children: [
                          FadeTransition(
                            opacity: _animation,
                            child: const Text(
                              '???',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          FadeTransition(
                            opacity: _animation2,
                            child: const Text(
                              '???',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          FadeTransition(
                            opacity: _animation3,
                            child: const Text(
                              '???',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          FadeTransition(
                            opacity: _animation4,
                            child: const Text(
                              '???',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: FadeTransition(
                                opacity: _animation5,
                                child: const CircleAvatar(
                                  backgroundColor: Colors.red,
                                  child: Icon(
                                    Icons.close,
                                    size: 30,
                                  ),
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: FadeTransition(
                                opacity: _animationnew,
                                child: TextButton(
                                  onPressed: () {
                                    showGeneralDialog(
                                      barrierLabel: "Label",
                                      barrierDismissible: false,
                                      barrierColor: Colors.black.withOpacity(0.5),
                                      transitionDuration: const Duration(milliseconds: 700),
                                      context: context,
                                      pageBuilder: (context, anim1, anim2) {
                                        return Dialog(
                                            child: Container(
                                              width: 300,
                                              height: 300,
                                              color: Colors.white,
                                              child: ListView(
                                                children: const [
                                                  Padding(
                                                    padding: EdgeInsets.only(top: 10),
                                                    child: Text(
                                                      '????????????: ??????/Meaning',
                                                      style: TextStyle(
                                                          fontSize: 22,
                                                          color: Colors.black,
                                                          fontWeight: FontWeight.bold
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(top: 20),
                                                    child: ExpansionTile(
                                                      title: Text(
                                                        '????????????: ??????(??????)',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                      ),
                                                      children: [
                                                        Text(
                                                          '?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '???????????n p??n l?? d??o',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '???????????????????????????????????????',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '????????????????????????',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '????????????????????????????????????????????????????????????????????????????????????????????????????????',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '????????????????????????????????????????????????????????????????????????',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(top: 20),
                                                    child: ExpansionTile(
                                                      title: Text(
                                                        '????????????: Meaning(English)',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                      ),
                                                      children: [
                                                        Text(
                                                          'Meaning???Although the situation is very poor, still willing to hold fast to the faith.',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          'Antonym???Do whatever you want',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          'Synonym???Anpo guard road',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          'Usage???Describes people for the realization of their beliefs or ideals; would rather be in a poor and harsh environment. Generally used as predicate, attributive.',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          'Example???Peace of mind and happiness is the attitude of life in the world advocated by ancient Confucianism.',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                        );
                                      },
                                      transitionBuilder: (context, anim1, anim2, child) {
                                        return SlideTransition(
                                          position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0)).animate(anim1),
                                          child: child,
                                        );
                                      },
                                    );
                                  },
                                  child: const Text(
                                      'View Meaning'
                                  ),
                                )
                            ),
                          )
                        ],
                      ) :
                      const Text(
                          ''
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: set1 == true && (number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                            set1 == true && (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                            set1 == true && (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                            set1 == true && (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???') ||
                            set1 == true && (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')?
                        Row(
                          children: [
                            FadeTransition(
                              opacity: _animation,
                              child: const Text(
                                '???',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            FadeTransition(
                              opacity: _animation2,
                              child: const Text(
                                '???',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            FadeTransition(
                              opacity: _animation3,
                              child: const Text(
                                '???',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            FadeTransition(
                              opacity: _animation4,
                              child: const Text(
                                '???',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: FadeTransition(
                                  opacity: _animation5,
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.green,
                                    child: Icon(
                                      Icons.check,
                                      size: 30,
                                    ),
                                  )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: FadeTransition(
                                  opacity: _animationnew,
                                  child: TextButton(
                                    onPressed: () {
                                      showGeneralDialog(
                                        barrierLabel: "Label",
                                        barrierDismissible: false,
                                        barrierColor: Colors.black.withOpacity(0.5),
                                        transitionDuration: const Duration(milliseconds: 700),
                                        context: context,
                                        pageBuilder: (context, anim1, anim2) {
                                          return Dialog(
                                              child: Container(
                                                width: 300,
                                                height: 300,
                                                color: Colors.white,
                                                child: ListView(
                                                  children: const [
                                                    Padding(
                                                      padding: EdgeInsets.only(top: 10),
                                                      child: Text(
                                                        '????????????: ??????/Meaning',
                                                        style: TextStyle(
                                                            fontSize: 22,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(top: 20),
                                                      child: ExpansionTile(
                                                        title: Text(
                                                          '????????????: ??????(??????)',
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.bold
                                                          ),
                                                        ),
                                                        children: [
                                                          Text(
                                                            '???????????????????????????????????????????????????????????????????????????????????????????????????????????????',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '?????????b??i zh?? b?? n??o',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '??????????????????????????????????????????????????????',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '??????????????????????????????????????????????????????',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '????????????????????????????????????????????????????????????????????????????????????????????????????????????',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '???????????????????????????????????????????????????, ??????????????????????????????, ???????????????????????????',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(top: 20),
                                                      child: ExpansionTile(
                                                        title: Text(
                                                          '????????????: Meaning(English)',
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.bold
                                                          ),
                                                        ),
                                                        children: [
                                                          Text(
                                                            'Meaning???No matter how many setbacks are encountered, do not back down, do not give in.',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            'Antonym???retreat from difficulty && slumped && give up halfway',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            'Synonym???perseverance && tenacity',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            'Usage???More to describe the firm-willed; not afraid of difficulties; perseverance to the end of the term. Generally used as predicate, attributive, adverbial.',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            'Example???He practiced hard for five years with perseverance and perseverance, and finally climbed Mount Everest, the highest point in the world.',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                          );
                                        },
                                        transitionBuilder: (context, anim1, anim2, child) {
                                          return SlideTransition(
                                            position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0)).animate(anim1),
                                            child: child,
                                          );
                                        },
                                      );
                                    },
                                    child: const Text(
                                        'View Meaning'
                                    ),
                                  )
                              ),
                            )
                          ],
                        ) : set1 == true ?
                        Row(
                          children: [
                            FadeTransition(
                              opacity: _animation,
                              child: const Text(
                                '???',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            FadeTransition(
                              opacity: _animation2,
                              child: const Text(
                                '???',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            FadeTransition(
                              opacity: _animation3,
                              child: const Text(
                                '???',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            FadeTransition(
                              opacity: _animation4,
                              child: const Text(
                                '???',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: FadeTransition(
                                  opacity: _animation5,
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.red,
                                    child: Icon(
                                      Icons.close,
                                      size: 30,
                                    ),
                                  )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: FadeTransition(
                                  opacity: _animationnew,
                                  child: TextButton(
                                    onPressed: () {
                                      showGeneralDialog(
                                        barrierLabel: "Label",
                                        barrierDismissible: false,
                                        barrierColor: Colors.black.withOpacity(0.5),
                                        transitionDuration: const Duration(milliseconds: 700),
                                        context: context,
                                        pageBuilder: (context, anim1, anim2) {
                                          return Dialog(
                                              child: Container(
                                                width: 300,
                                                height: 300,
                                                color: Colors.white,
                                                child: ListView(
                                                  children: const [
                                                    Padding(
                                                      padding: EdgeInsets.only(top: 10),
                                                      child: Text(
                                                        '????????????: ??????/Meaning',
                                                        style: TextStyle(
                                                            fontSize: 22,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(top: 20),
                                                      child: ExpansionTile(
                                                        title: Text(
                                                          '????????????: ??????(??????)',
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.bold
                                                          ),
                                                        ),
                                                        children: [
                                                          Text(
                                                            '???????????????????????????????????????????????????????????????????????????????????????????????????????????????',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '?????????b??i zh?? b?? n??o',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '??????????????????????????????????????????????????????',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '??????????????????????????????????????????????????????',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '????????????????????????????????????????????????????????????????????????????????????????????????????????????',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '???????????????????????????????????????????????????, ??????????????????????????????, ???????????????????????????',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(top: 20),
                                                      child: ExpansionTile(
                                                        title: Text(
                                                          '????????????: Meaning(English)',
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.bold
                                                          ),
                                                        ),
                                                        children: [
                                                          Text(
                                                            'Meaning???No matter how many setbacks are encountered, do not back down, do not give in.',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            'Antonym???retreat from difficulty && slumped && give up halfway',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            'Synonym???perseverance && tenacity',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            'Usage???More to describe the firm-willed; not afraid of difficulties; perseverance to the end of the term. Generally used as predicate, attributive, adverbial.',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            'Example???He practiced hard for five years with perseverance and perseverance, and finally climbed Mount Everest, the highest point in the world.',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                          );
                                        },
                                        transitionBuilder: (context, anim1, anim2, child) {
                                          return SlideTransition(
                                            position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0)).animate(anim1),
                                            child: child,
                                          );
                                        },
                                      );
                                    },
                                    child: const Text(
                                        'View Meaning'
                                    ),
                                  )
                              ),
                            )
                          ],
                        ) :
                        const Text(
                            ''
                        ),
                      )
                    ],
                  ),
                  set3 == true && number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???' ||
                      set3 == true && number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???' ||
                      set3 == true && number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???' ||
                      set3 == true && number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???' ||
                      set3 == true && number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'?
                  Row(
                    children: [
                      FadeTransition(
                        opacity: _animation6,
                        child: const Text(
                          '???',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation7,
                        child: const Text(
                          '???',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation8,
                        child: const Text(
                          '???',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation9,
                        child: const Text(
                          '???',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: FadeTransition(
                            opacity: _animation10,
                            child: const CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Icon(
                                Icons.check,
                                size: 30,
                              ),
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: FadeTransition(
                            opacity: _animationnew,
                            child: TextButton(
                              onPressed: () {
                                showGeneralDialog(
                                  barrierLabel: "Label",
                                  barrierDismissible: false,
                                  barrierColor: Colors.black.withOpacity(0.5),
                                  transitionDuration: const Duration(milliseconds: 700),
                                  context: context,
                                  pageBuilder: (context, anim1, anim2) {
                                    return Dialog(
                                        child: Container(
                                          width: 300,
                                          height: 300,
                                          color: Colors.white,
                                          child: ListView(
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.only(top: 10),
                                                child: Text(
                                                  '????????????: ??????/Meaning',
                                                  style: TextStyle(
                                                      fontSize: 22,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 20),
                                                child: ExpansionTile(
                                                  title: Text(
                                                    '????????????: ??????(??????)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '???????????n t?? su?? j??',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '????????????????????????',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '???????????????????????????????????????',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '????????????????????????????????????????????????????????????????????????????????????????????????????????????',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '??????:??????????????????????????????????????????????????????????????????????????????????????????????????????????',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '????????????????????????????????????, ??????????????????????????????, ????????????????????????????????????',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 20),
                                                child: ExpansionTile(
                                                  title: Text(
                                                    '????????????: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning???The metaphor follows clues to find what you need.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym???Not out of the norm',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym???According to the script',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage???A lot of derogatory connotations. Used as a metaphor to follow clues to find things. Generally used as predicate; also used as attribute, adverbial.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example???The function of the index in the reference book is to allow people to follow the map and find the information they want quickly.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                    );
                                  },
                                  transitionBuilder: (context, anim1, anim2, child) {
                                    return SlideTransition(
                                      position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0)).animate(anim1),
                                      child: child,
                                    );
                                  },
                                );
                              },
                              child: const Text(
                                  'View Meaning'
                              ),
                            )
                        ),
                      )
                    ],
                  ) : set3 == true ?
                  Row(
                    children: [
                      FadeTransition(
                        opacity: _animation6,
                        child: const Text(
                          '???',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation7,
                        child: const Text(
                          '???',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation8,
                        child: const Text(
                          '???',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation9,
                        child: const Text(
                          '???',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: FadeTransition(
                            opacity: _animation10,
                            child: const CircleAvatar(
                              backgroundColor: Colors.red,
                              child: Icon(
                                Icons.close,
                                size: 30,
                              ),
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: FadeTransition(
                            opacity: _animationnew,
                            child: TextButton(
                              onPressed: () {
                                showGeneralDialog(
                                  barrierLabel: "Label",
                                  barrierDismissible: false,
                                  barrierColor: Colors.black.withOpacity(0.5),
                                  transitionDuration: const Duration(milliseconds: 700),
                                  context: context,
                                  pageBuilder: (context, anim1, anim2) {
                                    return Dialog(
                                        child: Container(
                                          width: 300,
                                          height: 300,
                                          color: Colors.white,
                                          child: ListView(
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.only(top: 10),
                                                child: Text(
                                                  '????????????: ??????/Meaning',
                                                  style: TextStyle(
                                                      fontSize: 22,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 20),
                                                child: ExpansionTile(
                                                  title: Text(
                                                    '????????????: ??????(??????)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '???????????n t?? su?? j??',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '????????????????????????',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '???????????????????????????????????????',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '????????????????????????????????????????????????????????????????????????????????????????????????????????????',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '??????:??????????????????????????????????????????????????????????????????????????????????????????????????????????',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '????????????????????????????????????, ??????????????????????????????, ????????????????????????????????????',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 20),
                                                child: ExpansionTile(
                                                  title: Text(
                                                    '????????????: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning???The metaphor follows clues to find what you need.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym???Not out of the norm',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym???According to the script',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage???A lot of derogatory connotations. Used as a metaphor to follow clues to find things. Generally used as predicate; also used as attribute, adverbial.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example???The function of the index in the reference book is to allow people to follow the map and find the information they want quickly.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                    );
                                  },
                                  transitionBuilder: (context, anim1, anim2, child) {
                                    return SlideTransition(
                                      position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0)).animate(anim1),
                                      child: child,
                                    );
                                  },
                                );
                              },
                              child: const Text(
                                  'View Meaning'
                              ),
                            )
                        ),
                      )
                    ],
                  ) :
                  const Text(
                      ''
                  ),
                  set4 == true && number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???' ||
                      set4 == true && number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???' ||
                      set4 == true && number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???' ||
                      set4 == true && number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???' ||
                      set4 == true && number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'?
                  Row(
                    children: [
                      FadeTransition(
                        opacity: _animation11,
                        child: const Text(
                          '???',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation12,
                        child: const Text(
                          '???',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation13,
                        child: const Text(
                          '???',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation14,
                        child: const Text(
                          '???',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: FadeTransition(
                            opacity: _animation15,
                            child: const CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Icon(
                                Icons.check,
                                size: 30,
                              ),
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: FadeTransition(
                            opacity: _animationnew,
                            child: TextButton(
                              onPressed: () {
                                showGeneralDialog(
                                  barrierLabel: "Label",
                                  barrierDismissible: false,
                                  barrierColor: Colors.black.withOpacity(0.5),
                                  transitionDuration: const Duration(milliseconds: 700),
                                  context: context,
                                  pageBuilder: (context, anim1, anim2) {
                                    return Dialog(
                                        child: Container(
                                          width: 300,
                                          height: 300,
                                          color: Colors.white,
                                          child: ListView(
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.only(top: 10),
                                                child: Text(
                                                  '????????????: ??????/Meaning',
                                                  style: TextStyle(
                                                      fontSize: 22,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 20),
                                                child: ExpansionTile(
                                                  title: Text(
                                                    '????????????: ??????(??????)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '?????????b??i j?? gu?? x??',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '????????????????????????',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '???????????????????????????????????????',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '??????????????????????????????????????????????????????',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '??????????????????????????????????????????????????????????????????????????????????????????????????',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '?????????????????????, ???????????????, ?????????????????????, ???????????????????????????????????????',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 20),
                                                child: ExpansionTile(
                                                  title: Text(
                                                    '????????????: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning???Metaphor time flies fast, time is fleeting.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym???day by day',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym???Time is like an arrow && The sun and the moon are like a shuttle',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage???A metaphor for how time flies. Generally used as an object.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example???Time flies, like a white horse passing a gap, and twenty years later, she finally saw white hair on her temples.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                    );
                                  },
                                  transitionBuilder: (context, anim1, anim2, child) {
                                    return SlideTransition(
                                      position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0)).animate(anim1),
                                      child: child,
                                    );
                                  },
                                );
                              },
                              child: const Text(
                                  'View Meaning'
                              ),
                            )
                        ),
                      )
                    ],
                  ) : set4 == true ?
                  Row(
                    children: [
                      FadeTransition(
                        opacity: _animation11,
                        child: const Text(
                          '???',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation12,
                        child: const Text(
                          '???',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation13,
                        child: const Text(
                          '???',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation14,
                        child: const Text(
                          '???',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: FadeTransition(
                            opacity: _animation15,
                            child: const CircleAvatar(
                              backgroundColor: Colors.red,
                              child: Icon(
                                Icons.close,
                                size: 30,
                              ),
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: FadeTransition(
                            opacity: _animationnew,
                            child: TextButton(
                              onPressed: () {
                                showGeneralDialog(
                                  barrierLabel: "Label",
                                  barrierDismissible: false,
                                  barrierColor: Colors.black.withOpacity(0.5),
                                  transitionDuration: const Duration(milliseconds: 700),
                                  context: context,
                                  pageBuilder: (context, anim1, anim2) {
                                    return Dialog(
                                        child: Container(
                                          width: 300,
                                          height: 300,
                                          color: Colors.white,
                                          child: ListView(
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.only(top: 10),
                                                child: Text(
                                                  '????????????: ??????/Meaning',
                                                  style: TextStyle(
                                                      fontSize: 22,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 20),
                                                child: ExpansionTile(
                                                  title: Text(
                                                    '????????????: ??????(??????)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '?????????b??i j?? gu?? x??',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '????????????????????????',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '???????????????????????????????????????',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '??????????????????????????????????????????????????????',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '??????????????????????????????????????????????????????????????????????????????????????????????????',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '?????????????????????, ???????????????, ?????????????????????, ???????????????????????????????????????',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 20),
                                                child: ExpansionTile(
                                                  title: Text(
                                                    '????????????: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning???Metaphor time flies fast, time is fleeting.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym???day by day',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym???Time is like an arrow && The sun and the moon are like a shuttle',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage???A metaphor for how time flies. Generally used as an object.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example???Time flies, like a white horse passing a gap, and twenty years later, she finally saw white hair on her temples.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                    );
                                  },
                                  transitionBuilder: (context, anim1, anim2, child) {
                                    return SlideTransition(
                                      position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0)).animate(anim1),
                                      child: child,
                                    );
                                  },
                                );
                              },
                              child: const Text(
                                  'View Meaning'
                              ),
                            )
                        ),
                      )
                    ],
                  ) :
                  const Text(
                      ''
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {

          setState(() {
            set1 = true;
            set2 = true;
            set3 = true;
            set4 = true;
          });

          reference.add({
            'Name' : widget.name,
            'Email' : widget.email,
            'Pic' : widget.pic,
            'Game' : 'Four-Character Idiom (Chinese) (1)',
            'Time' : DateTime.now(),
            'Mark' : (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???') ||
                (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))
            )?
            '4/4' :
            (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???') ||
                (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ||
                (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                    ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                        (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                        (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                        (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                        (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))&&
                    ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                        (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                        (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                        (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                        (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ||
                (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???') ||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                    ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                        (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                        (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                        (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                        (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))&&
                    ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                        (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                        (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                        (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                        (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ||
                (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???') ||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))&&
                    ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                        (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                        (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                        (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                        (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))&&
                    ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                        (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                        (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                        (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                        (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')))?
                '3/4' :

            (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???') ||
                (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ||

                (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                    ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                        (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                        (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                        (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                        (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ||

                (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???') ||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                    ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                        (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                        (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                        (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                        (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ||

                (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???') ||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                    ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                        (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                        (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                        (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                        (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ||

                (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                    ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                        (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                        (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                        (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                        (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ||

                (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                    ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                        (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                        (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                        (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                        (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ?
            '2/4' :
            (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???') ||
                (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) ||
                (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) ||
                    ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                        (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                        (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                        (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                        (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))||
                    ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                        (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                        (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                        (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                        (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')))
            ) ?
            '1/4' :
            '0/4'
          });

          ref.add({
            'Name' : widget.name,
            'Email' : widget.email,
            'Pic' : widget.pic,
            'Game' : 'Four-Character Idiom (Chinese) (1)',
            'Time' : DateTime.now(),
            'Mark' : (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???') ||
                (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))
            )?
            '4/4' :
            (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???') ||
                (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ||
                (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                    ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                        (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                        (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                        (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                        (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))&&
                    ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                        (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                        (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                        (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                        (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ||
                (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???') ||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                    ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                        (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                        (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                        (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                        (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))&&
                    ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                        (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                        (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                        (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                        (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ||
                (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???') ||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))&&
                    ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                        (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                        (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                        (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                        (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))&&
                    ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                        (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                        (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                        (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                        (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')))?
            '3/4' :

            (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???') ||
                (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ||

                (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                    ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                        (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                        (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                        (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                        (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ||

                (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???') ||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                    ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                        (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                        (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                        (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                        (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ||

                (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???') ||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                    ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                        (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                        (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                        (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                        (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ||

                (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                    ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                        (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                        (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                        (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                        (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ||

                (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                    ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                        (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                        (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                        (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                        (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ?
            '2/4' :
            (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???') ||
                (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) ||
                (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                    (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                    (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                    (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                    (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) ||
                    ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                        (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                        (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                        (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                        (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))||
                    ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                        (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                        (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                        (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                        (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')))
            ) ?
            '1/4' :
            '0/4'
          }).whenComplete(() async {
            await Future.delayed(
                const Duration(
                  seconds: 3,
                ),
                    () {
                  showGeneralDialog(
                    barrierLabel: "Label",
                    barrierDismissible: false,
                    barrierColor: Colors.black.withOpacity(0.5),
                    transitionDuration: const Duration(milliseconds: 700),
                    context: context,
                    pageBuilder: (context, anim1, anim2) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)
                        ),
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        child: Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 100,
                                  bottom: 16,
                                  left: 16,
                                  right: 16
                              ),
                              margin: const EdgeInsets.only(top: 16),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(17),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 10.0,
                                        offset: Offset(0.0, 10.0)
                                    )
                                  ]
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        'Mark: ',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15),
                                        child: Text(
                                          (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                              (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                              (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                              (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???') ||
                                              (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                                              ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                  (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                  (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                  (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                                                  (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                                              ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                  (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                  (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                  (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                                                  (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                                              ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                  (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                  (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                  (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                                                  (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))
                                          )?
                                          '4/4' :
                                          (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                              (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                              (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                              (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???') ||
                                              (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                                              ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                  (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                  (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                  (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                                                  (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                                              ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                  (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                  (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                  (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                                                  (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ||
                                              (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                  (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                  (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                  (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                                                  (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                                                  ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                      (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                      (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                      (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                                                      (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))&&
                                                  ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                      (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                      (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                      (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                                                      (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ||
                                              (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                  (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                  (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                  (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???') ||
                                                  (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                                                  ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                      (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                      (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                      (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                                                      (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))&&
                                                  ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                      (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                      (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                      (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                                                      (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ||
                                              (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                  (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                  (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                  (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???') ||
                                                  (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))&&
                                                  ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                      (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                      (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                      (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                                                      (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))&&
                                                  ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                      (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                      (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                      (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                                                      (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')))?
                                          '3/4' :

                                          (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                              (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                              (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                              (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???') ||
                                              (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                                              ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                  (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                  (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                  (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                                                  (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ||

                                              (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                  (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                  (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                  (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                                                  (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                                                  ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                      (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                      (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                      (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                                                      (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ||

                                              (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                  (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                  (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                  (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???') ||
                                                  (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                                                  ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                      (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                      (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                      (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                                                      (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ||

                                              (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                  (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                  (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                  (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???') ||
                                                  (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                                                  ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                      (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                      (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                      (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                                                      (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ||

                                              (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                  (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                  (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                  (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                                                  (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                                                  ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                      (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                      (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                      (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                                                      (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ||

                                              (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                  (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                  (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                  (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                                                  (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) &&
                                                  ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                      (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                      (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                      (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                                                      (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))) ?
                                          '2/4' :
                                          (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                              (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                              (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                              (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???') ||
                                              (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) ||
                                              (((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                  (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                  (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                  (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                                                  (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')) ||
                                                  ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                      (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                      (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                      (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                                                      (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???'))||
                                                  ((number[0] == '???' && number[1] == '???' && number[2] == '???' && number[3] == '???') ||
                                                      (number[4] == '???' && number[5] == '???' && number[6] == '???' && number[7] == '???') ||
                                                      (number[8] == '???' && number[9] == '???' && number[10] == '???' && number[11] == '???') ||
                                                      (number[12] == '???' && number[13] == '???' && number[14] == '???' && number[15] == '???')||
                                                      (number[16] == '???' && number[17] == '???' && number[18] == '???' && number[19] == '???')))
                                          ) ?
                                          '1/4' :
                                          '0/4',
                                          style: const TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  const Text(
                                    'Whether to go to the Next Level ?',
                                    style: TextStyle(
                                        fontSize: 16
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  Align(
                                      alignment: Alignment.bottomRight,
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                style: ButtonStyle(
                                                    shape: MaterialStateProperty.all(
                                                      RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(16.0),
                                                      ),
                                                    ),
                                                    backgroundColor: MaterialStateProperty.all(Colors.blue)
                                                ),
                                                child: const Text(
                                                  'Home',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 10),
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  style: ButtonStyle(
                                                      shape: MaterialStateProperty.all(
                                                        RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(16.0),
                                                        ),
                                                      ),
                                                      backgroundColor: MaterialStateProperty.all(Colors.green)
                                                  ),
                                                  child: const Text(
                                                    'Stay on this Page',
                                                    style: TextStyle(
                                                        color: Colors.white
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        transitionDuration: const Duration(
                                                            seconds: 3
                                                        ),
                                                        transitionsBuilder: (context, animated, secAnimation, child) {
                                                          return SlideTransition(
                                                            position: _offsetAnimation,
                                                            child: child,
                                                          );
                                                        },
                                                        pageBuilder: (context, animated, secAnimation){
                                                          return chinesegame7(
                                                            name: widget.name,
                                                            email: widget.email,
                                                            pic: widget.pic,
                                                          );
                                                        }
                                                    )
                                                );
                                              },
                                              style: ButtonStyle(
                                                  shape: MaterialStateProperty.all(
                                                    RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(16.0),
                                                    ),
                                                  ),
                                                  backgroundColor: MaterialStateProperty.all(Colors.green)
                                              ),
                                              child: const Text(
                                                'Next Level',
                                                style: TextStyle(
                                                    color: Colors.white
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 16,
                              right: 16,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 50,
                                child: Lottie.asset(
                                    'assets/33886-check-okey-done.json',
                                    repeat: true
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    transitionBuilder: (context, anim1, anim2, child) {
                      return SlideTransition(
                        position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0)).animate(anim1),
                        child: child,
                      );
                    },
                  );
                }
            );
          }
          );
        },
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}



