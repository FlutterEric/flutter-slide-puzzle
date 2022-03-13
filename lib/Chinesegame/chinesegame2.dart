import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:marquee/marquee.dart';
import 'package:puzzle_app/Chinesegame/chinesegame3.dart';


// ignore: camel_case_types, must_be_immutable
class chinesegame2 extends StatefulWidget {

  String name;
  String pic;
  String email;

  chinesegame2({
    Key? key,
    required this.name,
    required this.pic,
    required this.email,
  }) : super(key: key);

  @override
  _chinesegame2State createState() => _chinesegame2State();
}

// ignore: camel_case_types
class _chinesegame2State extends State<chinesegame2> with TickerProviderStateMixin {

  CollectionReference reference = FirebaseFirestore.instance.collection('Chinese Game(2)');

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

  var number = ['畢', '恭', '畢', '敬', '捕', '風', '捉', '影', '不', '時', '之', '需', '完', '成', '了', 0];

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
    CollectionReference ref = FirebaseFirestore.instance.collection(widget.name + ' Chinese Game(2)');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          'Four-Character Idiom (1)',
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
                  set1 == true && (number[0] == '畢' && number[1] == '恭' && number[2] == '畢' && number[3] == '敬') ||
                      set1 == true && (number[4] == '畢' && number[5] == '恭' && number[6] == '畢' && number[7] == '敬') ||
                      set1 == true && (number[8] == '畢' && number[9] == '恭' && number[10] == '畢' && number[11] == '敬') ||
                      set1 == true && (number[12] == '畢' && number[13] == '恭' && number[14] == '畢' && number[15] == '敬') ?
                  Row(
                    children: [
                      FadeTransition(
                        opacity: _animation,
                        child: const Text(
                          '畢',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation2,
                        child: const Text(
                          '恭',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation3,
                        child: const Text(
                          '畢',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation4,
                        child: const Text(
                          '敬',
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
                                                  '畢恭畢敬: 意義/Meaning',
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
                                                    '畢恭畢敬: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：形容十分恭敬的樣子',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：bì gōng bì jìng',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞： 出言不遜',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞： 必恭必敬',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：聯合式；作狀語、定語；形容人的態度',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處：郭沫若《洪波曲》第十章五：“軍長為李玉堂，一山東大漢，抵軍部時，在門外相迎，畢恭畢敬。”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：他畢恭畢敬地將書遞給了老師，請求解答兩個疑難問題。',
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
                                                    '畢恭畢敬: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：Look very respectful',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym： Rude',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym： Reverent and respectful',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：Combined; used as adverbial, attributive; describing people is attitude',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：He respectfully handed the book to the teacher and asked for answers to two difficult questions.',
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
                          '畢',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation2,
                        child: const Text(
                          '恭',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation3,
                        child: const Text(
                          '畢',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation4,
                        child: const Text(
                          '敬',
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
                                                  '畢恭畢敬: 意義/Meaning',
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
                                                    '畢恭畢敬: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：形容十分恭敬的樣子',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：bì gōng bì jìng',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞： 出言不遜',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞： 必恭必敬',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：聯合式；作狀語、定語；形容人的態度',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處：郭沫若《洪波曲》第十章五：“軍長為李玉堂，一山東大漢，抵軍部時，在門外相迎，畢恭畢敬。”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：他畢恭畢敬地將書遞給了老師，請求解答兩個疑難問題。',
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
                                                    '畢恭畢敬: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：Look very respectful',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym： Rude',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym： Reverent and respectful',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：Combined; used as adverbial, attributive; describing people is attitude',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：He respectfully handed the book to the teacher and asked for answers to two difficult questions.',
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
                  set3 == true && number[0] == '捕' && number[1] == '風' && number[2] == '捉' && number[3] == '影' ||
                      set3 == true && number[4] == '捕' && number[5] == '風' && number[6] == '捉' && number[7] == '影' ||
                      set3 == true && number[8] == '捕' && number[9] == '風' && number[10] == '捉' && number[11] == '影' ||
                      set3 == true && number[12] == '捕' && number[13] == '風' && number[14] == '捉' && number[15] == '影' ?
                  Row(
                    children: [
                      FadeTransition(
                        opacity: _animation6,
                        child: const Text(
                          '捕',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation7,
                        child: const Text(
                          '風',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation8,
                        child: const Text(
                          '捉',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation9,
                        child: const Text(
                          '影',
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
                                                  '捕風捉影: 意義/Meaning',
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
                                                    '捕風捉影: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：原指做事像風和影子一樣難以捕捉。后比喻說話做事沒有確鑿可靠的根據。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：bǔ fēng zhuō yǐng',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞： 實事求是、耳聞目睹、確鑿不移',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞： 望風捕影、無中生有、道聽途說',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：比喻說話做事沒有事實根據。一般作謂語、定語、狀語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處：《漢書·郊祀志下》：“求之；蕩蕩乎如系風捕影；終不可得。”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：對于捕風捉影的謠言, 我們切不可相信。',
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
                                                    '捕風捉影: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：The original means that doing things is as difficult to capture as wind and shadow. There is no solid and reliable basis for speaking and doing things after the metaphor.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym： Seek truth from facts && Hear and see && Be sure',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym： Looking out for the wind && Creating something out of nothing && Hearsay',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：Metaphors speak and do things without factual basis. Generally used as predicate, attributive, adverbial.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：We must not believe the rumours that catch the wind.',
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
                          '捕',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation7,
                        child: const Text(
                          '風',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation8,
                        child: const Text(
                          '捉',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation9,
                        child: const Text(
                          '影',
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
                                                  '捕風捉影: 意義/Meaning',
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
                                                    '捕風捉影: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：原指做事像風和影子一樣難以捕捉。后比喻說話做事沒有確鑿可靠的根據。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：bǔ fēng zhuō yǐng',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞： 實事求是、耳聞目睹、確鑿不移',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞： 望風捕影、無中生有、道聽途說',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：比喻說話做事沒有事實根據。一般作謂語、定語、狀語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處：《漢書·郊祀志下》：“求之；蕩蕩乎如系風捕影；終不可得。”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：對于捕風捉影的謠言, 我們切不可相信。',
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
                                                    '捕風捉影: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：The original means that doing things is as difficult to capture as wind and shadow. There is no solid and reliable basis for speaking and doing things after the metaphor.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym： Seek truth from facts && Hear and see && Be sure',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym： Looking out for the wind && Creating something out of nothing && Hearsay',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：Metaphors speak and do things without factual basis. Generally used as predicate, attributive, adverbial.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：We must not believe the rumours that catch the wind.',
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
                  set4 == true && number[0] == '不' && number[1] == '時' && number[2] == '之' && number[3] == '需' ||
                      set4 == true && number[4] == '不' && number[5] == '時' && number[6] == '之' && number[7] == '需' ||
                      set4 == true && number[8] == '不' && number[9] == '時' && number[10] == '之' && number[11] == '需' ||
                      set4 == true && number[12] == '不' && number[13] == '時' && number[14] == '之' && number[15] == '需' ?
                  Row(
                    children: [
                      FadeTransition(
                        opacity: _animation11,
                        child: const Text(
                          '不',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation12,
                        child: const Text(
                          '時',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation13,
                        child: const Text(
                          '之',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation14,
                        child: const Text(
                          '需',
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
                                                  '不時之需: 意義/Meaning',
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
                                                    '不時之需: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：不時：不定什么時候。隨時的需要；也作“不時之須”。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：bù shí zhī xū',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：一定之規',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：不時之須',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：表示說不定什么時候會需要。一般作賓語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處：宋·蘇軾《后赤壁賦》：“我有斗酒；藏之久矣；以待子不時之需。”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：他不吸煙, 家里放著香煙是為了款待客人, 以備不時之需。',
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
                                                    '不時之需: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：From time to time: Not sure when. Anytime need;',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym：Certain rules',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym：Beard from time to time',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：Indicates when it will be needed. Generally used as an object.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：He does not smoke and keeps cigarettes at home for entertaining guests, just in case.',
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
                          '不',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation12,
                        child: const Text(
                          '時',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation13,
                        child: const Text(
                          '之',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation14,
                        child: const Text(
                          '需',
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
                                                  '不時之需: 意義/Meaning',
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
                                                    '不時之需: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：不時：不定什么時候。隨時的需要；也作“不時之須”。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：bù shí zhī xū',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：一定之規',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：不時之須',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：表示說不定什么時候會需要。一般作賓語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處：宋·蘇軾《后赤壁賦》：“我有斗酒；藏之久矣；以待子不時之需。”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：他不吸煙, 家里放著香煙是為了款待客人, 以備不時之需。',
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
                                                    '不時之需: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：From time to time: Not sure when. Anytime need;',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym：Certain rules',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym：Beard from time to time',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：Indicates when it will be needed. Generally used as an object.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：He does not smoke and keeps cigarettes at home for entertaining guests, just in case.',
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
            'Mark' : (((number[0] == '畢' && number[1] == '恭' && number[2] == '畢' && number[3] == '敬') ||
                (number[4] == '畢' && number[5] == '恭' && number[6] == '畢' && number[7] == '敬') ||
                (number[8] == '畢' && number[9] == '恭' && number[10] == '畢' && number[11] == '敬') ||
                (number[12] == '畢' && number[13] == '恭  ' && number[14] == '畢' && number[15] == '敬')) &&
                ((number[0] == '怨' && number[1] == '天' && number[2] == '尤' && number[3] == '人') ||
                    (number[4] == '怨' && number[5] == '天' && number[6] == '尤' && number[7] == '人') ||
                    (number[8] == '怨' && number[9] == '天' && number[10] == '尤' && number[11] == '人') ||
                    (number[12] == '怨' && number[13] == '天' && number[14] == '尤' && number[15] == '人')) &&
                ((number[0] == '永' && number[1] == '無' && number[2] == '止' && number[3] == '境') ||
                    (number[4] == '永' && number[5] == '無' && number[6] == '止' && number[7] == '境') ||
                    (number[8] == '永' && number[9] == '無' && number[10] == '止' && number[11] == '境') ||
                    (number[12] == '永' && number[13] == '無' && number[14] == '止' && number[15] == '境'))
            )?
            '3/3' :
            (((number[0] == '畢' && number[1] == '恭' && number[2] == '畢' && number[3] == '敬') ||
                (number[4] == '畢' && number[5] == '恭' && number[6] == '畢' && number[7] == '敬') ||
                (number[8] == '畢' && number[9] == '恭' && number[10] == '畢' && number[11] == '敬') ||
                (number[12] == '畢' && number[13] == '恭  ' && number[14] == '畢' && number[15] == '敬')) &&
                ((number[0] == '怨' && number[1] == '天' && number[2] == '尤' && number[3] == '人') ||
                    (number[4] == '怨' && number[5] == '天' && number[6] == '尤' && number[7] == '人') ||
                    (number[8] == '怨' && number[9] == '天' && number[10] == '尤' && number[11] == '人') ||
                    (number[12] == '怨' && number[13] == '天' && number[14] == '尤' && number[15] == '人'))) ||

                (((number[0] == '畢' && number[1] == '恭' && number[2] == '畢' && number[3] == '敬') ||
                    (number[4] == '畢' && number[5] == '恭' && number[6] == '畢' && number[7] == '敬') ||
                    (number[8] == '畢' && number[9] == '恭' && number[10] == '畢' && number[11] == '敬') ||
                    (number[12] == '畢' && number[13] == '恭  ' && number[14] == '畢' && number[15] == '敬')) &&
                    ((number[0] == '永' && number[1] == '無' && number[2] == '止' && number[3] == '境') ||
                        (number[4] == '永' && number[5] == '無' && number[6] == '止' && number[7] == '境') ||
                        (number[8] == '永' && number[9] == '無' && number[10] == '止' && number[11] == '境') ||
                        (number[12] == '永' && number[13] == '無' && number[14] == '止' && number[15] == '境'))) ||

                (((number[0] == '怨' && number[1] == '天' && number[2] == '尤' && number[3] == '人') ||
                    (number[4] == '怨' && number[5] == '天' && number[6] == '尤' && number[7] == '人') ||
                    (number[8] == '怨' && number[9] == '天' && number[10] == '尤' && number[11] == '人') ||
                    (number[12] == '怨' && number[13] == '天' && number[14] == '尤' && number[15] == '人')) &&
                    ((number[0] == '永' && number[1] == '無' && number[2] == '止' && number[3] == '境') ||
                        (number[4] == '永' && number[5] == '無' && number[6] == '止' && number[7] == '境') ||
                        (number[8] == '永' && number[9] == '無' && number[10] == '止' && number[11] == '境') ||
                        (number[12] == '永' && number[13] == '無' && number[14] == '止' && number[15] == '境'))) ?
            '2/3' :
            (((number[0] == '畢' && number[1] == '恭' && number[2] == '畢' && number[3] == '敬') ||
                (number[4] == '畢' && number[5] == '恭' && number[6] == '畢' && number[7] == '敬') ||
                (number[8] == '畢' && number[9] == '恭' && number[10] == '畢' && number[11] == '敬') ||
                (number[12] == '畢' && number[13] == '恭  ' && number[14] == '畢' && number[15] == '敬')) ||
                (((number[0] == '怨' && number[1] == '天' && number[2] == '尤' && number[3] == '人') ||
                    (number[4] == '怨' && number[5] == '天' && number[6] == '尤' && number[7] == '人') ||
                    (number[8] == '怨' && number[9] == '天' && number[10] == '尤' && number[11] == '人') ||
                    (number[12] == '怨' && number[13] == '天' && number[14] == '尤' && number[15] == '人')) ||
                    ((number[0] == '永' && number[1] == '無' && number[2] == '止' && number[3] == '境') ||
                        (number[4] == '永' && number[5] == '無' && number[6] == '止' && number[7] == '境') ||
                        (number[8] == '永' && number[9] == '無' && number[10] == '止' && number[11] == '境') ||
                        (number[12] == '永' && number[13] == '無' && number[14] == '止' && number[15] == '境')))
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
            'Mark' : (((number[0] == '畢' && number[1] == '恭' && number[2] == '畢' && number[3] == '敬') ||
                (number[4] == '畢' && number[5] == '恭' && number[6] == '畢' && number[7] == '敬') ||
                (number[8] == '畢' && number[9] == '恭' && number[10] == '畢' && number[11] == '敬') ||
                (number[12] == '畢' && number[13] == '恭  ' && number[14] == '畢' && number[15] == '敬')) &&
                ((number[0] == '捕' && number[1] == '風' && number[2] == '捉' && number[3] == '影') ||
                    (number[4] == '捕' && number[5] == '風' && number[6] == '捉' && number[7] == '影') ||
                    (number[8] == '捕' && number[9] == '風' && number[10] == '捉' && number[11] == '影') ||
                    (number[12] == '捕' && number[13] == '風' && number[14] == '捉' && number[15] == '影')) &&
                ((number[0] == '不' && number[1] == '時' && number[2] == '之' && number[3] == '需') ||
                    (number[4] == '不' && number[5] == '時' && number[6] == '之' && number[7] == '需') ||
                    (number[8] == '不' && number[9] == '時' && number[10] == '之' && number[11] == '需') ||
                    (number[12] == '不' && number[13] == '時' && number[14] == '之' && number[15] == '需'))
            )?
            '3/3' :
            (((number[0] == '畢' && number[1] == '恭' && number[2] == '畢' && number[3] == '敬') ||
                (number[4] == '畢' && number[5] == '恭' && number[6] == '畢' && number[7] == '敬') ||
                (number[8] == '畢' && number[9] == '恭' && number[10] == '畢' && number[11] == '敬') ||
                (number[12] == '畢' && number[13] == '恭  ' && number[14] == '畢' && number[15] == '敬')) &&
                ((number[0] == '捕' && number[1] == '風' && number[2] == '捉' && number[3] == '影') ||
                    (number[4] == '捕' && number[5] == '風' && number[6] == '捉' && number[7] == '影') ||
                    (number[8] == '捕' && number[9] == '風' && number[10] == '捉' && number[11] == '影') ||
                    (number[12] == '捕' && number[13] == '風' && number[14] == '捉' && number[15] == '影'))) ||

                (((number[0] == '畢' && number[1] == '恭' && number[2] == '畢' && number[3] == '敬') ||
                    (number[4] == '畢' && number[5] == '恭' && number[6] == '畢' && number[7] == '敬') ||
                    (number[8] == '畢' && number[9] == '恭' && number[10] == '畢' && number[11] == '敬') ||
                    (number[12] == '畢' && number[13] == '恭  ' && number[14] == '畢' && number[15] == '敬')) &&
                    ((number[0] == '不' && number[1] == '時' && number[2] == '之' && number[3] == '需') ||
                        (number[4] == '不' && number[5] == '時' && number[6] == '之' && number[7] == '需') ||
                        (number[8] == '不' && number[9] == '時' && number[10] == '之' && number[11] == '需') ||
                        (number[12] == '不' && number[13] == '時' && number[14] == '之' && number[15] == '需'))) ||

                (((number[0] == '捕' && number[1] == '風' && number[2] == '捉' && number[3] == '影') ||
                    (number[4] == '捕' && number[5] == '風' && number[6] == '捉' && number[7] == '影') ||
                    (number[8] == '捕' && number[9] == '風' && number[10] == '捉' && number[11] == '影') ||
                    (number[12] == '捕' && number[13] == '風' && number[14] == '捉' && number[15] == '影')) &&
                    ((number[0] == '不' && number[1] == '時' && number[2] == '之' && number[3] == '需') ||
                        (number[4] == '不' && number[5] == '時' && number[6] == '之' && number[7] == '需') ||
                        (number[8] == '不' && number[9] == '時' && number[10] == '之' && number[11] == '需') ||
                        (number[12] == '不' && number[13] == '時' && number[14] == '之' && number[15] == '需'))) ?
            '2/3' :
            (((number[0] == '畢' && number[1] == '恭' && number[2] == '畢' && number[3] == '敬') ||
                (number[4] == '畢' && number[5] == '恭' && number[6] == '畢' && number[7] == '敬') ||
                (number[8] == '畢' && number[9] == '恭' && number[10] == '畢' && number[11] == '敬') ||
                (number[12] == '畢' && number[13] == '恭  ' && number[14] == '畢' && number[15] == '敬')) ||
                (((number[0] == '捕' && number[1] == '風' && number[2] == '捉' && number[3] == '影') ||
                    (number[4] == '捕' && number[5] == '風' && number[6] == '捉' && number[7] == '影') ||
                    (number[8] == '捕' && number[9] == '風' && number[10] == '捉' && number[11] == '影') ||
                    (number[12] == '捕' && number[13] == '風' && number[14] == '捉' && number[15] == '影')) ||
                    ((number[0] == '不' && number[1] == '時' && number[2] == '之' && number[3] == '需') ||
                        (number[4] == '不' && number[5] == '時' && number[6] == '之' && number[7] == '需') ||
                        (number[8] == '不' && number[9] == '時' && number[10] == '之' && number[11] == '需') ||
                        (number[12] == '不' && number[13] == '時' && number[14] == '之' && number[15] == '需')))
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
                                          (((number[0] == '畢' && number[1] == '恭' && number[2] == '畢' && number[3] == '敬') ||
                                              (number[4] == '畢' && number[5] == '恭' && number[6] == '畢' && number[7] == '敬') ||
                                              (number[8] == '畢' && number[9] == '恭' && number[10] == '畢' && number[11] == '敬') ||
                                              (number[12] == '畢' && number[13] == '恭  ' && number[14] == '畢' && number[15] == '敬')) &&
                                              ((number[0] == '捕' && number[1] == '風' && number[2] == '捉' && number[3] == '影') ||
                                                  (number[4] == '捕' && number[5] == '風' && number[6] == '捉' && number[7] == '影') ||
                                                  (number[8] == '捕' && number[9] == '風' && number[10] == '捉' && number[11] == '影') ||
                                                  (number[12] == '捕' && number[13] == '風' && number[14] == '捉' && number[15] == '影')) &&
                                              ((number[0] == '不' && number[1] == '時' && number[2] == '之' && number[3] == '需') ||
                                                  (number[4] == '不' && number[5] == '時' && number[6] == '之' && number[7] == '需') ||
                                                  (number[8] == '不' && number[9] == '時' && number[10] == '之' && number[11] == '需') ||
                                                  (number[12] == '不' && number[13] == '時' && number[14] == '之' && number[15] == '需'))
                                          )?
                                          '3/3' :
                                          (((number[0] == '畢' && number[1] == '恭' && number[2] == '畢' && number[3] == '敬') ||
                                              (number[4] == '畢' && number[5] == '恭' && number[6] == '畢' && number[7] == '敬') ||
                                              (number[8] == '畢' && number[9] == '恭' && number[10] == '畢' && number[11] == '敬') ||
                                              (number[12] == '畢' && number[13] == '恭  ' && number[14] == '畢' && number[15] == '敬')) &&
                                              ((number[0] == '捕' && number[1] == '風' && number[2] == '捉' && number[3] == '影') ||
                                                  (number[4] == '捕' && number[5] == '風' && number[6] == '捉' && number[7] == '影') ||
                                                  (number[8] == '捕' && number[9] == '風' && number[10] == '捉' && number[11] == '影') ||
                                                  (number[12] == '捕' && number[13] == '風' && number[14] == '捉' && number[15] == '影'))) ||

                                              (((number[0] == '畢' && number[1] == '恭' && number[2] == '畢' && number[3] == '敬') ||
                                                  (number[4] == '畢' && number[5] == '恭' && number[6] == '畢' && number[7] == '敬') ||
                                                  (number[8] == '畢' && number[9] == '恭' && number[10] == '畢' && number[11] == '敬') ||
                                                  (number[12] == '畢' && number[13] == '恭  ' && number[14] == '畢' && number[15] == '敬')) &&
                                                  ((number[0] == '不' && number[1] == '時' && number[2] == '之' && number[3] == '需') ||
                                                      (number[4] == '不' && number[5] == '時' && number[6] == '之' && number[7] == '需') ||
                                                      (number[8] == '不' && number[9] == '時' && number[10] == '之' && number[11] == '需') ||
                                                      (number[12] == '不' && number[13] == '時' && number[14] == '之' && number[15] == '需'))) ||

                                              (((number[0] == '捕' && number[1] == '風' && number[2] == '捉' && number[3] == '影') ||
                                                  (number[4] == '捕' && number[5] == '風' && number[6] == '捉' && number[7] == '影') ||
                                                  (number[8] == '捕' && number[9] == '風' && number[10] == '捉' && number[11] == '影') ||
                                                  (number[12] == '捕' && number[13] == '風' && number[14] == '捉' && number[15] == '影')) &&
                                                  ((number[0] == '不' && number[1] == '時' && number[2] == '之' && number[3] == '需') ||
                                                      (number[4] == '不' && number[5] == '時' && number[6] == '之' && number[7] == '需') ||
                                                      (number[8] == '不' && number[9] == '時' && number[10] == '之' && number[11] == '需') ||
                                                      (number[12] == '不' && number[13] == '時' && number[14] == '之' && number[15] == '需'))) ?
                                          '2/3' :
                                          (((number[0] == '畢' && number[1] == '恭' && number[2] == '畢' && number[3] == '敬') ||
                                              (number[4] == '畢' && number[5] == '恭' && number[6] == '畢' && number[7] == '敬') ||
                                              (number[8] == '畢' && number[9] == '恭' && number[10] == '畢' && number[11] == '敬') ||
                                              (number[12] == '畢' && number[13] == '恭  ' && number[14] == '畢' && number[15] == '敬')) ||
                                              (((number[0] == '捕' && number[1] == '風' && number[2] == '捉' && number[3] == '影') ||
                                                  (number[4] == '捕' && number[5] == '風' && number[6] == '捉' && number[7] == '影') ||
                                                  (number[8] == '捕' && number[9] == '風' && number[10] == '捉' && number[11] == '影') ||
                                                  (number[12] == '捕' && number[13] == '風' && number[14] == '捉' && number[15] == '影')) ||
                                                  ((number[0] == '不' && number[1] == '時' && number[2] == '之' && number[3] == '需') ||
                                                      (number[4] == '不' && number[5] == '時' && number[6] == '之' && number[7] == '需') ||
                                                      (number[8] == '不' && number[9] == '時' && number[10] == '之' && number[11] == '需') ||
                                                      (number[12] == '不' && number[13] == '時' && number[14] == '之' && number[15] == '需')))
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
                                                          return chinesegame3(
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



