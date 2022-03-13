import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:marquee/marquee.dart';
import 'package:puzzle_app/Chinesegame/chinesegame4.dart';


// ignore: camel_case_types, must_be_immutable
class chinesegame3 extends StatefulWidget {

  String name;
  String pic;
  String email;

  chinesegame3({
    Key? key,
    required this.name,
    required this.pic,
    required this.email,
  }) : super(key: key);

  @override
  _chinesegame3State createState() => _chinesegame3State();
}

// ignore: camel_case_types
class _chinesegame3State extends State<chinesegame3> with TickerProviderStateMixin {

  CollectionReference reference = FirebaseFirestore.instance.collection('Chinese Game(3)');

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

  var number = ['登', '峰', '造', '極', '持', '之', '以', '恒', '唇', '齒', '相', '依', '完', '成', '了', 0];

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
    CollectionReference ref = FirebaseFirestore.instance.collection(widget.name + ' Chinese Game(3)');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          'Four-Character Idiom (3)',
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
                  set1 == true && (number[0] == '持' && number[1] == '之' && number[2] == '以' && number[3] == '恒') ||
                      set1 == true && (number[4] == '持' && number[5] == '之' && number[6] == '以' && number[7] == '恒') ||
                      set1 == true && (number[8] == '持' && number[9] == '之' && number[10] == '以' && number[11] == '恒') ||
                      set1 == true && (number[12] == '持' && number[13] == '之' && number[14] == '以' && number[15] == '恒') ?
                  Row(
                    children: [
                      FadeTransition(
                        opacity: _animation,
                        child: const Text(
                          '持',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation2,
                        child: const Text(
                          '之',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation3,
                        child: const Text(
                          '以',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation4,
                        child: const Text(
                          '恒',
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
                                                  '持之以恒: 意義/Meaning',
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
                                                    '持之以恒: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：持：保持；堅持；之：代詞；指所要堅持的東西；恒：長久；指恒心。有恒心地堅持下去。也作“持之以久”。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：chí zhī yǐ héng',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：一暴十寒、半途而廢',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：鍥而不舍、孜孜不倦',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：多用來表示人長久不變的意志；跟“鍥而不舍”；可以通用或連用。一般作謂語、狀語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處：宋·樓鑰《攻媿集·雷雨應詔封事》：“凡應天下之事；一切行之以誠；持之以久。”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：要想在事業上取得成功, 除了決心之外, 還要持之以恒。',
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
                                                    '持之以恒: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：Persevere and persevere.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym： One storm and ten colds && Halfway through',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym： Perseverance && Perseverance',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：It is mostly used to express the long-term and unchanging will of people; it is used with "perseverance"; it can be used in common or in combination. Generally used as predicate, adverbial.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：To be successful in your career, in addition to determination, it takes perseverance.',
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
                          '持',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation2,
                        child: const Text(
                          '之',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation3,
                        child: const Text(
                          '以',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation4,
                        child: const Text(
                          '恒',
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
                                                  '持之以恒: 意義/Meaning',
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
                                                    '持之以恒: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：持：保持；堅持；之：代詞；指所要堅持的東西；恒：長久；指恒心。有恒心地堅持下去。也作“持之以久”。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：chí zhī yǐ héng',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：一暴十寒、半途而廢',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：鍥而不舍、孜孜不倦',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：多用來表示人長久不變的意志；跟“鍥而不舍”；可以通用或連用。一般作謂語、狀語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處：宋·樓鑰《攻媿集·雷雨應詔封事》：“凡應天下之事；一切行之以誠；持之以久。”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：要想在事業上取得成功, 除了決心之外, 還要持之以恒。',
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
                                                    '持之以恒: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：Persevere and persevere.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym： One storm and ten colds && Halfway through',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym： Perseverance && Perseverance',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：It is mostly used to express the long-term and unchanging will of people; it is used with "perseverance"; it can be used in common or in combination. Generally used as predicate, adverbial.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：To be successful in your career, in addition to determination, it takes perseverance.',
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
                  set3 == true && number[0] == '唇' && number[1] == '齒' && number[2] == '相' && number[3] == '依' ||
                      set3 == true && number[4] == '唇' && number[5] == '齒' && number[6] == '相' && number[7] == '依' ||
                      set3 == true && number[8] == '唇' && number[9] == '齒' && number[10] == '相' && number[11] == '依' ||
                      set3 == true && number[12] == '唇' && number[13] == '齒' && number[14] == '相' && number[15] == '依' ?
                  Row(
                    children: [
                      FadeTransition(
                        opacity: _animation6,
                        child: const Text(
                          '唇',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation7,
                        child: const Text(
                          '齒',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation8,
                        child: const Text(
                          '相',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation9,
                        child: const Text(
                          '依',
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
                                                  '唇齒相依: 意義/Meaning',
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
                                                    '唇齒相依: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：嘴唇和牙齒互相依靠；比喻雙方關系密切；互相依存；利害與共。也作“唇齒相濟。”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：chún chǐ xiāng yī',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：不共戴天、勢不兩立',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：唇亡齒寒、輔車相依',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：多含褒義。多用來形容國家之間；地區之間；人與人或人與集體之間；以及其它事物之間的密切關系。一般作定語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處：漢·劉歆《新議》：“交之于人也；猶唇齒之相濟。”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：我們積極地聯合所有鄰邦從事改良一個唇齒相依的社會。',
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
                                                    '唇齒相依: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：A metaphor for the close relationship between the two parties; interdependence; mutual interests',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym：Incompatible',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym： Cold lips',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：Lots of compliments. It is often used to describe the close relationship between countries; between regions; between people or between people and collectives; and between other things. Generally used as attributive.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：We are actively working with all our neighbors to improve a society that is interdependent.',
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
                          '唇',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation7,
                        child: const Text(
                          '齒',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation8,
                        child: const Text(
                          '相',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation9,
                        child: const Text(
                          '依',
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
                                                  '唇齒相依: 意義/Meaning',
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
                                                    '唇齒相依: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：嘴唇和牙齒互相依靠；比喻雙方關系密切；互相依存；利害與共。也作“唇齒相濟。”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：chún chǐ xiāng yī',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：不共戴天、勢不兩立',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：唇亡齒寒、輔車相依',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：多含褒義。多用來形容國家之間；地區之間；人與人或人與集體之間；以及其它事物之間的密切關系。一般作定語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處：漢·劉歆《新議》：“交之于人也；猶唇齒之相濟。”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：我們積極地聯合所有鄰邦從事改良一個唇齒相依的社會。',
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
                                                    '唇齒相依: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：A metaphor for the close relationship between the two parties; interdependence; mutual interests',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym：Incompatible',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym： Cold lips',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：Lots of compliments. It is often used to describe the close relationship between countries; between regions; between people or between people and collectives; and between other things. Generally used as attributive.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：We are actively working with all our neighbors to improve a society that is interdependent.',
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
                  set4 == true && number[0] == '登' && number[1] == '峰' && number[2] == '造' && number[3] == '極' ||
                      set4 == true && number[4] == '登' && number[5] == '峰' && number[6] == '造' && number[7] == '極' ||
                      set4 == true && number[8] == '登' && number[9] == '峰' && number[10] == '造' && number[11] == '極' ||
                      set4 == true && number[12] == '登' && number[13] == '峰' && number[14] == '造' && number[15] == '極' ?
                  Row(
                    children: [
                      FadeTransition(
                        opacity: _animation11,
                        child: const Text(
                          '登',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation12,
                        child: const Text(
                          '峰',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation13,
                        child: const Text(
                          '造',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation14,
                        child: const Text(
                          '極',
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
                                                  '登峰造極: 意義/Meaning',
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
                                                    '登峰造極: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：登：上；峰：山頂；造；達到；極：最高點。攀登到山峰的頂點。比喻學問、成就等達到了最高的境地。也比喻干壞事猖狂到了極點。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：dēng fēng zào jí',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：屢見不鮮、平淡無奇',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：嘆為觀止、空前絕后、超群絕倫、無與倫比',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：有時用于諷刺；用來比喻學問、藝術、技能等造詣達到的境地。一般作謂語、賓語、定語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處：南朝·宋·劉義慶《世說新語·文學》：“不知便可登峰造極否？”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：泥人張的泥人彩塑技藝美妙無比, 登峰造極。',
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
                                                    '登峰造極: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：The metaphorical knowledge and achievements have reached the highest level. It is also a metaphor for doing bad things to the extreme.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym：Common && Unremarkable',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym：Astonishing && Unparalleled',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：Sometimes used in sarcasm; used as a metaphor for the attainments of knowledge, art, skill, etc. Generally used as predicate, object, attribute.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：Clay figurine Zhang is clay figurine sculpting skills are incomparably wonderful, reaching the pinnacle.',
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
                          '登',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation12,
                        child: const Text(
                          '峰',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation13,
                        child: const Text(
                          '造',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation14,
                        child: const Text(
                          '極',
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
                                                  '登峰造極: 意義/Meaning',
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
                                                    '登峰造極: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：登：上；峰：山頂；造；達到；極：最高點。攀登到山峰的頂點。比喻學問、成就等達到了最高的境地。也比喻干壞事猖狂到了極點。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：dēng fēng zào jí',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：屢見不鮮、平淡無奇',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：嘆為觀止、空前絕后、超群絕倫、無與倫比',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：有時用于諷刺；用來比喻學問、藝術、技能等造詣達到的境地。一般作謂語、賓語、定語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處：南朝·宋·劉義慶《世說新語·文學》：“不知便可登峰造極否？”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：泥人張的泥人彩塑技藝美妙無比, 登峰造極。',
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
                                                    '登峰造極: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：The metaphorical knowledge and achievements have reached the highest level. It is also a metaphor for doing bad things to the extreme.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym：Common && Unremarkable',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym：Astonishing && Unparalleled',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：Sometimes used in sarcasm; used as a metaphor for the attainments of knowledge, art, skill, etc. Generally used as predicate, object, attribute.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：Clay figurine Zhang is clay figurine sculpting skills are incomparably wonderful, reaching the pinnacle.',
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
            'Mark' : (((number[0] == '持' && number[1] == '之' && number[2] == '以' && number[3] == '恒') ||
                (number[4] == '持' && number[5] == '之' && number[6] == '以' && number[7] == '恒') ||
                (number[8] == '持' && number[9] == '之' && number[10] == '以' && number[11] == '恒') ||
                (number[12] == '持' && number[13] == '之' && number[14] == '以' && number[15] == '恒')) &&
                ((number[0] == '唇' && number[1] == '齒' && number[2] == '相' && number[3] == '依') ||
                    (number[4] == '唇' && number[5] == '齒' && number[6] == '相' && number[7] == '依') ||
                    (number[8] == '唇' && number[9] == '齒' && number[10] == '相' && number[11] == '依') ||
                    (number[12] == '唇' && number[13] == '齒' && number[14] == '相' && number[15] == '依')) &&
                ((number[0] == '登' && number[1] == '峰' && number[2] == '造' && number[3] == '極') ||
                    (number[4] == '登' && number[5] == '峰' && number[6] == '造' && number[7] == '極') ||
                    (number[8] == '登' && number[9] == '峰' && number[10] == '造' && number[11] == '極') ||
                    (number[12] == '登' && number[13] == '峰' && number[14] == '造' && number[15] == '極'))
            )?
            '3/3' :
            (((number[0] == '持' && number[1] == '之' && number[2] == '以' && number[3] == '恒') ||
                (number[4] == '持' && number[5] == '之' && number[6] == '以' && number[7] == '恒') ||
                (number[8] == '持' && number[9] == '之' && number[10] == '以' && number[11] == '恒') ||
                (number[12] == '持' && number[13] == '之' && number[14] == '以' && number[15] == '恒')) &&
                ((number[0] == '唇' && number[1] == '齒' && number[2] == '相' && number[3] == '依') ||
                    (number[4] == '唇' && number[5] == '齒' && number[6] == '相' && number[7] == '依') ||
                    (number[8] == '唇' && number[9] == '齒' && number[10] == '相' && number[11] == '依') ||
                    (number[12] == '唇' && number[13] == '齒' && number[14] == '相' && number[15] == '依'))) ||

                (((number[0] == '持' && number[1] == '之' && number[2] == '以' && number[3] == '恒') ||
                    (number[4] == '持' && number[5] == '之' && number[6] == '以' && number[7] == '恒') ||
                    (number[8] == '持' && number[9] == '之' && number[10] == '以' && number[11] == '恒') ||
                    (number[12] == '持' && number[13] == '之' && number[14] == '以' && number[15] == '恒')) &&
                    ((number[0] == '登' && number[1] == '峰' && number[2] == '造' && number[3] == '極') ||
                        (number[4] == '登' && number[5] == '峰' && number[6] == '造' && number[7] == '極') ||
                        (number[8] == '登' && number[9] == '峰' && number[10] == '造' && number[11] == '極') ||
                        (number[12] == '登' && number[13] == '峰' && number[14] == '造' && number[15] == '極'))) ||

                (((number[0] == '唇' && number[1] == '齒' && number[2] == '相' && number[3] == '依') ||
                    (number[4] == '唇' && number[5] == '齒' && number[6] == '相' && number[7] == '依') ||
                    (number[8] == '唇' && number[9] == '齒' && number[10] == '相' && number[11] == '依') ||
                    (number[12] == '唇' && number[13] == '齒' && number[14] == '相' && number[15] == '依')) &&
                    ((number[0] == '登' && number[1] == '峰' && number[2] == '造' && number[3] == '極') ||
                        (number[4] == '登' && number[5] == '峰' && number[6] == '造' && number[7] == '極') ||
                        (number[8] == '登' && number[9] == '峰' && number[10] == '造' && number[11] == '極') ||
                        (number[12] == '登' && number[13] == '峰' && number[14] == '造' && number[15] == '極'))) ?
            '2/3' :
            (((number[0] == '持' && number[1] == '之' && number[2] == '以' && number[3] == '恒') ||
                (number[4] == '持' && number[5] == '之' && number[6] == '以' && number[7] == '恒') ||
                (number[8] == '持' && number[9] == '之' && number[10] == '以' && number[11] == '恒') ||
                (number[12] == '持' && number[13] == '之' && number[14] == '以' && number[15] == '恒')) ||
                (((number[0] == '唇' && number[1] == '齒' && number[2] == '相' && number[3] == '依') ||
                    (number[4] == '唇' && number[5] == '齒' && number[6] == '相' && number[7] == '依') ||
                    (number[8] == '唇' && number[9] == '齒' && number[10] == '相' && number[11] == '依') ||
                    (number[12] == '唇' && number[13] == '齒' && number[14] == '相' && number[15] == '依')) ||
                    ((number[0] == '登' && number[1] == '峰' && number[2] == '造' && number[3] == '極') ||
                        (number[4] == '登' && number[5] == '峰' && number[6] == '造' && number[7] == '極') ||
                        (number[8] == '登' && number[9] == '峰' && number[10] == '造' && number[11] == '極') ||
                        (number[12] == '登' && number[13] == '峰' && number[14] == '造' && number[15] == '極')))
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
            'Mark' : (((number[0] == '持' && number[1] == '之' && number[2] == '以' && number[3] == '恒') ||
                (number[4] == '持' && number[5] == '之' && number[6] == '以' && number[7] == '恒') ||
                (number[8] == '持' && number[9] == '之' && number[10] == '以' && number[11] == '恒') ||
                (number[12] == '持' && number[13] == '之' && number[14] == '以' && number[15] == '恒')) &&
                ((number[0] == '唇' && number[1] == '齒' && number[2] == '相' && number[3] == '依') ||
                    (number[4] == '唇' && number[5] == '齒' && number[6] == '相' && number[7] == '依') ||
                    (number[8] == '唇' && number[9] == '齒' && number[10] == '相' && number[11] == '依') ||
                    (number[12] == '唇' && number[13] == '齒' && number[14] == '相' && number[15] == '依')) &&
                ((number[0] == '登' && number[1] == '峰' && number[2] == '造' && number[3] == '極') ||
                    (number[4] == '登' && number[5] == '峰' && number[6] == '造' && number[7] == '極') ||
                    (number[8] == '登' && number[9] == '峰' && number[10] == '造' && number[11] == '極') ||
                    (number[12] == '登' && number[13] == '峰' && number[14] == '造' && number[15] == '極'))
            )?
            '3/3' :
            (((number[0] == '持' && number[1] == '之' && number[2] == '以' && number[3] == '恒') ||
                (number[4] == '持' && number[5] == '之' && number[6] == '以' && number[7] == '恒') ||
                (number[8] == '持' && number[9] == '之' && number[10] == '以' && number[11] == '恒') ||
                (number[12] == '持' && number[13] == '之' && number[14] == '以' && number[15] == '恒')) &&
                ((number[0] == '唇' && number[1] == '齒' && number[2] == '相' && number[3] == '依') ||
                    (number[4] == '唇' && number[5] == '齒' && number[6] == '相' && number[7] == '依') ||
                    (number[8] == '唇' && number[9] == '齒' && number[10] == '相' && number[11] == '依') ||
                    (number[12] == '唇' && number[13] == '齒' && number[14] == '相' && number[15] == '依'))) ||

                (((number[0] == '持' && number[1] == '之' && number[2] == '以' && number[3] == '恒') ||
                    (number[4] == '持' && number[5] == '之' && number[6] == '以' && number[7] == '恒') ||
                    (number[8] == '持' && number[9] == '之' && number[10] == '以' && number[11] == '恒') ||
                    (number[12] == '持' && number[13] == '之' && number[14] == '以' && number[15] == '恒')) &&
                    ((number[0] == '登' && number[1] == '峰' && number[2] == '造' && number[3] == '極') ||
                        (number[4] == '登' && number[5] == '峰' && number[6] == '造' && number[7] == '極') ||
                        (number[8] == '登' && number[9] == '峰' && number[10] == '造' && number[11] == '極') ||
                        (number[12] == '登' && number[13] == '峰' && number[14] == '造' && number[15] == '極'))) ||

                (((number[0] == '唇' && number[1] == '齒' && number[2] == '相' && number[3] == '依') ||
                    (number[4] == '唇' && number[5] == '齒' && number[6] == '相' && number[7] == '依') ||
                    (number[8] == '唇' && number[9] == '齒' && number[10] == '相' && number[11] == '依') ||
                    (number[12] == '唇' && number[13] == '齒' && number[14] == '相' && number[15] == '依')) &&
                    ((number[0] == '登' && number[1] == '峰' && number[2] == '造' && number[3] == '極') ||
                        (number[4] == '登' && number[5] == '峰' && number[6] == '造' && number[7] == '極') ||
                        (number[8] == '登' && number[9] == '峰' && number[10] == '造' && number[11] == '極') ||
                        (number[12] == '登' && number[13] == '峰' && number[14] == '造' && number[15] == '極'))) ?
            '2/3' :
            (((number[0] == '持' && number[1] == '之' && number[2] == '以' && number[3] == '恒') ||
                (number[4] == '持' && number[5] == '之' && number[6] == '以' && number[7] == '恒') ||
                (number[8] == '持' && number[9] == '之' && number[10] == '以' && number[11] == '恒') ||
                (number[12] == '持' && number[13] == '之' && number[14] == '以' && number[15] == '恒')) ||
                (((number[0] == '唇' && number[1] == '齒' && number[2] == '相' && number[3] == '依') ||
                    (number[4] == '唇' && number[5] == '齒' && number[6] == '相' && number[7] == '依') ||
                    (number[8] == '唇' && number[9] == '齒' && number[10] == '相' && number[11] == '依') ||
                    (number[12] == '唇' && number[13] == '齒' && number[14] == '相' && number[15] == '依')) ||
                    ((number[0] == '登' && number[1] == '峰' && number[2] == '造' && number[3] == '極') ||
                        (number[4] == '登' && number[5] == '峰' && number[6] == '造' && number[7] == '極') ||
                        (number[8] == '登' && number[9] == '峰' && number[10] == '造' && number[11] == '極') ||
                        (number[12] == '登' && number[13] == '峰' && number[14] == '造' && number[15] == '極')))
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
                                          (((number[0] == '持' && number[1] == '之' && number[2] == '以' && number[3] == '恒') ||
                                              (number[4] == '持' && number[5] == '之' && number[6] == '以' && number[7] == '恒') ||
                                              (number[8] == '持' && number[9] == '之' && number[10] == '以' && number[11] == '恒') ||
                                              (number[12] == '持' && number[13] == '之' && number[14] == '以' && number[15] == '恒')) &&
                                              ((number[0] == '唇' && number[1] == '齒' && number[2] == '相' && number[3] == '依') ||
                                                  (number[4] == '唇' && number[5] == '齒' && number[6] == '相' && number[7] == '依') ||
                                                  (number[8] == '唇' && number[9] == '齒' && number[10] == '相' && number[11] == '依') ||
                                                  (number[12] == '唇' && number[13] == '齒' && number[14] == '相' && number[15] == '依')) &&
                                              ((number[0] == '登' && number[1] == '峰' && number[2] == '造' && number[3] == '極') ||
                                                  (number[4] == '登' && number[5] == '峰' && number[6] == '造' && number[7] == '極') ||
                                                  (number[8] == '登' && number[9] == '峰' && number[10] == '造' && number[11] == '極') ||
                                                  (number[12] == '登' && number[13] == '峰' && number[14] == '造' && number[15] == '極'))
                                          )?
                                          '3/3' :
                                          (((number[0] == '持' && number[1] == '之' && number[2] == '以' && number[3] == '恒') ||
                                              (number[4] == '持' && number[5] == '之' && number[6] == '以' && number[7] == '恒') ||
                                              (number[8] == '持' && number[9] == '之' && number[10] == '以' && number[11] == '恒') ||
                                              (number[12] == '持' && number[13] == '之' && number[14] == '以' && number[15] == '恒')) &&
                                              ((number[0] == '唇' && number[1] == '齒' && number[2] == '相' && number[3] == '依') ||
                                                  (number[4] == '唇' && number[5] == '齒' && number[6] == '相' && number[7] == '依') ||
                                                  (number[8] == '唇' && number[9] == '齒' && number[10] == '相' && number[11] == '依') ||
                                                  (number[12] == '唇' && number[13] == '齒' && number[14] == '相' && number[15] == '依'))) ||

                                              (((number[0] == '持' && number[1] == '之' && number[2] == '以' && number[3] == '恒') ||
                                                  (number[4] == '持' && number[5] == '之' && number[6] == '以' && number[7] == '恒') ||
                                                  (number[8] == '持' && number[9] == '之' && number[10] == '以' && number[11] == '恒') ||
                                                  (number[12] == '持' && number[13] == '之' && number[14] == '以' && number[15] == '恒')) &&
                                                  ((number[0] == '登' && number[1] == '峰' && number[2] == '造' && number[3] == '極') ||
                                                      (number[4] == '登' && number[5] == '峰' && number[6] == '造' && number[7] == '極') ||
                                                      (number[8] == '登' && number[9] == '峰' && number[10] == '造' && number[11] == '極') ||
                                                      (number[12] == '登' && number[13] == '峰' && number[14] == '造' && number[15] == '極'))) ||

                                              (((number[0] == '唇' && number[1] == '齒' && number[2] == '相' && number[3] == '依') ||
                                                  (number[4] == '唇' && number[5] == '齒' && number[6] == '相' && number[7] == '依') ||
                                                  (number[8] == '唇' && number[9] == '齒' && number[10] == '相' && number[11] == '依') ||
                                                  (number[12] == '唇' && number[13] == '齒' && number[14] == '相' && number[15] == '依')) &&
                                                  ((number[0] == '登' && number[1] == '峰' && number[2] == '造' && number[3] == '極') ||
                                                      (number[4] == '登' && number[5] == '峰' && number[6] == '造' && number[7] == '極') ||
                                                      (number[8] == '登' && number[9] == '峰' && number[10] == '造' && number[11] == '極') ||
                                                      (number[12] == '登' && number[13] == '峰' && number[14] == '造' && number[15] == '極'))) ?
                                          '2/3' :
                                          (((number[0] == '持' && number[1] == '之' && number[2] == '以' && number[3] == '恒') ||
                                              (number[4] == '持' && number[5] == '之' && number[6] == '以' && number[7] == '恒') ||
                                              (number[8] == '持' && number[9] == '之' && number[10] == '以' && number[11] == '恒') ||
                                              (number[12] == '持' && number[13] == '之' && number[14] == '以' && number[15] == '恒')) ||
                                              (((number[0] == '唇' && number[1] == '齒' && number[2] == '相' && number[3] == '依') ||
                                                  (number[4] == '唇' && number[5] == '齒' && number[6] == '相' && number[7] == '依') ||
                                                  (number[8] == '唇' && number[9] == '齒' && number[10] == '相' && number[11] == '依') ||
                                                  (number[12] == '唇' && number[13] == '齒' && number[14] == '相' && number[15] == '依')) ||
                                                  ((number[0] == '登' && number[1] == '峰' && number[2] == '造' && number[3] == '極') ||
                                                      (number[4] == '登' && number[5] == '峰' && number[6] == '造' && number[7] == '極') ||
                                                      (number[8] == '登' && number[9] == '峰' && number[10] == '造' && number[11] == '極') ||
                                                      (number[12] == '登' && number[13] == '峰' && number[14] == '造' && number[15] == '極')))
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
                                                          return chinesegame4(
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



