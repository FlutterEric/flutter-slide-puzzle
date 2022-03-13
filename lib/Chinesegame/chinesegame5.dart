import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:marquee/marquee.dart';
import 'package:puzzle_app/Chinesegame/chinesegame6.dart';


// ignore: camel_case_types, must_be_immutable
class chinesegame5 extends StatefulWidget {

  String name;
  String pic;
  String email;

  chinesegame5({
    Key? key,
    required this.name,
    required this.pic,
    required this.email,
  }) : super(key: key);

  @override
  _chinesegame5State createState() => _chinesegame5State();
}

// ignore: camel_case_types
class _chinesegame5State extends State<chinesegame5> with TickerProviderStateMixin {

  CollectionReference reference = FirebaseFirestore.instance.collection('Chinese Game(5)');

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

  var number = ['津', '津', '有', '味', '精', '神', '抖', '擻', '名', '落', '孫', '山', '完', '成', '了', 0];

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
    CollectionReference ref = FirebaseFirestore.instance.collection(widget.name + ' Chinese Game(5)');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          'Four-Character Idiom (5)',
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
                                    (index + 4 < 16 && number[index + 4] == 0)
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
                  set1 == true && (number[0] == '津' && number[1] == '津' && number[2] == '有' && number[3] == '味') ||
                      set1 == true && (number[4] == '津' && number[5] == '津' && number[6] == '有' && number[7] == '味') ||
                      set1 == true && (number[8] == '津' && number[9] == '津' && number[10] == '有' && number[11] == '味') ||
                      set1 == true && (number[12] == '津' && number[13] == '津' && number[14] == '有' && number[15] == '味') ?
                  Row(
                    children: [
                      FadeTransition(
                        opacity: _animation,
                        child: const Text(
                          '津',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation2,
                        child: const Text(
                          '津',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation3,
                        child: const Text(
                          '有',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation4,
                        child: const Text(
                          '味',
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
                                                  '津津有味: 意義/Meaning',
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
                                                    '津津有味: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：津：口液；唾液；津津：興趣濃厚的樣子。形容趣味很濃或很有滋味。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：jīn jīn yǒu wèi',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：味同嚼蠟、索然無味、枯燥無味',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：興致勃勃',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：含褒義。形容吃東西有滋味或講話特別有興趣。一般作謂語、賓語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處：明·朱之瑜《朱舜水集·答野節書之十七首》：“佳作愈；讀愈覺津津有味；可見理勝之文；大勝他人詞致美好也。”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：老師在臺上講得神采飛揚；同學們聽得津津有味。',
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
                                                    '津津有味: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：Described as very interesting or very tasteful',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym：Tasteless && dull',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym：In high spirits',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：With compliments. Describes the taste of eating or a special interest in speaking. Generally used as predicate, object.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：The teacher spoke in high spirits on the stage; the students listened with relish.',
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
                          '津',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation2,
                        child: const Text(
                          '津',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation3,
                        child: const Text(
                          '有',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation4,
                        child: const Text(
                          '味',
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
                                                  '津津有味: 意義/Meaning',
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
                                                    '津津有味: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：津：口液；唾液；津津：興趣濃厚的樣子。形容趣味很濃或很有滋味。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：jīn jīn yǒu wèi',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：味同嚼蠟、索然無味、枯燥無味',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：興致勃勃',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：含褒義。形容吃東西有滋味或講話特別有興趣。一般作謂語、賓語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處：明·朱之瑜《朱舜水集·答野節書之十七首》：“佳作愈；讀愈覺津津有味；可見理勝之文；大勝他人詞致美好也。”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：老師在臺上講得神采飛揚；同學們聽得津津有味。',
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
                                                    '津津有味: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：Described as very interesting or very tasteful',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym：Tasteless && dull',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym：In high spirits',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：With compliments. Describes the taste of eating or a special interest in speaking. Generally used as predicate, object.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：The teacher spoke in high spirits on the stage; the students listened with relish.',
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
                  set3 == true && number[0] == '精' && number[1] == '神' && number[2] == '抖' && number[3] == '擻' ||
                      set3 == true && number[4] == '精' && number[5] == '神' && number[6] == '抖' && number[7] == '擻' ||
                      set3 == true && number[8] == '精' && number[9] == '神' && number[10] == '抖' && number[11] == '擻' ||
                      set3 == true && number[12] == '精' && number[13] == '神' && number[14] == '抖' && number[15] == '擻' ?
                  Row(
                    children: [
                      FadeTransition(
                        opacity: _animation6,
                        child: const Text(
                          '精',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation7,
                        child: const Text(
                          '神',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation8,
                        child: const Text(
                          '抖',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation9,
                        child: const Text(
                          '擻',
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
                                                  '精神抖擻: 意義/Meaning',
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
                                                    '精神抖擻: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：抖擻：振奮的樣子。精神振作。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：jīng shén dǒu sǒu',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：委靡不振、意志消沉',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：容光煥發、生龍活虎',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：含褒義。用來形容目光灼灼、神氣十足、步伐有力；非常奮發。一般作謂語、定語、狀語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處:元·尚仲賢《尉遲恭單鞭奪槊》第二折：“你道是精神抖擻；又道是機謀通透……這般夸口；又何況那區區洛附草寇！”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：他是個不知疲倦的人, 從來都是精神抖擻地在工作著。',
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
                                                    '精神抖擻: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：Refreshed',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym：Weary && Depressed',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym：Radiant && Alive',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：With compliments. Used to describe bright eyes, full of air, strong steps; very hardworking. Generally used as predicate, attributive, adverbial.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：He was a tireless man and was always in high spirits at work.',
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
                          '精',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation7,
                        child: const Text(
                          '神',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation8,
                        child: const Text(
                          '抖',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation9,
                        child: const Text(
                          '擻',
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
                                                  '精神抖擻: 意義/Meaning',
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
                                                    '精神抖擻: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：抖擻：振奮的樣子。精神振作。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：jīng shén dǒu sǒu',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：委靡不振、意志消沉',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：容光煥發、生龍活虎',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：含褒義。用來形容目光灼灼、神氣十足、步伐有力；非常奮發。一般作謂語、定語、狀語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處:元·尚仲賢《尉遲恭單鞭奪槊》第二折：“你道是精神抖擻；又道是機謀通透……這般夸口；又何況那區區洛附草寇！”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：他是個不知疲倦的人, 從來都是精神抖擻地在工作著。',
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
                                                    '精神抖擻: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：Refreshed',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym：Weary && Depressed',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym：Radiant && Alive',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：With compliments. Used to describe bright eyes, full of air, strong steps; very hardworking. Generally used as predicate, attributive, adverbial.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：He was a tireless man and was always in high spirits at work.',
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
                  set4 == true && number[0] == '名' && number[1] == '落' && number[2] == '孫' && number[3] == '山' ||
                      set4 == true && number[4] == '名' && number[5] == '落' && number[6] == '孫' && number[7] == '山' ||
                      set4 == true && number[8] == '名' && number[9] == '落' && number[10] == '孫' && number[11] == '山' ||
                      set4 == true && number[12] == '名' && number[13] == '落' && number[14] == '孫' && number[15] == '山' ?
                  Row(
                    children: [
                      FadeTransition(
                        opacity: _animation11,
                        child: const Text(
                          '名',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation12,
                        child: const Text(
                          '落',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation13,
                        child: const Text(
                          '孫',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation14,
                        child: const Text(
                          '山',
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
                                                  '名落孫山: 意義/Meaning',
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
                                                    '名落孫山: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：名字排在孫山后面。指考試未被錄取；榜上無名。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：míng luò sūn shān',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：名列前茅',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：一敗涂地',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：含貶義。一般作謂語、定語、補語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處：清·李寶嘉《官場現形記》第五十四回：“等到出榜；名落孫山；心上好不懊惱。”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：在高考的激烈競爭中, 我名落孫山。',
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
                                                    '名落孫山: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：Refers to an exam not accepted, no name on the list.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym：Exam ranking top',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym：A crushing defeat',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：Contains a derogatory connotation. Generally used as predicate, attributive, complement.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：In the fierce competition of the college entrance examination, my name fell into the sun.',
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
                          '名',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation12,
                        child: const Text(
                          '落',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation13,
                        child: const Text(
                          '孫',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation14,
                        child: const Text(
                          '山',
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
                                                  '名落孫山: 意義/Meaning',
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
                                                    '名落孫山: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：名字排在孫山后面。指考試未被錄取；榜上無名。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：míng luò sūn shān',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：名列前茅',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：一敗涂地',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：含貶義。一般作謂語、定語、補語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處：清·李寶嘉《官場現形記》第五十四回：“等到出榜；名落孫山；心上好不懊惱。”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：在高考的激烈競爭中, 我名落孫山。',
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
                                                    '名落孫山: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：Refers to an exam not accepted, no name on the list.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym：Exam ranking top',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym：A crushing defeat',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：Contains a derogatory connotation. Generally used as predicate, attributive, complement.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：In the fierce competition of the college entrance examination, my name fell into the sun.',
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
            'Mark' : (((number[0] == '津' && number[1] == '津' && number[2] == '有' && number[3] == '味') ||
                (number[4] == '津' && number[5] == '津' && number[6] == '有' && number[7] == '味') ||
                (number[8] == '津' && number[9] == '津' && number[10] == '有' && number[11] == '味') ||
                (number[12] == '津' && number[13] == '津' && number[14] == '有' && number[15] == '味')) &&
                ((number[0] == '精' && number[1] == '神' && number[2] == '抖' && number[3] == '擻') ||
                    (number[4] == '精' && number[5] == '神' && number[6] == '抖' && number[7] == '擻') ||
                    (number[8] == '精' && number[9] == '神' && number[10] == '抖' && number[11] == '擻') ||
                    (number[12] == '精' && number[13] == '神' && number[14] == '抖' && number[15] == '擻')) &&
                ((number[0] == '名' && number[1] == '落' && number[2] == '孫' && number[3] == '山') ||
                    (number[4] == '名' && number[5] == '落' && number[6] == '孫' && number[7] == '山') ||
                    (number[8] == '名' && number[9] == '落' && number[10] == '孫' && number[11] == '山') ||
                    (number[12] == '名' && number[13] == '落' && number[14] == '孫' && number[15] == '山'))
            )?
            '3/3' :
            (((number[0] == '津' && number[1] == '津' && number[2] == '有' && number[3] == '味') ||
                (number[4] == '津' && number[5] == '津' && number[6] == '有' && number[7] == '味') ||
                (number[8] == '津' && number[9] == '津' && number[10] == '有' && number[11] == '味') ||
                (number[12] == '津' && number[13] == '津' && number[14] == '有' && number[15] == '味')) &&
                ((number[0] == '精' && number[1] == '神' && number[2] == '抖' && number[3] == '擻') ||
                    (number[4] == '精' && number[5] == '神' && number[6] == '抖' && number[7] == '擻') ||
                    (number[8] == '精' && number[9] == '神' && number[10] == '抖' && number[11] == '擻') ||
                    (number[12] == '精' && number[13] == '神' && number[14] == '抖' && number[15] == '擻'))) ||

                (((number[0] == '津' && number[1] == '津' && number[2] == '有' && number[3] == '味') ||
                    (number[4] == '津' && number[5] == '津' && number[6] == '有' && number[7] == '味') ||
                    (number[8] == '津' && number[9] == '津' && number[10] == '有' && number[11] == '味') ||
                    (number[12] == '津' && number[13] == '津' && number[14] == '有' && number[15] == '味')) &&
                    ((number[0] == '名' && number[1] == '落' && number[2] == '孫' && number[3] == '山') ||
                        (number[4] == '名' && number[5] == '落' && number[6] == '孫' && number[7] == '山') ||
                        (number[8] == '名' && number[9] == '落' && number[10] == '孫' && number[11] == '山') ||
                        (number[12] == '名' && number[13] == '落' && number[14] == '孫' && number[15] == '山'))) ||

                (((number[0] == '精' && number[1] == '神' && number[2] == '抖' && number[3] == '擻') ||
                    (number[4] == '精' && number[5] == '神' && number[6] == '抖' && number[7] == '擻') ||
                    (number[8] == '精' && number[9] == '神' && number[10] == '抖' && number[11] == '擻') ||
                    (number[12] == '精' && number[13] == '神' && number[14] == '抖' && number[15] == '擻')) &&
                    ((number[0] == '名' && number[1] == '落' && number[2] == '孫' && number[3] == '山') ||
                        (number[4] == '名' && number[5] == '落' && number[6] == '孫' && number[7] == '山') ||
                        (number[8] == '名' && number[9] == '落' && number[10] == '孫' && number[11] == '山') ||
                        (number[12] == '名' && number[13] == '落' && number[14] == '孫' && number[15] == '山'))) ?
            '2/3' :
            (((number[0] == '津' && number[1] == '津' && number[2] == '有' && number[3] == '味') ||
                (number[4] == '津' && number[5] == '津' && number[6] == '有' && number[7] == '味') ||
                (number[8] == '津' && number[9] == '津' && number[10] == '有' && number[11] == '味') ||
                (number[12] == '津' && number[13] == '津' && number[14] == '有' && number[15] == '味')) ||
                (((number[0] == '精' && number[1] == '神' && number[2] == '抖' && number[3] == '擻') ||
                    (number[4] == '精' && number[5] == '神' && number[6] == '抖' && number[7] == '擻') ||
                    (number[8] == '精' && number[9] == '神' && number[10] == '抖' && number[11] == '擻') ||
                    (number[12] == '精' && number[13] == '神' && number[14] == '抖' && number[15] == '擻')) ||
                    ((number[0] == '名' && number[1] == '落' && number[2] == '孫' && number[3] == '山') ||
                        (number[4] == '名' && number[5] == '落' && number[6] == '孫' && number[7] == '山') ||
                        (number[8] == '名' && number[9] == '落' && number[10] == '孫' && number[11] == '山') ||
                        (number[12] == '名' && number[13] == '落' && number[14] == '孫' && number[15] == '山')))
            ) ?
            '1/3' :
            '0/3'
          });

          ref.add({
            'Name' : widget.name,
            'Email' : widget.email,
            'Pic' : widget.pic,
            'Game' : 'Four-Character Idiom (Chinese) (1)',
            'Time' : DateTime.now(),
            'Mark' : (((number[0] == '津' && number[1] == '津' && number[2] == '有' && number[3] == '味') ||
                (number[4] == '津' && number[5] == '津' && number[6] == '有' && number[7] == '味') ||
                (number[8] == '津' && number[9] == '津' && number[10] == '有' && number[11] == '味') ||
                (number[12] == '津' && number[13] == '津' && number[14] == '有' && number[15] == '味')) &&
                ((number[0] == '精' && number[1] == '神' && number[2] == '抖' && number[3] == '擻') ||
                    (number[4] == '精' && number[5] == '神' && number[6] == '抖' && number[7] == '擻') ||
                    (number[8] == '精' && number[9] == '神' && number[10] == '抖' && number[11] == '擻') ||
                    (number[12] == '精' && number[13] == '神' && number[14] == '抖' && number[15] == '擻')) &&
                ((number[0] == '名' && number[1] == '落' && number[2] == '孫' && number[3] == '山') ||
                    (number[4] == '名' && number[5] == '落' && number[6] == '孫' && number[7] == '山') ||
                    (number[8] == '名' && number[9] == '落' && number[10] == '孫' && number[11] == '山') ||
                    (number[12] == '名' && number[13] == '落' && number[14] == '孫' && number[15] == '山'))
            )?
            '3/3' :
            (((number[0] == '津' && number[1] == '津' && number[2] == '有' && number[3] == '味') ||
                (number[4] == '津' && number[5] == '津' && number[6] == '有' && number[7] == '味') ||
                (number[8] == '津' && number[9] == '津' && number[10] == '有' && number[11] == '味') ||
                (number[12] == '津' && number[13] == '津' && number[14] == '有' && number[15] == '味')) &&
                ((number[0] == '精' && number[1] == '神' && number[2] == '抖' && number[3] == '擻') ||
                    (number[4] == '精' && number[5] == '神' && number[6] == '抖' && number[7] == '擻') ||
                    (number[8] == '精' && number[9] == '神' && number[10] == '抖' && number[11] == '擻') ||
                    (number[12] == '精' && number[13] == '神' && number[14] == '抖' && number[15] == '擻'))) ||

                (((number[0] == '津' && number[1] == '津' && number[2] == '有' && number[3] == '味') ||
                    (number[4] == '津' && number[5] == '津' && number[6] == '有' && number[7] == '味') ||
                    (number[8] == '津' && number[9] == '津' && number[10] == '有' && number[11] == '味') ||
                    (number[12] == '津' && number[13] == '津' && number[14] == '有' && number[15] == '味')) &&
                    ((number[0] == '名' && number[1] == '落' && number[2] == '孫' && number[3] == '山') ||
                        (number[4] == '名' && number[5] == '落' && number[6] == '孫' && number[7] == '山') ||
                        (number[8] == '名' && number[9] == '落' && number[10] == '孫' && number[11] == '山') ||
                        (number[12] == '名' && number[13] == '落' && number[14] == '孫' && number[15] == '山'))) ||

                (((number[0] == '精' && number[1] == '神' && number[2] == '抖' && number[3] == '擻') ||
                    (number[4] == '精' && number[5] == '神' && number[6] == '抖' && number[7] == '擻') ||
                    (number[8] == '精' && number[9] == '神' && number[10] == '抖' && number[11] == '擻') ||
                    (number[12] == '精' && number[13] == '神' && number[14] == '抖' && number[15] == '擻')) &&
                    ((number[0] == '名' && number[1] == '落' && number[2] == '孫' && number[3] == '山') ||
                        (number[4] == '名' && number[5] == '落' && number[6] == '孫' && number[7] == '山') ||
                        (number[8] == '名' && number[9] == '落' && number[10] == '孫' && number[11] == '山') ||
                        (number[12] == '名' && number[13] == '落' && number[14] == '孫' && number[15] == '山'))) ?
            '2/3' :
            (((number[0] == '津' && number[1] == '津' && number[2] == '有' && number[3] == '味') ||
                (number[4] == '津' && number[5] == '津' && number[6] == '有' && number[7] == '味') ||
                (number[8] == '津' && number[9] == '津' && number[10] == '有' && number[11] == '味') ||
                (number[12] == '津' && number[13] == '津' && number[14] == '有' && number[15] == '味')) ||
                (((number[0] == '精' && number[1] == '神' && number[2] == '抖' && number[3] == '擻') ||
                    (number[4] == '精' && number[5] == '神' && number[6] == '抖' && number[7] == '擻') ||
                    (number[8] == '精' && number[9] == '神' && number[10] == '抖' && number[11] == '擻') ||
                    (number[12] == '精' && number[13] == '神' && number[14] == '抖' && number[15] == '擻')) ||
                    ((number[0] == '名' && number[1] == '落' && number[2] == '孫' && number[3] == '山') ||
                        (number[4] == '名' && number[5] == '落' && number[6] == '孫' && number[7] == '山') ||
                        (number[8] == '名' && number[9] == '落' && number[10] == '孫' && number[11] == '山') ||
                        (number[12] == '名' && number[13] == '落' && number[14] == '孫' && number[15] == '山')))
            ) ?
            '1/3' :
            '0/3'
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
                                          (((number[0] == '津' && number[1] == '津' && number[2] == '有' && number[3] == '味') ||
                                              (number[4] == '津' && number[5] == '津' && number[6] == '有' && number[7] == '味') ||
                                              (number[8] == '津' && number[9] == '津' && number[10] == '有' && number[11] == '味') ||
                                              (number[12] == '津' && number[13] == '津' && number[14] == '有' && number[15] == '味')) &&
                                              ((number[0] == '精' && number[1] == '神' && number[2] == '抖' && number[3] == '擻') ||
                                                  (number[4] == '精' && number[5] == '神' && number[6] == '抖' && number[7] == '擻') ||
                                                  (number[8] == '精' && number[9] == '神' && number[10] == '抖' && number[11] == '擻') ||
                                                  (number[12] == '精' && number[13] == '神' && number[14] == '抖' && number[15] == '擻')) &&
                                              ((number[0] == '名' && number[1] == '落' && number[2] == '孫' && number[3] == '山') ||
                                                  (number[4] == '名' && number[5] == '落' && number[6] == '孫' && number[7] == '山') ||
                                                  (number[8] == '名' && number[9] == '落' && number[10] == '孫' && number[11] == '山') ||
                                                  (number[12] == '名' && number[13] == '落' && number[14] == '孫' && number[15] == '山'))
                                          )?
                                          '3/3' :
                                          (((number[0] == '津' && number[1] == '津' && number[2] == '有' && number[3] == '味') ||
                                              (number[4] == '津' && number[5] == '津' && number[6] == '有' && number[7] == '味') ||
                                              (number[8] == '津' && number[9] == '津' && number[10] == '有' && number[11] == '味') ||
                                              (number[12] == '津' && number[13] == '津' && number[14] == '有' && number[15] == '味')) &&
                                              ((number[0] == '精' && number[1] == '神' && number[2] == '抖' && number[3] == '擻') ||
                                                  (number[4] == '精' && number[5] == '神' && number[6] == '抖' && number[7] == '擻') ||
                                                  (number[8] == '精' && number[9] == '神' && number[10] == '抖' && number[11] == '擻') ||
                                                  (number[12] == '精' && number[13] == '神' && number[14] == '抖' && number[15] == '擻'))) ||

                                              (((number[0] == '津' && number[1] == '津' && number[2] == '有' && number[3] == '味') ||
                                                  (number[4] == '津' && number[5] == '津' && number[6] == '有' && number[7] == '味') ||
                                                  (number[8] == '津' && number[9] == '津' && number[10] == '有' && number[11] == '味') ||
                                                  (number[12] == '津' && number[13] == '津' && number[14] == '有' && number[15] == '味')) &&
                                                  ((number[0] == '名' && number[1] == '落' && number[2] == '孫' && number[3] == '山') ||
                                                      (number[4] == '名' && number[5] == '落' && number[6] == '孫' && number[7] == '山') ||
                                                      (number[8] == '名' && number[9] == '落' && number[10] == '孫' && number[11] == '山') ||
                                                      (number[12] == '名' && number[13] == '落' && number[14] == '孫' && number[15] == '山'))) ||

                                              (((number[0] == '精' && number[1] == '神' && number[2] == '抖' && number[3] == '擻') ||
                                                  (number[4] == '精' && number[5] == '神' && number[6] == '抖' && number[7] == '擻') ||
                                                  (number[8] == '精' && number[9] == '神' && number[10] == '抖' && number[11] == '擻') ||
                                                  (number[12] == '精' && number[13] == '神' && number[14] == '抖' && number[15] == '擻')) &&
                                                  ((number[0] == '名' && number[1] == '落' && number[2] == '孫' && number[3] == '山') ||
                                                      (number[4] == '名' && number[5] == '落' && number[6] == '孫' && number[7] == '山') ||
                                                      (number[8] == '名' && number[9] == '落' && number[10] == '孫' && number[11] == '山') ||
                                                      (number[12] == '名' && number[13] == '落' && number[14] == '孫' && number[15] == '山'))) ?
                                          '2/3' :
                                          (((number[0] == '津' && number[1] == '津' && number[2] == '有' && number[3] == '味') ||
                                              (number[4] == '津' && number[5] == '津' && number[6] == '有' && number[7] == '味') ||
                                              (number[8] == '津' && number[9] == '津' && number[10] == '有' && number[11] == '味') ||
                                              (number[12] == '津' && number[13] == '津' && number[14] == '有' && number[15] == '味')) ||
                                              (((number[0] == '精' && number[1] == '神' && number[2] == '抖' && number[3] == '擻') ||
                                                  (number[4] == '精' && number[5] == '神' && number[6] == '抖' && number[7] == '擻') ||
                                                  (number[8] == '精' && number[9] == '神' && number[10] == '抖' && number[11] == '擻') ||
                                                  (number[12] == '精' && number[13] == '神' && number[14] == '抖' && number[15] == '擻')) ||
                                                  ((number[0] == '名' && number[1] == '落' && number[2] == '孫' && number[3] == '山') ||
                                                      (number[4] == '名' && number[5] == '落' && number[6] == '孫' && number[7] == '山') ||
                                                      (number[8] == '名' && number[9] == '落' && number[10] == '孫' && number[11] == '山') ||
                                                      (number[12] == '名' && number[13] == '落' && number[14] == '孫' && number[15] == '山')))
                                          ) ?
                                          '1/3' :
                                          '0/3',
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
                                                          return chinesegame6(
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



