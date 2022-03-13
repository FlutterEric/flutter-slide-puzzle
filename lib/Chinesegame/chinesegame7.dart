import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:marquee/marquee.dart';
import 'package:puzzle_app/Chinesegame/chinesegame8.dart';


// ignore: camel_case_types, must_be_immutable
class chinesegame7 extends StatefulWidget {

  String name;
  String pic;
  String email;

  chinesegame7({
    Key? key,
    required this.name,
    required this.pic,
    required this.email,
  }) : super(key: key);

  @override
  _chinesegame7State createState() => _chinesegame7State();
}

// ignore: camel_case_types
class _chinesegame7State extends State<chinesegame7> with TickerProviderStateMixin {

  CollectionReference reference = FirebaseFirestore.instance.collection('Chinese Game(7)');

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

  var number = ['班', '門', '弄', '斧', '包', '羅', '萬', '象', '悲', '天', '憫', '人', '背', '水', '一', '戰', '完', '成', '了', 0];

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

    final size = MediaQuery
        .of(context)
        .size;
    CollectionReference ref = FirebaseFirestore.instance.collection(
        widget.name + ' Chinese Game(7)');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          'Four-Character Idiom (7)',
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
                      itemBuilder: (context, index) {
                        final numbers = number[index];

                        return number[index] != 0 ?
                        InkWell(
                            onTap: () {
                              if (set2 == false) {
                                if (index - 1 >= 0 && number[index - 1] == 0 &&
                                    index % 4 != 0 ||
                                    index + 1 < 16 && number[index + 1] == 0 &&
                                        (index + 1) % 4 != 0 ||
                                    (index - 4 >= 0 &&
                                        number[index - 4] == 0) ||
                                    (index + 4 < 20 && number[index + 4] == 0)
                                ) {
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
                      set1 == true && (number[0] == '班' && number[1] == '門' &&
                          number[2] == '弄' && number[3] == '斧') ||
                          set1 == true &&
                              (number[4] == '班' && number[5] == '門' &&
                                  number[6] == '弄' && number[7] == '斧') ||
                          set1 == true &&
                              (number[8] == '班' && number[9] == '門' &&
                                  number[10] == '弄' && number[11] == '斧') ||
                          set1 == true &&
                              (number[12] == '班' && number[13] == '門' &&
                                  number[14] == '弄' && number[15] == '斧') ||
                          set1 == true &&
                              (number[16] == '班' && number[17] == '門' &&
                                  number[18] == '弄' && number[19] == '斧') ?
                      Row(
                        children: [
                          FadeTransition(
                            opacity: _animation,
                            child: const Text(
                              '班',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          FadeTransition(
                            opacity: _animation2,
                            child: const Text(
                              '門',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          FadeTransition(
                            opacity: _animation3,
                            child: const Text(
                              '弄',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          FadeTransition(
                            opacity: _animation4,
                            child: const Text(
                              '斧',
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
                                      barrierColor: Colors.black.withOpacity(
                                          0.5),
                                      transitionDuration: const Duration(
                                          milliseconds: 700),
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
                                                    padding: EdgeInsets.only(
                                                        top: 10),
                                                    child: Text(
                                                      '班門弄斧: 意義/Meaning',
                                                      style: TextStyle(
                                                          fontSize: 22,
                                                          color: Colors.black,
                                                          fontWeight: FontWeight
                                                              .bold
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 20),
                                                    child: ExpansionTile(
                                                      title: Text(
                                                        '班門弄斧: 意義(中文)',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight
                                                                .bold
                                                        ),
                                                      ),
                                                      children: [
                                                        Text(
                                                          '解釋：班：魯班；即公輸子；春秋時魯國人。我國著名的木匠；在魯班門前舞弄斧頭。比喻在行家面前賣弄本領。',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '拼音：bān mén nòng fǔ',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '反義詞：虛懷若谷、自知之明、知人之明',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '同義詞：布鼓雷門、貽笑大方',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '用法：含貶義。多用來嘲諷別人；有時也用于自謙、自嘲；表示自己的學識、能力不如人家。一般作謂語、定語、狀語、賓語。',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '出處：宋·歐陽修《與梅圣俞書》：“昨日真定；有詩七八首；今錄去；班門弄斧；可笑可笑。”',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '例子：我不是文藝行家, 可不敢在您這位老“藝術家"面前班門弄斧, 談論文藝。',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .black
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 20),
                                                    child: ExpansionTile(
                                                      title: Text(
                                                        '班門弄斧: Meaning(English)',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight
                                                                .bold
                                                        ),
                                                      ),
                                                      children: [
                                                        Text(
                                                          'Meaning：A metaphor for showing off your skills in front of experts.',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          'Antonym：Open-mindedness && Self-knowledge && Knowledge of others',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          'Synonym：Laughable and generous',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          'Usage：Contains a derogatory connotation. It is mostly used to ridicule others; sometimes it is also used to be humble and self-deprecating; to express that one is knowledge and ability are not as good as others. Generally used as predicate, attributive, adverbial, object.',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          'Example: I am not an expert in literature and art, but I don not dare to talk about literature and art in front of you, an old "artist".',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .black
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
                                      transitionBuilder: (context, anim1, anim2,
                                          child) {
                                        return SlideTransition(
                                          position: Tween(
                                              begin: const Offset(0, 1),
                                              end: const Offset(0, 0)).animate(
                                              anim1),
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
                              '班',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          FadeTransition(
                            opacity: _animation2,
                            child: const Text(
                              '門',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          FadeTransition(
                            opacity: _animation3,
                            child: const Text(
                              '弄',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          FadeTransition(
                            opacity: _animation4,
                            child: const Text(
                              '斧',
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
                                      barrierColor: Colors.black.withOpacity(
                                          0.5),
                                      transitionDuration: const Duration(
                                          milliseconds: 700),
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
                                                    padding: EdgeInsets.only(
                                                        top: 10),
                                                    child: Text(
                                                      '班門弄斧: 意義/Meaning',
                                                      style: TextStyle(
                                                          fontSize: 22,
                                                          color: Colors.black,
                                                          fontWeight: FontWeight
                                                              .bold
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 20),
                                                    child: ExpansionTile(
                                                      title: Text(
                                                        '班門弄斧: 意義(中文)',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight
                                                                .bold
                                                        ),
                                                      ),
                                                      children: [
                                                        Text(
                                                          '解釋：班：魯班；即公輸子；春秋時魯國人。我國著名的木匠；在魯班門前舞弄斧頭。比喻在行家面前賣弄本領。',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '拼音：bān mén nòng fǔ',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '反義詞：虛懷若谷、自知之明、知人之明',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '同義詞：布鼓雷門、貽笑大方',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '用法：含貶義。多用來嘲諷別人；有時也用于自謙、自嘲；表示自己的學識、能力不如人家。一般作謂語、定語、狀語、賓語。',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '出處：宋·歐陽修《與梅圣俞書》：“昨日真定；有詩七八首；今錄去；班門弄斧；可笑可笑。”',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '例子：我不是文藝行家, 可不敢在您這位老“藝術家"面前班門弄斧, 談論文藝。',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .black
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 20),
                                                    child: ExpansionTile(
                                                      title: Text(
                                                        '班門弄斧: Meaning(English)',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight
                                                                .bold
                                                        ),
                                                      ),
                                                      children: [
                                                        Text(
                                                          'Meaning：A metaphor for showing off your skills in front of experts.',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          'Antonym：Open-mindedness && Self-knowledge && Knowledge of others',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          'Synonym：Laughable and generous',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          'Usage：Contains a derogatory connotation. It is mostly used to ridicule others; sometimes it is also used to be humble and self-deprecating; to express that one is knowledge and ability are not as good as others. Generally used as predicate, attributive, adverbial, object.',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          'Example: I am not an expert in literature and art, but I don not dare to talk about literature and art in front of you, an old "artist".',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .black
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
                                      transitionBuilder: (context, anim1, anim2,
                                          child) {
                                        return SlideTransition(
                                          position: Tween(
                                              begin: const Offset(0, 1),
                                              end: const Offset(0, 0)).animate(
                                              anim1),
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
                        child: set1 == true && (number[0] == '包' &&
                            number[1] == '羅' && number[2] == '萬' && number[3] ==
                            '象') ||
                            set1 == true && (number[4] == '包' &&
                                number[5] == '羅' && number[6] == '萬' &&
                                number[7] == '象') ||
                            set1 == true && (number[8] == '包' &&
                                number[9] == '羅' && number[10] == '萬' &&
                                number[11] == '象') ||
                            set1 == true && (number[12] == '包' && number[13] ==
                                '羅' && number[14] == '萬' &&
                                number[15] == '象') ||
                            set1 == true &&
                                (number[16] == '包' && number[17] == '羅' &&
                                    number[18] == '萬' && number[19] == '象') ?
                        Row(
                          children: [
                            FadeTransition(
                              opacity: _animation,
                              child: const Text(
                                '包',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            FadeTransition(
                              opacity: _animation2,
                              child: const Text(
                                '羅',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            FadeTransition(
                              opacity: _animation3,
                              child: const Text(
                                '萬',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            FadeTransition(
                              opacity: _animation4,
                              child: const Text(
                                '象',
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
                                        barrierColor: Colors.black.withOpacity(
                                            0.5),
                                        transitionDuration: const Duration(
                                            milliseconds: 700),
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
                                                      padding: EdgeInsets.only(
                                                          top: 10),
                                                      child: Text(
                                                        '包羅萬象: 意義/Meaning',
                                                        style: TextStyle(
                                                            fontSize: 22,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight
                                                                .bold
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 20),
                                                      child: ExpansionTile(
                                                        title: Text(
                                                          '包羅萬象: 意義(中文)',
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              color: Colors
                                                                  .black,
                                                              fontWeight: FontWeight
                                                                  .bold
                                                          ),
                                                        ),
                                                        children: [
                                                          Text(
                                                            '解釋：包羅：收集、容納；大范圍的包括；萬象：宇宙間萬物萬事的景象。包括了形形色色一切景象。形容內容豐富龐雜；無所不包。',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '拼音：bāo luó wàn xiàng',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '反義詞：一無所有、空空如也',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '同義詞：應有盡有、無所不包',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '用法：用于內容豐富；無所不有。一般作謂語、定語。',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '出處：明·許仲琳《封神演義》第十三回：“你怎言包羅萬象；遲早飛升。”',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '例子：百貨大樓的商品種類繁多, 包羅萬象, 應有盡有。',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 20),
                                                      child: ExpansionTile(
                                                        title: Text(
                                                          '包羅萬象: Meaning(English)',
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              color: Colors
                                                                  .black,
                                                              fontWeight: FontWeight
                                                                  .bold
                                                          ),
                                                        ),
                                                        children: [
                                                          Text(
                                                            'Meaning：Describe the rich and complex content',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            'Antonym：Nothing',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            'Synonym：Everything',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            'Usage：Used for content richness; all-encompassing. Generally used as predicate, attributive.',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            'Example：The department store has a wide variety of goods, all-inclusive, and everything you need.',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black
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
                                        transitionBuilder: (context, anim1,
                                            anim2, child) {
                                          return SlideTransition(
                                            position: Tween(
                                                begin: const Offset(0, 1),
                                                end: const Offset(0, 0))
                                                .animate(anim1),
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
                                '包',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            FadeTransition(
                              opacity: _animation2,
                              child: const Text(
                                '羅',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            FadeTransition(
                              opacity: _animation3,
                              child: const Text(
                                '萬',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            FadeTransition(
                              opacity: _animation4,
                              child: const Text(
                                '象',
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
                                        barrierColor: Colors.black.withOpacity(
                                            0.5),
                                        transitionDuration: const Duration(
                                            milliseconds: 700),
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
                                                      padding: EdgeInsets.only(
                                                          top: 10),
                                                      child: Text(
                                                        '包羅萬象: 意義/Meaning',
                                                        style: TextStyle(
                                                            fontSize: 22,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight
                                                                .bold
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 20),
                                                      child: ExpansionTile(
                                                        title: Text(
                                                          '包羅萬象: 意義(中文)',
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              color: Colors
                                                                  .black,
                                                              fontWeight: FontWeight
                                                                  .bold
                                                          ),
                                                        ),
                                                        children: [
                                                          Text(
                                                            '解釋：包羅：收集、容納；大范圍的包括；萬象：宇宙間萬物萬事的景象。包括了形形色色一切景象。形容內容豐富龐雜；無所不包。',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '拼音：bāo luó wàn xiàng',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '反義詞：一無所有、空空如也',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '同義詞：應有盡有、無所不包',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '用法：用于內容豐富；無所不有。一般作謂語、定語。',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '出處：明·許仲琳《封神演義》第十三回：“你怎言包羅萬象；遲早飛升。”',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '例子：百貨大樓的商品種類繁多, 包羅萬象, 應有盡有。',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 20),
                                                      child: ExpansionTile(
                                                        title: Text(
                                                          '包羅萬象: Meaning(English)',
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              color: Colors
                                                                  .black,
                                                              fontWeight: FontWeight
                                                                  .bold
                                                          ),
                                                        ),
                                                        children: [
                                                          Text(
                                                            'Meaning：Describe the rich and complex content',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            'Antonym：Nothing',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            'Synonym：Everything',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            'Usage：Used for content richness; all-encompassing. Generally used as predicate, attributive.',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            'Example：The department store has a wide variety of goods, all-inclusive, and everything you need.',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black
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
                                        transitionBuilder: (context, anim1,
                                            anim2, child) {
                                          return SlideTransition(
                                            position: Tween(
                                                begin: const Offset(0, 1),
                                                end: const Offset(0, 0))
                                                .animate(anim1),
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
                  set3 == true && number[0] == '悲' && number[1] == '天' &&
                      number[2] == '憫' && number[3] == '人' ||
                      set3 == true && number[4] == '悲' && number[5] == '天' &&
                          number[6] == '憫' && number[7] == '人' ||
                      set3 == true && number[8] == '悲' && number[9] == '天' &&
                          number[10] == '憫' && number[11] == '人' ||
                      set3 == true && number[12] == '悲' && number[13] == '天' &&
                          number[14] == '憫' && number[15] == '人' ||
                      set3 == true && number[16] == '悲' && number[17] == '天' &&
                          number[18] == '憫' && number[19] == '人' ?
                  Row(
                    children: [
                      FadeTransition(
                        opacity: _animation6,
                        child: const Text(
                          '悲',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation7,
                        child: const Text(
                          '天',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation8,
                        child: const Text(
                          '憫',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation9,
                        child: const Text(
                          '人',
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
                                  transitionDuration: const Duration(
                                      milliseconds: 700),
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
                                                padding: EdgeInsets.only(
                                                    top: 10),
                                                child: Text(
                                                  '悲天憫人: 意義/Meaning',
                                                  style: TextStyle(
                                                      fontSize: 22,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight
                                                          .bold
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 20),
                                                child: ExpansionTile(
                                                  title: Text(
                                                    '悲天憫人: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight
                                                            .bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：悲天：悲嘆時世；憫：哀憐；憫人：憐憫眾人。對混亂的時世感到悲傷；對困苦的人民表示憐憫。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：bēi tiān mǐn rén',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：隨遇而安、自得其樂',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：愁腸百結、憂心忡忡',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：形容對社會的腐敗和人民的疾苦；感到悲憤和不平。有時含諷刺意味。一般作謂語、定語、狀語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處:清·黃宗羲《朱人遠墓志銘》：“人遠悲天憫人之懷；豈為一己之不遇乎！”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：詩人以悲天憫人的胸懷譴責了當時的軍閥混戰, 申訴了人民的苦難。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 20),
                                                child: ExpansionTile(
                                                  title: Text(
                                                    '悲天憫人: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight
                                                            .bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：Sorrow for chaotic times; pity for afflicted people.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym: Enjoy yourself',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym：Distressed && Anxious',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：Describe the corruption of the society and the suffering of the people; feel grief and injustice. Sometimes sarcastic. Generally used as predicate, attributive, adverbial.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：The poet condemned the melee between the warlords at that time and complained about the suffering of the people with a compassionate heart.',
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
                                  transitionBuilder: (context, anim1, anim2,
                                      child) {
                                    return SlideTransition(
                                      position: Tween(begin: const Offset(0, 1),
                                          end: const Offset(0, 0)).animate(
                                          anim1),
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
                          '悲',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation7,
                        child: const Text(
                          '天',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation8,
                        child: const Text(
                          '憫',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation9,
                        child: const Text(
                          '人',
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
                                  transitionDuration: const Duration(
                                      milliseconds: 700),
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
                                                padding: EdgeInsets.only(
                                                    top: 10),
                                                child: Text(
                                                  '悲天憫人: 意義/Meaning',
                                                  style: TextStyle(
                                                      fontSize: 22,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight
                                                          .bold
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 20),
                                                child: ExpansionTile(
                                                  title: Text(
                                                    '悲天憫人: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight
                                                            .bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：悲天：悲嘆時世；憫：哀憐；憫人：憐憫眾人。對混亂的時世感到悲傷；對困苦的人民表示憐憫。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：bēi tiān mǐn rén',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：隨遇而安、自得其樂',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：愁腸百結、憂心忡忡',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：形容對社會的腐敗和人民的疾苦；感到悲憤和不平。有時含諷刺意味。一般作謂語、定語、狀語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處:清·黃宗羲《朱人遠墓志銘》：“人遠悲天憫人之懷；豈為一己之不遇乎！”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：詩人以悲天憫人的胸懷譴責了當時的軍閥混戰, 申訴了人民的苦難。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 20),
                                                child: ExpansionTile(
                                                  title: Text(
                                                    '悲天憫人: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight
                                                            .bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：Sorrow for chaotic times; pity for afflicted people.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym: Enjoy yourself',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym：Distressed && Anxious',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：Describe the corruption of the society and the suffering of the people; feel grief and injustice. Sometimes sarcastic. Generally used as predicate, attributive, adverbial.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：The poet condemned the melee between the warlords at that time and complained about the suffering of the people with a compassionate heart.',
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
                                  transitionBuilder: (context, anim1, anim2,
                                      child) {
                                    return SlideTransition(
                                      position: Tween(begin: const Offset(0, 1),
                                          end: const Offset(0, 0)).animate(
                                          anim1),
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
                  set4 == true && number[0] == '背' && number[1] == '水' &&
                      number[2] == '一' && number[3] == '戰' ||
                      set4 == true && number[4] == '背' && number[5] == '水' &&
                          number[6] == '一' && number[7] == '戰' ||
                      set4 == true && number[8] == '背' && number[9] == '水' &&
                          number[10] == '一' && number[11] == '戰' ||
                      set4 == true && number[12] == '背' && number[13] == '水' &&
                          number[14] == '一' && number[15] == '戰' ||
                      set4 == true && number[16] == '背' && number[17] == '水' &&
                          number[18] == '一' && number[19] == '戰' ?
                  Row(
                    children: [
                      FadeTransition(
                        opacity: _animation11,
                        child: const Text(
                          '背',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation12,
                        child: const Text(
                          '水',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation13,
                        child: const Text(
                          '一',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation14,
                        child: const Text(
                          '戰',
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
                                  transitionDuration: const Duration(
                                      milliseconds: 700),
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
                                                padding: EdgeInsets.only(
                                                    top: 10),
                                                child: Text(
                                                  '背水一戰: 意義/Meaning',
                                                  style: TextStyle(
                                                      fontSize: 22,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight
                                                          .bold
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 20),
                                                child: ExpansionTile(
                                                  title: Text(
                                                    '背水一戰: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight
                                                            .bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：背：背向；水：指江河；背水：背后是水；表示沒有退路。原作“背水陣”；背后臨近河水擺陣；或布下的陣勢。后來指處于絕境之中；為求出路而決一死戰。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：bèi shuǐ yī zhàn',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：重整旗鼓',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：破釜沉舟、背城借一、濟河焚州',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：可用于軍事；多比喻在極其艱難的情況下跟敵人決一死戰；有時也比喻有“決戰”精神。還可用于體育比賽等。一般作謂語、定語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處：《史記·淮陰侯列傳》：“（韓）信乃使萬人行；出；背水陳（陣）。……軍皆殊死戰；不可敗。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：預選賽出現的全部希望就在這最后一搏；隊員們決心背水一戰。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 20),
                                                child: ExpansionTile(
                                                  title: Text(
                                                    '背水一戰: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight
                                                            .bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：Refers to being in a desperate situation; fighting to the death for a way out.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym：Regroup',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym：A metaphor for fighting to the end.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：It can be used in military affairs; it is often used as a metaphor for a decisive battle with the enemy under extremely difficult circumstances; It can also be used for sports competitions, etc. Generally used as predicate, attributive.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：All hope for the qualifiers lies in this last push; the players are determined to fight the last.',
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
                                  transitionBuilder: (context, anim1, anim2,
                                      child) {
                                    return SlideTransition(
                                      position: Tween(begin: const Offset(0, 1),
                                          end: const Offset(0, 0)).animate(
                                          anim1),
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
                          '背',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation12,
                        child: const Text(
                          '水',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation13,
                        child: const Text(
                          '一',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation14,
                        child: const Text(
                          '戰',
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
                                  transitionDuration: const Duration(
                                      milliseconds: 700),
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
                                                padding: EdgeInsets.only(
                                                    top: 10),
                                                child: Text(
                                                  '背水一戰: 意義/Meaning',
                                                  style: TextStyle(
                                                      fontSize: 22,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight
                                                          .bold
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 20),
                                                child: ExpansionTile(
                                                  title: Text(
                                                    '背水一戰: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight
                                                            .bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：背：背向；水：指江河；背水：背后是水；表示沒有退路。原作“背水陣”；背后臨近河水擺陣；或布下的陣勢。后來指處于絕境之中；為求出路而決一死戰。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：bèi shuǐ yī zhàn',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：重整旗鼓',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：破釜沉舟、背城借一、濟河焚州',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：可用于軍事；多比喻在極其艱難的情況下跟敵人決一死戰；有時也比喻有“決戰”精神。還可用于體育比賽等。一般作謂語、定語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處：《史記·淮陰侯列傳》：“（韓）信乃使萬人行；出；背水陳（陣）。……軍皆殊死戰；不可敗。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：預選賽出現的全部希望就在這最后一搏；隊員們決心背水一戰。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 20),
                                                child: ExpansionTile(
                                                  title: Text(
                                                    '背水一戰: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight
                                                            .bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：Refers to being in a desperate situation; fighting to the death for a way out.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym：Regroup',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym：A metaphor for fighting to the end.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：It can be used in military affairs; it is often used as a metaphor for a decisive battle with the enemy under extremely difficult circumstances; It can also be used for sports competitions, etc. Generally used as predicate, attributive.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：All hope for the qualifiers lies in this last push; the players are determined to fight the last.',
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
                                  transitionBuilder: (context, anim1, anim2,
                                      child) {
                                    return SlideTransition(
                                      position: Tween(begin: const Offset(0, 1),
                                          end: const Offset(0, 0)).animate(
                                          anim1),
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
            'Name': widget.name,
            'Email': widget.email,
            'Pic': widget.pic,
            'Game': 'Four-Character Idiom (Chinese) (1)',
            'Time': DateTime.now(),
            'Mark': (((number[0] == '班' && number[1] == '門' &&
                number[2] == '弄' && number[3] == '斧') ||
                (number[4] == '班' && number[5] == '門' && number[6] == '弄' &&
                    number[7] == '斧') ||
                (number[8] == '班' && number[9] == '門' && number[10] == '弄' &&
                    number[11] == '斧') ||
                (number[12] == '班' && number[13] == '門' && number[14] == '弄' &&
                    number[15] == '斧') ||
                (number[16] == '班' && number[17] == '門' && number[18] == '弄' &&
                    number[19] == '斧')) &&
                ((number[0] == '包' && number[1] == '羅' && number[2] == '萬' &&
                    number[3] == '象') ||
                    (number[4] == '包' && number[5] == '羅' && number[6] == '萬' &&
                        number[7] == '象') ||
                    (number[8] == '包' && number[9] == '羅' &&
                        number[10] == '萬' && number[11] == '象') ||
                    (number[12] == '包' && number[13] == '羅' &&
                        number[14] == '萬' && number[15] == '象') ||
                    (number[16] == '包' && number[17] == '羅' &&
                        number[18] == '萬' && number[19] == '象')) &&
                ((number[0] == '悲' && number[1] == '天' && number[2] == '憫' &&
                    number[3] == '人') ||
                    (number[4] == '悲' && number[5] == '天' && number[6] == '憫' &&
                        number[7] == '人') ||
                    (number[8] == '悲' && number[9] == '天' &&
                        number[10] == '憫' && number[11] == '人') ||
                    (number[12] == '悲' && number[13] == '天' &&
                        number[14] == '憫' && number[15] == '人') ||
                    (number[16] == '悲' && number[17] == '天' &&
                        number[18] == '憫' && number[19] == '人')) &&
                ((number[0] == '背' && number[1] == '水' && number[2] == '一' &&
                    number[3] == '戰') ||
                    (number[4] == '背' && number[5] == '水' && number[6] == '一' &&
                        number[7] == '戰') ||
                    (number[8] == '背' && number[9] == '水' &&
                        number[10] == '一' && number[11] == '戰') ||
                    (number[12] == '背' && number[13] == '水' &&
                        number[14] == '一' && number[15] == '戰') ||
                    (number[16] == '背' && number[17] == '水' &&
                        number[18] == '一' && number[19] == '戰'))
            ) ?
            '4/4' :
            (((number[0] == '班' && number[1] == '門' &&
                number[2] == '弄' && number[3] == '斧') ||
                (number[4] == '班' && number[5] == '門' && number[6] == '弄' &&
                    number[7] == '斧') ||
                (number[8] == '班' && number[9] == '門' && number[10] == '弄' &&
                    number[11] == '斧') ||
                (number[12] == '班' && number[13] == '門' && number[14] == '弄' &&
                    number[15] == '斧') ||
                (number[16] == '班' && number[17] == '門' && number[18] == '弄' &&
                    number[19] == '斧')) &&
                ((number[0] == '包' && number[1] == '羅' && number[2] == '萬' &&
                    number[3] == '象') ||
                    (number[4] == '包' && number[5] == '羅' && number[6] == '萬' &&
                        number[7] == '象') ||
                    (number[8] == '包' && number[9] == '羅' &&
                        number[10] == '萬' && number[11] == '象') ||
                    (number[12] == '包' && number[13] == '羅' &&
                        number[14] == '萬' && number[15] == '象') ||
                    (number[16] == '包' && number[17] == '羅' &&
                        number[18] == '萬' && number[19] == '象')) &&
                ((number[0] == '悲' && number[1] == '天' && number[2] == '憫' &&
                    number[3] == '人') ||
                    (number[4] == '悲' && number[5] == '天' && number[6] == '憫' &&
                        number[7] == '人') ||
                    (number[8] == '悲' && number[9] == '天' &&
                        number[10] == '憫' && number[11] == '人') ||
                    (number[12] == '悲' && number[13] == '天' &&
                        number[14] == '憫' && number[15] == '人') ||
                    (number[16] == '悲' && number[17] == '天' &&
                        number[18] == '憫' && number[19] == '人'))) ||
                (((number[0] == '按' && number[1] == '圖' && number[2] == '索' &&
                    number[3] == '驥') ||
                    (number[4] == '按' && number[5] == '圖' && number[6] == '索' &&
                        number[7] == '驥') ||
                    (number[8] == '按' && number[9] == '圖' &&
                        number[10] == '索' && number[11] == '驥') ||
                    (number[12] == '按' && number[13] == '圖' &&
                        number[14] == '索' && number[15] == '驥') ||
                    (number[16] == '按' && number[17] == '圖' &&
                        number[18] == '索' && number[19] == '驥')) &&
                    ((number[0] == '悲' && number[1] == '天' && number[2] == '憫' &&
                        number[3] == '人') ||
                        (number[4] == '悲' && number[5] == '天' && number[6] == '憫' &&
                            number[7] == '人') ||
                        (number[8] == '悲' && number[9] == '天' &&
                            number[10] == '憫' && number[11] == '人') ||
                        (number[12] == '悲' && number[13] == '天' &&
                            number[14] == '憫' && number[15] == '人') ||
                        (number[16] == '悲' && number[17] == '天' &&
                            number[18] == '憫' && number[19] == '人')) &&
                    ((number[0] == '背' && number[1] == '水' && number[2] == '一' &&
                        number[3] == '戰') ||
                        (number[4] == '背' && number[5] == '水' && number[6] == '一' &&
                            number[7] == '戰') ||
                        (number[8] == '背' && number[9] == '水' &&
                            number[10] == '一' && number[11] == '戰') ||
                        (number[12] == '背' && number[13] == '水' &&
                            number[14] == '一' && number[15] == '戰') ||
                        (number[16] == '背' && number[17] == '水' &&
                            number[18] == '一' && number[19] == '戰'))) ||
                (((number[0] == '班' && number[1] == '門' &&
                    number[2] == '弄' && number[3] == '斧') ||
                    (number[4] == '班' && number[5] == '門' && number[6] == '弄' &&
                        number[7] == '斧') ||
                    (number[8] == '班' && number[9] == '門' && number[10] == '弄' &&
                        number[11] == '斧') ||
                    (number[12] == '班' && number[13] == '門' && number[14] == '弄' &&
                        number[15] == '斧') ||
                    (number[16] == '班' && number[17] == '門' && number[18] == '弄' &&
                        number[19] == '斧')) &&
                    ((number[0] == '包' && number[1] == '羅' && number[2] == '萬' &&
                        number[3] == '象') ||
                        (number[4] == '包' && number[5] == '羅' && number[6] == '萬' &&
                            number[7] == '象') ||
                        (number[8] == '包' && number[9] == '羅' &&
                            number[10] == '萬' && number[11] == '象') ||
                        (number[12] == '包' && number[13] == '羅' &&
                            number[14] == '萬' && number[15] == '象') ||
                        (number[16] == '包' && number[17] == '羅' &&
                            number[18] == '萬' && number[19] == '象')) &&
                    ((number[0] == '背' && number[1] == '水' && number[2] == '一' &&
                        number[3] == '戰') ||
                        (number[4] == '背' && number[5] == '水' && number[6] == '一' &&
                            number[7] == '戰') ||
                        (number[8] == '背' && number[9] == '水' &&
                            number[10] == '一' && number[11] == '戰') ||
                        (number[12] == '背' && number[13] == '水' &&
                            number[14] == '一' && number[15] == '戰') ||
                        (number[16] == '背' && number[17] == '水' &&
                            number[18] == '一' && number[19] == '戰'))) ||
                (((number[0] == '班' && number[1] == '門' &&
                    number[2] == '弄' && number[3] == '斧') ||
                    (number[4] == '班' && number[5] == '門' && number[6] == '弄' &&
                        number[7] == '斧') ||
                    (number[8] == '班' && number[9] == '門' && number[10] == '弄' &&
                        number[11] == '斧') ||
                    (number[12] == '班' && number[13] == '門' && number[14] == '弄' &&
                        number[15] == '斧') ||
                    (number[16] == '班' && number[17] == '門' && number[18] == '弄' &&
                        number[19] == '斧')) &&
                    ((number[0] == '悲' && number[1] == '天' && number[2] == '憫' &&
                        number[3] == '人') ||
                        (number[4] == '悲' && number[5] == '天' && number[6] == '憫' &&
                            number[7] == '人') ||
                        (number[8] == '悲' && number[9] == '天' &&
                            number[10] == '憫' && number[11] == '人') ||
                        (number[12] == '悲' && number[13] == '天' &&
                            number[14] == '憫' && number[15] == '人') ||
                        (number[16] == '悲' && number[17] == '天' &&
                            number[18] == '憫' && number[19] == '人')) &&
                    ((number[0] == '背' && number[1] == '水' && number[2] == '一' &&
                        number[3] == '戰') ||
                        (number[4] == '背' && number[5] == '水' && number[6] == '一' &&
                            number[7] == '戰') ||
                        (number[8] == '背' && number[9] == '水' &&
                            number[10] == '一' && number[11] == '戰') ||
                        (number[12] == '背' && number[13] == '水' &&
                            number[14] == '一' && number[15] == '戰') ||
                        (number[16] == '背' && number[17] == '水' &&
                            number[18] == '一' && number[19] == '戰'))) ?
            '3/4' :

            (((number[0] == '班' && number[1] == '門' &&
                number[2] == '弄' && number[3] == '斧') ||
                (number[4] == '班' && number[5] == '門' && number[6] == '弄' &&
                    number[7] == '斧') ||
                (number[8] == '班' && number[9] == '門' && number[10] == '弄' &&
                    number[11] == '斧') ||
                (number[12] == '班' && number[13] == '門' && number[14] == '弄' &&
                    number[15] == '斧') ||
                (number[16] == '班' && number[17] == '門' && number[18] == '弄' &&
                    number[19] == '斧')) &&
                ((number[0] == '包' && number[1] == '羅' && number[2] == '萬' &&
                    number[3] == '象') ||
                    (number[4] == '包' && number[5] == '羅' && number[6] == '萬' &&
                        number[7] == '象') ||
                    (number[8] == '包' && number[9] == '羅' &&
                        number[10] == '萬' && number[11] == '象') ||
                    (number[12] == '包' && number[13] == '羅' &&
                        number[14] == '萬' && number[15] == '象') ||
                    (number[16] == '包' && number[17] == '羅' &&
                        number[18] == '萬' && number[19] == '象'))) ||

                (((number[0] == '悲' && number[1] == '天' && number[2] == '憫' &&
                    number[3] == '人') ||
                    (number[4] == '悲' && number[5] == '天' && number[6] == '憫' &&
                        number[7] == '人') ||
                    (number[8] == '悲' && number[9] == '天' &&
                        number[10] == '憫' && number[11] == '人') ||
                    (number[12] == '悲' && number[13] == '天' &&
                        number[14] == '憫' && number[15] == '人') ||
                    (number[16] == '悲' && number[17] == '天' &&
                        number[18] == '憫' && number[19] == '人')) &&
                    ((number[0] == '背' && number[1] == '水' && number[2] == '一' &&
                        number[3] == '戰') ||
                        (number[4] == '背' && number[5] == '水' && number[6] == '一' &&
                            number[7] == '戰') ||
                        (number[8] == '背' && number[9] == '水' &&
                            number[10] == '一' && number[11] == '戰') ||
                        (number[12] == '背' && number[13] == '水' &&
                            number[14] == '一' && number[15] == '戰') ||
                        (number[16] == '背' && number[17] == '水' &&
                            number[18] == '一' && number[19] == '戰'))) ||

                (((number[0] == '班' && number[1] == '門' &&
                    number[2] == '弄' && number[3] == '斧') ||
                    (number[4] == '班' && number[5] == '門' && number[6] == '弄' &&
                        number[7] == '斧') ||
                    (number[8] == '班' && number[9] == '門' && number[10] == '弄' &&
                        number[11] == '斧') ||
                    (number[12] == '班' && number[13] == '門' && number[14] == '弄' &&
                        number[15] == '斧') ||
                    (number[16] == '班' && number[17] == '門' && number[18] == '弄' &&
                        number[19] == '斧')) &&
                    ((number[0] == '悲' && number[1] == '天' && number[2] == '憫' &&
                        number[3] == '人') ||
                        (number[4] == '悲' && number[5] == '天' && number[6] == '憫' &&
                            number[7] == '人') ||
                        (number[8] == '悲' && number[9] == '天' &&
                            number[10] == '憫' && number[11] == '人') ||
                        (number[12] == '悲' && number[13] == '天' &&
                            number[14] == '憫' && number[15] == '人') ||
                        (number[16] == '悲' && number[17] == '天' &&
                            number[18] == '憫' && number[19] == '人'))) ||

                (((number[0] == '班' && number[1] == '門' &&
                    number[2] == '弄' && number[3] == '斧') ||
                    (number[4] == '班' && number[5] == '門' && number[6] == '弄' &&
                        number[7] == '斧') ||
                    (number[8] == '班' && number[9] == '門' && number[10] == '弄' &&
                        number[11] == '斧') ||
                    (number[12] == '班' && number[13] == '門' && number[14] == '弄' &&
                        number[15] == '斧') ||
                    (number[16] == '班' && number[17] == '門' && number[18] == '弄' &&
                        number[19] == '斧')) &&
                    ((number[0] == '背' && number[1] == '水' && number[2] == '一' &&
                        number[3] == '戰') ||
                        (number[4] == '背' && number[5] == '水' && number[6] == '一' &&
                            number[7] == '戰') ||
                        (number[8] == '背' && number[9] == '水' &&
                            number[10] == '一' && number[11] == '戰') ||
                        (number[12] == '背' && number[13] == '水' &&
                            number[14] == '一' && number[15] == '戰') ||
                        (number[16] == '背' && number[17] == '水' &&
                            number[18] == '一' && number[19] == '戰'))) ||

                (((number[0] == '包' && number[1] == '羅' && number[2] == '萬' &&
                    number[3] == '象') ||
                    (number[4] == '包' && number[5] == '羅' && number[6] == '萬' &&
                        number[7] == '象') ||
                    (number[8] == '包' && number[9] == '羅' &&
                        number[10] == '萬' && number[11] == '象') ||
                    (number[12] == '包' && number[13] == '羅' &&
                        number[14] == '萬' && number[15] == '象') ||
                    (number[16] == '包' && number[17] == '羅' &&
                        number[18] == '萬' && number[19] == '象')) &&
                    ((number[0] == '悲' && number[1] == '天' && number[2] == '憫' &&
                        number[3] == '人') ||
                        (number[4] == '悲' && number[5] == '天' && number[6] == '憫' &&
                            number[7] == '人') ||
                        (number[8] == '悲' && number[9] == '天' &&
                            number[10] == '憫' && number[11] == '人') ||
                        (number[12] == '悲' && number[13] == '天' &&
                            number[14] == '憫' && number[15] == '人') ||
                        (number[16] == '悲' && number[17] == '天' &&
                            number[18] == '憫' && number[19] == '人'))) ||

                (((number[0] == '包' && number[1] == '羅' && number[2] == '萬' &&
                    number[3] == '象') ||
                    (number[4] == '包' && number[5] == '羅' && number[6] == '萬' &&
                        number[7] == '象') ||
                    (number[8] == '包' && number[9] == '羅' &&
                        number[10] == '萬' && number[11] == '象') ||
                    (number[12] == '包' && number[13] == '羅' &&
                        number[14] == '萬' && number[15] == '象') ||
                    (number[16] == '包' && number[17] == '羅' &&
                        number[18] == '萬' && number[19] == '象')) &&
                    ((number[0] == '背' && number[1] == '水' && number[2] == '一' &&
                        number[3] == '戰') ||
                        (number[4] == '背' && number[5] == '水' && number[6] == '一' &&
                            number[7] == '戰') ||
                        (number[8] == '背' && number[9] == '水' &&
                            number[10] == '一' && number[11] == '戰') ||
                        (number[12] == '背' && number[13] == '水' &&
                            number[14] == '一' && number[15] == '戰') ||
                        (number[16] == '背' && number[17] == '水' &&
                            number[18] == '一' && number[19] == '戰'))) ?
            '2/4' :
            (((number[0] == '班' && number[1] == '門' &&
                number[2] == '弄' && number[3] == '斧') ||
                (number[4] == '班' && number[5] == '門' && number[6] == '弄' &&
                    number[7] == '斧') ||
                (number[8] == '班' && number[9] == '門' && number[10] == '弄' &&
                    number[11] == '斧') ||
                (number[12] == '班' && number[13] == '門' && number[14] == '弄' &&
                    number[15] == '斧') ||
                (number[16] == '班' && number[17] == '門' && number[18] == '弄' &&
                    number[19] == '斧')) ||
                (((number[0] == '包' && number[1] == '羅' && number[2] == '萬' &&
                    number[3] == '象') ||
                    (number[4] == '包' && number[5] == '羅' && number[6] == '萬' &&
                        number[7] == '象') ||
                    (number[8] == '包' && number[9] == '羅' &&
                        number[10] == '萬' && number[11] == '象') ||
                    (number[12] == '包' && number[13] == '羅' &&
                        number[14] == '萬' && number[15] == '象') ||
                    (number[16] == '包' && number[17] == '羅' &&
                        number[18] == '萬' && number[19] == '象')) ||
                    ((number[0] == '悲' && number[1] == '天' && number[2] == '憫' &&
                        number[3] == '人') ||
                        (number[4] == '悲' && number[5] == '天' && number[6] == '憫' &&
                            number[7] == '人') ||
                        (number[8] == '悲' && number[9] == '天' &&
                            number[10] == '憫' && number[11] == '人') ||
                        (number[12] == '悲' && number[13] == '天' &&
                            number[14] == '憫' && number[15] == '人') ||
                        (number[16] == '悲' && number[17] == '天' &&
                            number[18] == '憫' && number[19] == '人')) ||
                    ((number[0] == '背' && number[1] == '水' && number[2] == '一' &&
                        number[3] == '戰') ||
                        (number[4] == '背' && number[5] == '水' && number[6] == '一' &&
                            number[7] == '戰') ||
                        (number[8] == '背' && number[9] == '水' &&
                            number[10] == '一' && number[11] == '戰') ||
                        (number[12] == '背' && number[13] == '水' &&
                            number[14] == '一' && number[15] == '戰') ||
                        (number[16] == '背' && number[17] == '水' &&
                            number[18] == '一' && number[19] == '戰')))
            ) ?
            '1/4' :
            '0/4'
          });

          ref.add({
            'Name': widget.name,
            'Email': widget.email,
            'Pic': widget.pic,
            'Game': 'Four-Character Idiom (Chinese) (1)',
            'Time': DateTime.now(),
            'Mark': (((number[0] == '班' && number[1] == '門' &&
                number[2] == '弄' && number[3] == '斧') ||
                (number[4] == '班' && number[5] == '門' && number[6] == '弄' &&
                    number[7] == '斧') ||
                (number[8] == '班' && number[9] == '門' && number[10] == '弄' &&
                    number[11] == '斧') ||
                (number[12] == '班' && number[13] == '門' && number[14] == '弄' &&
                    number[15] == '斧') ||
                (number[16] == '班' && number[17] == '門' && number[18] == '弄' &&
                    number[19] == '斧')) &&
                ((number[0] == '包' && number[1] == '羅' && number[2] == '萬' &&
                    number[3] == '象') ||
                    (number[4] == '包' && number[5] == '羅' && number[6] == '萬' &&
                        number[7] == '象') ||
                    (number[8] == '包' && number[9] == '羅' &&
                        number[10] == '萬' && number[11] == '象') ||
                    (number[12] == '包' && number[13] == '羅' &&
                        number[14] == '萬' && number[15] == '象') ||
                    (number[16] == '包' && number[17] == '羅' &&
                        number[18] == '萬' && number[19] == '象')) &&
                ((number[0] == '悲' && number[1] == '天' && number[2] == '憫' &&
                    number[3] == '人') ||
                    (number[4] == '悲' && number[5] == '天' && number[6] == '憫' &&
                        number[7] == '人') ||
                    (number[8] == '悲' && number[9] == '天' &&
                        number[10] == '憫' && number[11] == '人') ||
                    (number[12] == '悲' && number[13] == '天' &&
                        number[14] == '憫' && number[15] == '人') ||
                    (number[16] == '悲' && number[17] == '天' &&
                        number[18] == '憫' && number[19] == '人')) &&
                ((number[0] == '背' && number[1] == '水' && number[2] == '一' &&
                    number[3] == '戰') ||
                    (number[4] == '背' && number[5] == '水' && number[6] == '一' &&
                        number[7] == '戰') ||
                    (number[8] == '背' && number[9] == '水' &&
                        number[10] == '一' && number[11] == '戰') ||
                    (number[12] == '背' && number[13] == '水' &&
                        number[14] == '一' && number[15] == '戰') ||
                    (number[16] == '背' && number[17] == '水' &&
                        number[18] == '一' && number[19] == '戰'))
            ) ?
            '4/4' :
            (((number[0] == '班' && number[1] == '門' &&
                number[2] == '弄' && number[3] == '斧') ||
                (number[4] == '班' && number[5] == '門' && number[6] == '弄' &&
                    number[7] == '斧') ||
                (number[8] == '班' && number[9] == '門' && number[10] == '弄' &&
                    number[11] == '斧') ||
                (number[12] == '班' && number[13] == '門' && number[14] == '弄' &&
                    number[15] == '斧') ||
                (number[16] == '班' && number[17] == '門' && number[18] == '弄' &&
                    number[19] == '斧')) &&
                ((number[0] == '包' && number[1] == '羅' && number[2] == '萬' &&
                    number[3] == '象') ||
                    (number[4] == '包' && number[5] == '羅' && number[6] == '萬' &&
                        number[7] == '象') ||
                    (number[8] == '包' && number[9] == '羅' &&
                        number[10] == '萬' && number[11] == '象') ||
                    (number[12] == '包' && number[13] == '羅' &&
                        number[14] == '萬' && number[15] == '象') ||
                    (number[16] == '包' && number[17] == '羅' &&
                        number[18] == '萬' && number[19] == '象')) &&
                ((number[0] == '悲' && number[1] == '天' && number[2] == '憫' &&
                    number[3] == '人') ||
                    (number[4] == '悲' && number[5] == '天' && number[6] == '憫' &&
                        number[7] == '人') ||
                    (number[8] == '悲' && number[9] == '天' &&
                        number[10] == '憫' && number[11] == '人') ||
                    (number[12] == '悲' && number[13] == '天' &&
                        number[14] == '憫' && number[15] == '人') ||
                    (number[16] == '悲' && number[17] == '天' &&
                        number[18] == '憫' && number[19] == '人'))) ||
                (((number[0] == '按' && number[1] == '圖' && number[2] == '索' &&
                    number[3] == '驥') ||
                    (number[4] == '按' && number[5] == '圖' && number[6] == '索' &&
                        number[7] == '驥') ||
                    (number[8] == '按' && number[9] == '圖' &&
                        number[10] == '索' && number[11] == '驥') ||
                    (number[12] == '按' && number[13] == '圖' &&
                        number[14] == '索' && number[15] == '驥') ||
                    (number[16] == '按' && number[17] == '圖' &&
                        number[18] == '索' && number[19] == '驥')) &&
                    ((number[0] == '悲' && number[1] == '天' && number[2] == '憫' &&
                        number[3] == '人') ||
                        (number[4] == '悲' && number[5] == '天' && number[6] == '憫' &&
                            number[7] == '人') ||
                        (number[8] == '悲' && number[9] == '天' &&
                            number[10] == '憫' && number[11] == '人') ||
                        (number[12] == '悲' && number[13] == '天' &&
                            number[14] == '憫' && number[15] == '人') ||
                        (number[16] == '悲' && number[17] == '天' &&
                            number[18] == '憫' && number[19] == '人')) &&
                    ((number[0] == '背' && number[1] == '水' && number[2] == '一' &&
                        number[3] == '戰') ||
                        (number[4] == '背' && number[5] == '水' && number[6] == '一' &&
                            number[7] == '戰') ||
                        (number[8] == '背' && number[9] == '水' &&
                            number[10] == '一' && number[11] == '戰') ||
                        (number[12] == '背' && number[13] == '水' &&
                            number[14] == '一' && number[15] == '戰') ||
                        (number[16] == '背' && number[17] == '水' &&
                            number[18] == '一' && number[19] == '戰'))) ||
                (((number[0] == '班' && number[1] == '門' &&
                    number[2] == '弄' && number[3] == '斧') ||
                    (number[4] == '班' && number[5] == '門' && number[6] == '弄' &&
                        number[7] == '斧') ||
                    (number[8] == '班' && number[9] == '門' && number[10] == '弄' &&
                        number[11] == '斧') ||
                    (number[12] == '班' && number[13] == '門' && number[14] == '弄' &&
                        number[15] == '斧') ||
                    (number[16] == '班' && number[17] == '門' && number[18] == '弄' &&
                        number[19] == '斧')) &&
                    ((number[0] == '包' && number[1] == '羅' && number[2] == '萬' &&
                        number[3] == '象') ||
                        (number[4] == '包' && number[5] == '羅' && number[6] == '萬' &&
                            number[7] == '象') ||
                        (number[8] == '包' && number[9] == '羅' &&
                            number[10] == '萬' && number[11] == '象') ||
                        (number[12] == '包' && number[13] == '羅' &&
                            number[14] == '萬' && number[15] == '象') ||
                        (number[16] == '包' && number[17] == '羅' &&
                            number[18] == '萬' && number[19] == '象')) &&
                    ((number[0] == '背' && number[1] == '水' && number[2] == '一' &&
                        number[3] == '戰') ||
                        (number[4] == '背' && number[5] == '水' && number[6] == '一' &&
                            number[7] == '戰') ||
                        (number[8] == '背' && number[9] == '水' &&
                            number[10] == '一' && number[11] == '戰') ||
                        (number[12] == '背' && number[13] == '水' &&
                            number[14] == '一' && number[15] == '戰') ||
                        (number[16] == '背' && number[17] == '水' &&
                            number[18] == '一' && number[19] == '戰'))) ||
                (((number[0] == '班' && number[1] == '門' &&
                    number[2] == '弄' && number[3] == '斧') ||
                    (number[4] == '班' && number[5] == '門' && number[6] == '弄' &&
                        number[7] == '斧') ||
                    (number[8] == '班' && number[9] == '門' && number[10] == '弄' &&
                        number[11] == '斧') ||
                    (number[12] == '班' && number[13] == '門' && number[14] == '弄' &&
                        number[15] == '斧') ||
                    (number[16] == '班' && number[17] == '門' && number[18] == '弄' &&
                        number[19] == '斧')) &&
                    ((number[0] == '悲' && number[1] == '天' && number[2] == '憫' &&
                        number[3] == '人') ||
                        (number[4] == '悲' && number[5] == '天' && number[6] == '憫' &&
                            number[7] == '人') ||
                        (number[8] == '悲' && number[9] == '天' &&
                            number[10] == '憫' && number[11] == '人') ||
                        (number[12] == '悲' && number[13] == '天' &&
                            number[14] == '憫' && number[15] == '人') ||
                        (number[16] == '悲' && number[17] == '天' &&
                            number[18] == '憫' && number[19] == '人')) &&
                    ((number[0] == '背' && number[1] == '水' && number[2] == '一' &&
                        number[3] == '戰') ||
                        (number[4] == '背' && number[5] == '水' && number[6] == '一' &&
                            number[7] == '戰') ||
                        (number[8] == '背' && number[9] == '水' &&
                            number[10] == '一' && number[11] == '戰') ||
                        (number[12] == '背' && number[13] == '水' &&
                            number[14] == '一' && number[15] == '戰') ||
                        (number[16] == '背' && number[17] == '水' &&
                            number[18] == '一' && number[19] == '戰'))) ?
            '3/4' :

            (((number[0] == '班' && number[1] == '門' &&
                number[2] == '弄' && number[3] == '斧') ||
                (number[4] == '班' && number[5] == '門' && number[6] == '弄' &&
                    number[7] == '斧') ||
                (number[8] == '班' && number[9] == '門' && number[10] == '弄' &&
                    number[11] == '斧') ||
                (number[12] == '班' && number[13] == '門' && number[14] == '弄' &&
                    number[15] == '斧') ||
                (number[16] == '班' && number[17] == '門' && number[18] == '弄' &&
                    number[19] == '斧')) &&
                ((number[0] == '包' && number[1] == '羅' && number[2] == '萬' &&
                    number[3] == '象') ||
                    (number[4] == '包' && number[5] == '羅' && number[6] == '萬' &&
                        number[7] == '象') ||
                    (number[8] == '包' && number[9] == '羅' &&
                        number[10] == '萬' && number[11] == '象') ||
                    (number[12] == '包' && number[13] == '羅' &&
                        number[14] == '萬' && number[15] == '象') ||
                    (number[16] == '包' && number[17] == '羅' &&
                        number[18] == '萬' && number[19] == '象'))) ||

                (((number[0] == '悲' && number[1] == '天' && number[2] == '憫' &&
                    number[3] == '人') ||
                    (number[4] == '悲' && number[5] == '天' && number[6] == '憫' &&
                        number[7] == '人') ||
                    (number[8] == '悲' && number[9] == '天' &&
                        number[10] == '憫' && number[11] == '人') ||
                    (number[12] == '悲' && number[13] == '天' &&
                        number[14] == '憫' && number[15] == '人') ||
                    (number[16] == '悲' && number[17] == '天' &&
                        number[18] == '憫' && number[19] == '人')) &&
                    ((number[0] == '背' && number[1] == '水' && number[2] == '一' &&
                        number[3] == '戰') ||
                        (number[4] == '背' && number[5] == '水' && number[6] == '一' &&
                            number[7] == '戰') ||
                        (number[8] == '背' && number[9] == '水' &&
                            number[10] == '一' && number[11] == '戰') ||
                        (number[12] == '背' && number[13] == '水' &&
                            number[14] == '一' && number[15] == '戰') ||
                        (number[16] == '背' && number[17] == '水' &&
                            number[18] == '一' && number[19] == '戰'))) ||

                (((number[0] == '班' && number[1] == '門' &&
                    number[2] == '弄' && number[3] == '斧') ||
                    (number[4] == '班' && number[5] == '門' && number[6] == '弄' &&
                        number[7] == '斧') ||
                    (number[8] == '班' && number[9] == '門' && number[10] == '弄' &&
                        number[11] == '斧') ||
                    (number[12] == '班' && number[13] == '門' && number[14] == '弄' &&
                        number[15] == '斧') ||
                    (number[16] == '班' && number[17] == '門' && number[18] == '弄' &&
                        number[19] == '斧')) &&
                    ((number[0] == '悲' && number[1] == '天' && number[2] == '憫' &&
                        number[3] == '人') ||
                        (number[4] == '悲' && number[5] == '天' && number[6] == '憫' &&
                            number[7] == '人') ||
                        (number[8] == '悲' && number[9] == '天' &&
                            number[10] == '憫' && number[11] == '人') ||
                        (number[12] == '悲' && number[13] == '天' &&
                            number[14] == '憫' && number[15] == '人') ||
                        (number[16] == '悲' && number[17] == '天' &&
                            number[18] == '憫' && number[19] == '人'))) ||

                (((number[0] == '班' && number[1] == '門' &&
                    number[2] == '弄' && number[3] == '斧') ||
                    (number[4] == '班' && number[5] == '門' && number[6] == '弄' &&
                        number[7] == '斧') ||
                    (number[8] == '班' && number[9] == '門' && number[10] == '弄' &&
                        number[11] == '斧') ||
                    (number[12] == '班' && number[13] == '門' && number[14] == '弄' &&
                        number[15] == '斧') ||
                    (number[16] == '班' && number[17] == '門' && number[18] == '弄' &&
                        number[19] == '斧')) &&
                    ((number[0] == '背' && number[1] == '水' && number[2] == '一' &&
                        number[3] == '戰') ||
                        (number[4] == '背' && number[5] == '水' && number[6] == '一' &&
                            number[7] == '戰') ||
                        (number[8] == '背' && number[9] == '水' &&
                            number[10] == '一' && number[11] == '戰') ||
                        (number[12] == '背' && number[13] == '水' &&
                            number[14] == '一' && number[15] == '戰') ||
                        (number[16] == '背' && number[17] == '水' &&
                            number[18] == '一' && number[19] == '戰'))) ||

                (((number[0] == '包' && number[1] == '羅' && number[2] == '萬' &&
                    number[3] == '象') ||
                    (number[4] == '包' && number[5] == '羅' && number[6] == '萬' &&
                        number[7] == '象') ||
                    (number[8] == '包' && number[9] == '羅' &&
                        number[10] == '萬' && number[11] == '象') ||
                    (number[12] == '包' && number[13] == '羅' &&
                        number[14] == '萬' && number[15] == '象') ||
                    (number[16] == '包' && number[17] == '羅' &&
                        number[18] == '萬' && number[19] == '象')) &&
                    ((number[0] == '悲' && number[1] == '天' && number[2] == '憫' &&
                        number[3] == '人') ||
                        (number[4] == '悲' && number[5] == '天' && number[6] == '憫' &&
                            number[7] == '人') ||
                        (number[8] == '悲' && number[9] == '天' &&
                            number[10] == '憫' && number[11] == '人') ||
                        (number[12] == '悲' && number[13] == '天' &&
                            number[14] == '憫' && number[15] == '人') ||
                        (number[16] == '悲' && number[17] == '天' &&
                            number[18] == '憫' && number[19] == '人'))) ||

                (((number[0] == '包' && number[1] == '羅' && number[2] == '萬' &&
                    number[3] == '象') ||
                    (number[4] == '包' && number[5] == '羅' && number[6] == '萬' &&
                        number[7] == '象') ||
                    (number[8] == '包' && number[9] == '羅' &&
                        number[10] == '萬' && number[11] == '象') ||
                    (number[12] == '包' && number[13] == '羅' &&
                        number[14] == '萬' && number[15] == '象') ||
                    (number[16] == '包' && number[17] == '羅' &&
                        number[18] == '萬' && number[19] == '象')) &&
                    ((number[0] == '背' && number[1] == '水' && number[2] == '一' &&
                        number[3] == '戰') ||
                        (number[4] == '背' && number[5] == '水' && number[6] == '一' &&
                            number[7] == '戰') ||
                        (number[8] == '背' && number[9] == '水' &&
                            number[10] == '一' && number[11] == '戰') ||
                        (number[12] == '背' && number[13] == '水' &&
                            number[14] == '一' && number[15] == '戰') ||
                        (number[16] == '背' && number[17] == '水' &&
                            number[18] == '一' && number[19] == '戰'))) ?
            '2/4' :
            (((number[0] == '班' && number[1] == '門' &&
                number[2] == '弄' && number[3] == '斧') ||
                (number[4] == '班' && number[5] == '門' && number[6] == '弄' &&
                    number[7] == '斧') ||
                (number[8] == '班' && number[9] == '門' && number[10] == '弄' &&
                    number[11] == '斧') ||
                (number[12] == '班' && number[13] == '門' && number[14] == '弄' &&
                    number[15] == '斧') ||
                (number[16] == '班' && number[17] == '門' && number[18] == '弄' &&
                    number[19] == '斧')) ||
                (((number[0] == '包' && number[1] == '羅' && number[2] == '萬' &&
                    number[3] == '象') ||
                    (number[4] == '包' && number[5] == '羅' && number[6] == '萬' &&
                        number[7] == '象') ||
                    (number[8] == '包' && number[9] == '羅' &&
                        number[10] == '萬' && number[11] == '象') ||
                    (number[12] == '包' && number[13] == '羅' &&
                        number[14] == '萬' && number[15] == '象') ||
                    (number[16] == '包' && number[17] == '羅' &&
                        number[18] == '萬' && number[19] == '象')) ||
                    ((number[0] == '悲' && number[1] == '天' && number[2] == '憫' &&
                        number[3] == '人') ||
                        (number[4] == '悲' && number[5] == '天' && number[6] == '憫' &&
                            number[7] == '人') ||
                        (number[8] == '悲' && number[9] == '天' &&
                            number[10] == '憫' && number[11] == '人') ||
                        (number[12] == '悲' && number[13] == '天' &&
                            number[14] == '憫' && number[15] == '人') ||
                        (number[16] == '悲' && number[17] == '天' &&
                            number[18] == '憫' && number[19] == '人')) ||
                    ((number[0] == '背' && number[1] == '水' && number[2] == '一' &&
                        number[3] == '戰') ||
                        (number[4] == '背' && number[5] == '水' && number[6] == '一' &&
                            number[7] == '戰') ||
                        (number[8] == '背' && number[9] == '水' &&
                            number[10] == '一' && number[11] == '戰') ||
                        (number[12] == '背' && number[13] == '水' &&
                            number[14] == '一' && number[15] == '戰') ||
                        (number[16] == '背' && number[17] == '水' &&
                            number[18] == '一' && number[19] == '戰')))
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
                                        padding: const EdgeInsets.only(
                                            left: 15),
                                        child: Text(
                                          (((number[0] == '班' && number[1] == '門' &&
                                              number[2] == '弄' && number[3] == '斧') ||
                                              (number[4] == '班' && number[5] == '門' && number[6] == '弄' &&
                                                  number[7] == '斧') ||
                                              (number[8] == '班' && number[9] == '門' && number[10] == '弄' &&
                                                  number[11] == '斧') ||
                                              (number[12] == '班' && number[13] == '門' && number[14] == '弄' &&
                                                  number[15] == '斧') ||
                                              (number[16] == '班' && number[17] == '門' && number[18] == '弄' &&
                                                  number[19] == '斧')) &&
                                              ((number[0] == '包' && number[1] == '羅' && number[2] == '萬' &&
                                                  number[3] == '象') ||
                                                  (number[4] == '包' && number[5] == '羅' && number[6] == '萬' &&
                                                      number[7] == '象') ||
                                                  (number[8] == '包' && number[9] == '羅' &&
                                                      number[10] == '萬' && number[11] == '象') ||
                                                  (number[12] == '包' && number[13] == '羅' &&
                                                      number[14] == '萬' && number[15] == '象') ||
                                                  (number[16] == '包' && number[17] == '羅' &&
                                                      number[18] == '萬' && number[19] == '象')) &&
                                              ((number[0] == '悲' && number[1] == '天' && number[2] == '憫' &&
                                                  number[3] == '人') ||
                                                  (number[4] == '悲' && number[5] == '天' && number[6] == '憫' &&
                                                      number[7] == '人') ||
                                                  (number[8] == '悲' && number[9] == '天' &&
                                                      number[10] == '憫' && number[11] == '人') ||
                                                  (number[12] == '悲' && number[13] == '天' &&
                                                      number[14] == '憫' && number[15] == '人') ||
                                                  (number[16] == '悲' && number[17] == '天' &&
                                                      number[18] == '憫' && number[19] == '人')) &&
                                              ((number[0] == '背' && number[1] == '水' && number[2] == '一' &&
                                                  number[3] == '戰') ||
                                                  (number[4] == '背' && number[5] == '水' && number[6] == '一' &&
                                                      number[7] == '戰') ||
                                                  (number[8] == '背' && number[9] == '水' &&
                                                      number[10] == '一' && number[11] == '戰') ||
                                                  (number[12] == '背' && number[13] == '水' &&
                                                      number[14] == '一' && number[15] == '戰') ||
                                                  (number[16] == '背' && number[17] == '水' &&
                                                      number[18] == '一' && number[19] == '戰'))
                                          ) ?
                                          '4/4' :
                                          (((number[0] == '班' && number[1] == '門' &&
                                              number[2] == '弄' && number[3] == '斧') ||
                                              (number[4] == '班' && number[5] == '門' && number[6] == '弄' &&
                                                  number[7] == '斧') ||
                                              (number[8] == '班' && number[9] == '門' && number[10] == '弄' &&
                                                  number[11] == '斧') ||
                                              (number[12] == '班' && number[13] == '門' && number[14] == '弄' &&
                                                  number[15] == '斧') ||
                                              (number[16] == '班' && number[17] == '門' && number[18] == '弄' &&
                                                  number[19] == '斧')) &&
                                              ((number[0] == '包' && number[1] == '羅' && number[2] == '萬' &&
                                                  number[3] == '象') ||
                                                  (number[4] == '包' && number[5] == '羅' && number[6] == '萬' &&
                                                      number[7] == '象') ||
                                                  (number[8] == '包' && number[9] == '羅' &&
                                                      number[10] == '萬' && number[11] == '象') ||
                                                  (number[12] == '包' && number[13] == '羅' &&
                                                      number[14] == '萬' && number[15] == '象') ||
                                                  (number[16] == '包' && number[17] == '羅' &&
                                                      number[18] == '萬' && number[19] == '象')) &&
                                              ((number[0] == '悲' && number[1] == '天' && number[2] == '憫' &&
                                                  number[3] == '人') ||
                                                  (number[4] == '悲' && number[5] == '天' && number[6] == '憫' &&
                                                      number[7] == '人') ||
                                                  (number[8] == '悲' && number[9] == '天' &&
                                                      number[10] == '憫' && number[11] == '人') ||
                                                  (number[12] == '悲' && number[13] == '天' &&
                                                      number[14] == '憫' && number[15] == '人') ||
                                                  (number[16] == '悲' && number[17] == '天' &&
                                                      number[18] == '憫' && number[19] == '人'))) ||
                                              (((number[0] == '按' && number[1] == '圖' && number[2] == '索' &&
                                                  number[3] == '驥') ||
                                                  (number[4] == '按' && number[5] == '圖' && number[6] == '索' &&
                                                      number[7] == '驥') ||
                                                  (number[8] == '按' && number[9] == '圖' &&
                                                      number[10] == '索' && number[11] == '驥') ||
                                                  (number[12] == '按' && number[13] == '圖' &&
                                                      number[14] == '索' && number[15] == '驥') ||
                                                  (number[16] == '按' && number[17] == '圖' &&
                                                      number[18] == '索' && number[19] == '驥')) &&
                                                  ((number[0] == '悲' && number[1] == '天' && number[2] == '憫' &&
                                                      number[3] == '人') ||
                                                      (number[4] == '悲' && number[5] == '天' && number[6] == '憫' &&
                                                          number[7] == '人') ||
                                                      (number[8] == '悲' && number[9] == '天' &&
                                                          number[10] == '憫' && number[11] == '人') ||
                                                      (number[12] == '悲' && number[13] == '天' &&
                                                          number[14] == '憫' && number[15] == '人') ||
                                                      (number[16] == '悲' && number[17] == '天' &&
                                                          number[18] == '憫' && number[19] == '人')) &&
                                                  ((number[0] == '背' && number[1] == '水' && number[2] == '一' &&
                                                      number[3] == '戰') ||
                                                      (number[4] == '背' && number[5] == '水' && number[6] == '一' &&
                                                          number[7] == '戰') ||
                                                      (number[8] == '背' && number[9] == '水' &&
                                                          number[10] == '一' && number[11] == '戰') ||
                                                      (number[12] == '背' && number[13] == '水' &&
                                                          number[14] == '一' && number[15] == '戰') ||
                                                      (number[16] == '背' && number[17] == '水' &&
                                                          number[18] == '一' && number[19] == '戰'))) ||
                                              (((number[0] == '班' && number[1] == '門' &&
                                                  number[2] == '弄' && number[3] == '斧') ||
                                                  (number[4] == '班' && number[5] == '門' && number[6] == '弄' &&
                                                      number[7] == '斧') ||
                                                  (number[8] == '班' && number[9] == '門' && number[10] == '弄' &&
                                                      number[11] == '斧') ||
                                                  (number[12] == '班' && number[13] == '門' && number[14] == '弄' &&
                                                      number[15] == '斧') ||
                                                  (number[16] == '班' && number[17] == '門' && number[18] == '弄' &&
                                                      number[19] == '斧')) &&
                                                  ((number[0] == '包' && number[1] == '羅' && number[2] == '萬' &&
                                                      number[3] == '象') ||
                                                      (number[4] == '包' && number[5] == '羅' && number[6] == '萬' &&
                                                          number[7] == '象') ||
                                                      (number[8] == '包' && number[9] == '羅' &&
                                                          number[10] == '萬' && number[11] == '象') ||
                                                      (number[12] == '包' && number[13] == '羅' &&
                                                          number[14] == '萬' && number[15] == '象') ||
                                                      (number[16] == '包' && number[17] == '羅' &&
                                                          number[18] == '萬' && number[19] == '象')) &&
                                                  ((number[0] == '背' && number[1] == '水' && number[2] == '一' &&
                                                      number[3] == '戰') ||
                                                      (number[4] == '背' && number[5] == '水' && number[6] == '一' &&
                                                          number[7] == '戰') ||
                                                      (number[8] == '背' && number[9] == '水' &&
                                                          number[10] == '一' && number[11] == '戰') ||
                                                      (number[12] == '背' && number[13] == '水' &&
                                                          number[14] == '一' && number[15] == '戰') ||
                                                      (number[16] == '背' && number[17] == '水' &&
                                                          number[18] == '一' && number[19] == '戰'))) ||
                                              (((number[0] == '班' && number[1] == '門' &&
                                                  number[2] == '弄' && number[3] == '斧') ||
                                                  (number[4] == '班' && number[5] == '門' && number[6] == '弄' &&
                                                      number[7] == '斧') ||
                                                  (number[8] == '班' && number[9] == '門' && number[10] == '弄' &&
                                                      number[11] == '斧') ||
                                                  (number[12] == '班' && number[13] == '門' && number[14] == '弄' &&
                                                      number[15] == '斧') ||
                                                  (number[16] == '班' && number[17] == '門' && number[18] == '弄' &&
                                                      number[19] == '斧')) &&
                                                  ((number[0] == '悲' && number[1] == '天' && number[2] == '憫' &&
                                                      number[3] == '人') ||
                                                      (number[4] == '悲' && number[5] == '天' && number[6] == '憫' &&
                                                          number[7] == '人') ||
                                                      (number[8] == '悲' && number[9] == '天' &&
                                                          number[10] == '憫' && number[11] == '人') ||
                                                      (number[12] == '悲' && number[13] == '天' &&
                                                          number[14] == '憫' && number[15] == '人') ||
                                                      (number[16] == '悲' && number[17] == '天' &&
                                                          number[18] == '憫' && number[19] == '人')) &&
                                                  ((number[0] == '背' && number[1] == '水' && number[2] == '一' &&
                                                      number[3] == '戰') ||
                                                      (number[4] == '背' && number[5] == '水' && number[6] == '一' &&
                                                          number[7] == '戰') ||
                                                      (number[8] == '背' && number[9] == '水' &&
                                                          number[10] == '一' && number[11] == '戰') ||
                                                      (number[12] == '背' && number[13] == '水' &&
                                                          number[14] == '一' && number[15] == '戰') ||
                                                      (number[16] == '背' && number[17] == '水' &&
                                                          number[18] == '一' && number[19] == '戰'))) ?
                                          '3/4' :

                                          (((number[0] == '班' && number[1] == '門' &&
                                              number[2] == '弄' && number[3] == '斧') ||
                                              (number[4] == '班' && number[5] == '門' && number[6] == '弄' &&
                                                  number[7] == '斧') ||
                                              (number[8] == '班' && number[9] == '門' && number[10] == '弄' &&
                                                  number[11] == '斧') ||
                                              (number[12] == '班' && number[13] == '門' && number[14] == '弄' &&
                                                  number[15] == '斧') ||
                                              (number[16] == '班' && number[17] == '門' && number[18] == '弄' &&
                                                  number[19] == '斧')) &&
                                              ((number[0] == '包' && number[1] == '羅' && number[2] == '萬' &&
                                                  number[3] == '象') ||
                                                  (number[4] == '包' && number[5] == '羅' && number[6] == '萬' &&
                                                      number[7] == '象') ||
                                                  (number[8] == '包' && number[9] == '羅' &&
                                                      number[10] == '萬' && number[11] == '象') ||
                                                  (number[12] == '包' && number[13] == '羅' &&
                                                      number[14] == '萬' && number[15] == '象') ||
                                                  (number[16] == '包' && number[17] == '羅' &&
                                                      number[18] == '萬' && number[19] == '象'))) ||

                                              (((number[0] == '悲' && number[1] == '天' && number[2] == '憫' &&
                                                  number[3] == '人') ||
                                                  (number[4] == '悲' && number[5] == '天' && number[6] == '憫' &&
                                                      number[7] == '人') ||
                                                  (number[8] == '悲' && number[9] == '天' &&
                                                      number[10] == '憫' && number[11] == '人') ||
                                                  (number[12] == '悲' && number[13] == '天' &&
                                                      number[14] == '憫' && number[15] == '人') ||
                                                  (number[16] == '悲' && number[17] == '天' &&
                                                      number[18] == '憫' && number[19] == '人')) &&
                                                  ((number[0] == '背' && number[1] == '水' && number[2] == '一' &&
                                                      number[3] == '戰') ||
                                                      (number[4] == '背' && number[5] == '水' && number[6] == '一' &&
                                                          number[7] == '戰') ||
                                                      (number[8] == '背' && number[9] == '水' &&
                                                          number[10] == '一' && number[11] == '戰') ||
                                                      (number[12] == '背' && number[13] == '水' &&
                                                          number[14] == '一' && number[15] == '戰') ||
                                                      (number[16] == '背' && number[17] == '水' &&
                                                          number[18] == '一' && number[19] == '戰'))) ||

                                              (((number[0] == '班' && number[1] == '門' &&
                                                  number[2] == '弄' && number[3] == '斧') ||
                                                  (number[4] == '班' && number[5] == '門' && number[6] == '弄' &&
                                                      number[7] == '斧') ||
                                                  (number[8] == '班' && number[9] == '門' && number[10] == '弄' &&
                                                      number[11] == '斧') ||
                                                  (number[12] == '班' && number[13] == '門' && number[14] == '弄' &&
                                                      number[15] == '斧') ||
                                                  (number[16] == '班' && number[17] == '門' && number[18] == '弄' &&
                                                      number[19] == '斧')) &&
                                                  ((number[0] == '悲' && number[1] == '天' && number[2] == '憫' &&
                                                      number[3] == '人') ||
                                                      (number[4] == '悲' && number[5] == '天' && number[6] == '憫' &&
                                                          number[7] == '人') ||
                                                      (number[8] == '悲' && number[9] == '天' &&
                                                          number[10] == '憫' && number[11] == '人') ||
                                                      (number[12] == '悲' && number[13] == '天' &&
                                                          number[14] == '憫' && number[15] == '人') ||
                                                      (number[16] == '悲' && number[17] == '天' &&
                                                          number[18] == '憫' && number[19] == '人'))) ||

                                              (((number[0] == '班' && number[1] == '門' &&
                                                  number[2] == '弄' && number[3] == '斧') ||
                                                  (number[4] == '班' && number[5] == '門' && number[6] == '弄' &&
                                                      number[7] == '斧') ||
                                                  (number[8] == '班' && number[9] == '門' && number[10] == '弄' &&
                                                      number[11] == '斧') ||
                                                  (number[12] == '班' && number[13] == '門' && number[14] == '弄' &&
                                                      number[15] == '斧') ||
                                                  (number[16] == '班' && number[17] == '門' && number[18] == '弄' &&
                                                      number[19] == '斧')) &&
                                                  ((number[0] == '背' && number[1] == '水' && number[2] == '一' &&
                                                      number[3] == '戰') ||
                                                      (number[4] == '背' && number[5] == '水' && number[6] == '一' &&
                                                          number[7] == '戰') ||
                                                      (number[8] == '背' && number[9] == '水' &&
                                                          number[10] == '一' && number[11] == '戰') ||
                                                      (number[12] == '背' && number[13] == '水' &&
                                                          number[14] == '一' && number[15] == '戰') ||
                                                      (number[16] == '背' && number[17] == '水' &&
                                                          number[18] == '一' && number[19] == '戰'))) ||

                                              (((number[0] == '包' && number[1] == '羅' && number[2] == '萬' &&
                                                  number[3] == '象') ||
                                                  (number[4] == '包' && number[5] == '羅' && number[6] == '萬' &&
                                                      number[7] == '象') ||
                                                  (number[8] == '包' && number[9] == '羅' &&
                                                      number[10] == '萬' && number[11] == '象') ||
                                                  (number[12] == '包' && number[13] == '羅' &&
                                                      number[14] == '萬' && number[15] == '象') ||
                                                  (number[16] == '包' && number[17] == '羅' &&
                                                      number[18] == '萬' && number[19] == '象')) &&
                                                  ((number[0] == '悲' && number[1] == '天' && number[2] == '憫' &&
                                                      number[3] == '人') ||
                                                      (number[4] == '悲' && number[5] == '天' && number[6] == '憫' &&
                                                          number[7] == '人') ||
                                                      (number[8] == '悲' && number[9] == '天' &&
                                                          number[10] == '憫' && number[11] == '人') ||
                                                      (number[12] == '悲' && number[13] == '天' &&
                                                          number[14] == '憫' && number[15] == '人') ||
                                                      (number[16] == '悲' && number[17] == '天' &&
                                                          number[18] == '憫' && number[19] == '人'))) ||

                                              (((number[0] == '包' && number[1] == '羅' && number[2] == '萬' &&
                                                  number[3] == '象') ||
                                                  (number[4] == '包' && number[5] == '羅' && number[6] == '萬' &&
                                                      number[7] == '象') ||
                                                  (number[8] == '包' && number[9] == '羅' &&
                                                      number[10] == '萬' && number[11] == '象') ||
                                                  (number[12] == '包' && number[13] == '羅' &&
                                                      number[14] == '萬' && number[15] == '象') ||
                                                  (number[16] == '包' && number[17] == '羅' &&
                                                      number[18] == '萬' && number[19] == '象')) &&
                                                  ((number[0] == '背' && number[1] == '水' && number[2] == '一' &&
                                                      number[3] == '戰') ||
                                                      (number[4] == '背' && number[5] == '水' && number[6] == '一' &&
                                                          number[7] == '戰') ||
                                                      (number[8] == '背' && number[9] == '水' &&
                                                          number[10] == '一' && number[11] == '戰') ||
                                                      (number[12] == '背' && number[13] == '水' &&
                                                          number[14] == '一' && number[15] == '戰') ||
                                                      (number[16] == '背' && number[17] == '水' &&
                                                          number[18] == '一' && number[19] == '戰'))) ?
                                          '2/4' :
                                          (((number[0] == '班' && number[1] == '門' &&
                                              number[2] == '弄' && number[3] == '斧') ||
                                              (number[4] == '班' && number[5] == '門' && number[6] == '弄' &&
                                                  number[7] == '斧') ||
                                              (number[8] == '班' && number[9] == '門' && number[10] == '弄' &&
                                                  number[11] == '斧') ||
                                              (number[12] == '班' && number[13] == '門' && number[14] == '弄' &&
                                                  number[15] == '斧') ||
                                              (number[16] == '班' && number[17] == '門' && number[18] == '弄' &&
                                                  number[19] == '斧')) ||
                                              (((number[0] == '包' && number[1] == '羅' && number[2] == '萬' &&
                                                  number[3] == '象') ||
                                                  (number[4] == '包' && number[5] == '羅' && number[6] == '萬' &&
                                                      number[7] == '象') ||
                                                  (number[8] == '包' && number[9] == '羅' &&
                                                      number[10] == '萬' && number[11] == '象') ||
                                                  (number[12] == '包' && number[13] == '羅' &&
                                                      number[14] == '萬' && number[15] == '象') ||
                                                  (number[16] == '包' && number[17] == '羅' &&
                                                      number[18] == '萬' && number[19] == '象')) ||
                                                  ((number[0] == '悲' && number[1] == '天' && number[2] == '憫' &&
                                                      number[3] == '人') ||
                                                      (number[4] == '悲' && number[5] == '天' && number[6] == '憫' &&
                                                          number[7] == '人') ||
                                                      (number[8] == '悲' && number[9] == '天' &&
                                                          number[10] == '憫' && number[11] == '人') ||
                                                      (number[12] == '悲' && number[13] == '天' &&
                                                          number[14] == '憫' && number[15] == '人') ||
                                                      (number[16] == '悲' && number[17] == '天' &&
                                                          number[18] == '憫' && number[19] == '人')) ||
                                                  ((number[0] == '背' && number[1] == '水' && number[2] == '一' &&
                                                      number[3] == '戰') ||
                                                      (number[4] == '背' && number[5] == '水' && number[6] == '一' &&
                                                          number[7] == '戰') ||
                                                      (number[8] == '背' && number[9] == '水' &&
                                                          number[10] == '一' && number[11] == '戰') ||
                                                      (number[12] == '背' && number[13] == '水' &&
                                                          number[14] == '一' && number[15] == '戰') ||
                                                      (number[16] == '背' && number[17] == '水' &&
                                                          number[18] == '一' && number[19] == '戰')))
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
                                                    shape: MaterialStateProperty
                                                        .all(
                                                      RoundedRectangleBorder(
                                                        borderRadius: BorderRadius
                                                            .circular(16.0),
                                                      ),
                                                    ),
                                                    backgroundColor: MaterialStateProperty
                                                        .all(Colors.blue)
                                                ),
                                                child: const Text(
                                                  'Home',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10),
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  style: ButtonStyle(
                                                      shape: MaterialStateProperty
                                                          .all(
                                                        RoundedRectangleBorder(
                                                          borderRadius: BorderRadius
                                                              .circular(16.0),
                                                        ),
                                                      ),
                                                      backgroundColor: MaterialStateProperty
                                                          .all(Colors.green)
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
                                            padding: const EdgeInsets.only(
                                                top: 10),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        transitionDuration: const Duration(
                                                            seconds: 3
                                                        ),
                                                        transitionsBuilder: (
                                                            context, animated,
                                                            secAnimation,
                                                            child) {
                                                          return SlideTransition(
                                                            position: _offsetAnimation,
                                                            child: child,
                                                          );
                                                        },
                                                        pageBuilder: (context,
                                                            animated,
                                                            secAnimation) {
                                                          return chinesegame8(
                                                            name: widget.name,
                                                            email: widget.email,
                                                            pic: widget.pic,
                                                          );
                                                        }
                                                    )
                                                );
                                              },
                                              style: ButtonStyle(
                                                  shape: MaterialStateProperty
                                                      .all(
                                                    RoundedRectangleBorder(
                                                      borderRadius: BorderRadius
                                                          .circular(16.0),
                                                    ),
                                                  ),
                                                  backgroundColor: MaterialStateProperty
                                                      .all(Colors.green)
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
                        position: Tween(
                            begin: const Offset(0, 1), end: const Offset(0, 0))
                            .animate(anim1),
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



