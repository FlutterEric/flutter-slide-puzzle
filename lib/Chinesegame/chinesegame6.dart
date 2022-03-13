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

  var number = ['安', '貧', '樂', '道', '按', '圖', '索', '驥', '白', '駒', '過', '隙', '百', '折', '不', '撓', '完', '成', '了', 0];

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
                      set1 == true && (number[0] == '安' && number[1] == '貧' && number[2] == '樂' && number[3] == '道') ||
                          set1 == true && (number[4] == '安' && number[5] == '貧' && number[6] == '樂' && number[7] == '道') ||
                          set1 == true && (number[8] == '安' && number[9] == '貧' && number[10] == '樂' && number[11] == '道') ||
                          set1 == true && (number[12] == '安' && number[13] == '貧' && number[14] == '樂' && number[15] == '道') ||
                          set1 == true && (number[16] == '安' && number[17] == '貧' && number[18] == '樂' && number[19] == '道')?
                      Row(
                        children: [
                          FadeTransition(
                            opacity: _animation,
                            child: const Text(
                              '安',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          FadeTransition(
                            opacity: _animation2,
                            child: const Text(
                              '貧',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          FadeTransition(
                            opacity: _animation3,
                            child: const Text(
                              '樂',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          FadeTransition(
                            opacity: _animation4,
                            child: const Text(
                              '道',
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
                                                      '安貧樂道: 意義/Meaning',
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
                                                        '安貧樂道: 意義(中文)',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                      ),
                                                      children: [
                                                        Text(
                                                          '解釋：安貧：安于貧困；道：原指儒家所信奉的道德；后引申為人生的理想、信念、準則。處境雖很貧困；仍樂于堅守信仰。',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '拼音：ān pín lè dào',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '反義詞：為所欲為、胡作非為',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '同義詞：安貧守道',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '用法：形容人為了自己信仰或理想的實現；寧愿處于貧困惡劣環境。一般作謂語、定語。',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '出處：《后漢書·韋彪傳》：“安貧樂道；恬于進趣；三輔諸儒莫不慕仰之。”',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '例子：安貧樂道是古代儒家所提倡的立身處世的態度。',
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
                                                        '安貧樂道: Meaning(English)',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                      ),
                                                      children: [
                                                        Text(
                                                          'Meaning：Although the situation is very poor, still willing to hold fast to the faith.',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          'Antonym：Do whatever you want',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          'Synonym：Anpo guard road',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          'Usage：Describes people for the realization of their beliefs or ideals; would rather be in a poor and harsh environment. Generally used as predicate, attributive.',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          'Example：Peace of mind and happiness is the attitude of life in the world advocated by ancient Confucianism.',
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
                              '安',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          FadeTransition(
                            opacity: _animation2,
                            child: const Text(
                              '貧',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          FadeTransition(
                            opacity: _animation3,
                            child: const Text(
                              '樂',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          FadeTransition(
                            opacity: _animation4,
                            child: const Text(
                              '道',
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
                                                      '安貧樂道: 意義/Meaning',
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
                                                        '安貧樂道: 意義(中文)',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                      ),
                                                      children: [
                                                        Text(
                                                          '解釋：安貧：安于貧困；道：原指儒家所信奉的道德；后引申為人生的理想、信念、準則。處境雖很貧困；仍樂于堅守信仰。',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '拼音：ān pín lè dào',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '反義詞：為所欲為、胡作非為',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '同義詞：安貧守道',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '用法：形容人為了自己信仰或理想的實現；寧愿處于貧困惡劣環境。一般作謂語、定語。',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '出處：《后漢書·韋彪傳》：“安貧樂道；恬于進趣；三輔諸儒莫不慕仰之。”',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          '例子：安貧樂道是古代儒家所提倡的立身處世的態度。',
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
                                                        '安貧樂道: Meaning(English)',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                      ),
                                                      children: [
                                                        Text(
                                                          'Meaning：Although the situation is very poor, still willing to hold fast to the faith.',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          'Antonym：Do whatever you want',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          'Synonym：Anpo guard road',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          'Usage：Describes people for the realization of their beliefs or ideals; would rather be in a poor and harsh environment. Generally used as predicate, attributive.',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                        Divider(),
                                                        Text(
                                                          'Example：Peace of mind and happiness is the attitude of life in the world advocated by ancient Confucianism.',
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
                        child: set1 == true && (number[0] == '百' && number[1] == '折' && number[2] == '不' && number[3] == '撓') ||
                            set1 == true && (number[4] == '百' && number[5] == '折' && number[6] == '不' && number[7] == '撓') ||
                            set1 == true && (number[8] == '百' && number[9] == '折' && number[10] == '不' && number[11] == '撓') ||
                            set1 == true && (number[12] == '百' && number[13] == '折' && number[14] == '不' && number[15] == '撓') ||
                            set1 == true && (number[16] == '百' && number[17] == '折' && number[18] == '不' && number[19] == '撓')?
                        Row(
                          children: [
                            FadeTransition(
                              opacity: _animation,
                              child: const Text(
                                '百',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            FadeTransition(
                              opacity: _animation2,
                              child: const Text(
                                '折',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            FadeTransition(
                              opacity: _animation3,
                              child: const Text(
                                '不',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            FadeTransition(
                              opacity: _animation4,
                              child: const Text(
                                '撓',
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
                                                        '百折不撓: 意義/Meaning',
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
                                                          '百折不撓: 意義(中文)',
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.bold
                                                          ),
                                                        ),
                                                        children: [
                                                          Text(
                                                            '解釋：折：挫折。撓：彎曲；引伸為屈服。無論遭到多少挫折；都不退縮；不屈服。',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '拼音：bǎi zhé bù náo',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '反義詞：知難而退、一蹶不振、半途而廢',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '同義詞：百折不回、不屈不撓、堅韌不拔',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '用法：多形容意志堅定；不畏困難；堅持到底的用語。一般作謂語、定語、狀語。',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '出處：漢·蔡邕《太尉橋玄碑》：“其性莊；疾華尚樸；有百折不撓；臨大節而不可奪之風。”',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '例子：他以百折不撓的毅力苦練了五年, 終于登上了珠穆朗瑪峰, 站在了世界最高處。',
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
                                                          '百折不撓: Meaning(English)',
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.bold
                                                          ),
                                                        ),
                                                        children: [
                                                          Text(
                                                            'Meaning：No matter how many setbacks are encountered, do not back down, do not give in.',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            'Antonym：retreat from difficulty && slumped && give up halfway',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            'Synonym：perseverance && tenacity',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            'Usage：More to describe the firm-willed; not afraid of difficulties; perseverance to the end of the term. Generally used as predicate, attributive, adverbial.',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            'Example：He practiced hard for five years with perseverance and perseverance, and finally climbed Mount Everest, the highest point in the world.',
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
                                '百',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            FadeTransition(
                              opacity: _animation2,
                              child: const Text(
                                '折',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            FadeTransition(
                              opacity: _animation3,
                              child: const Text(
                                '不',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            FadeTransition(
                              opacity: _animation4,
                              child: const Text(
                                '撓',
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
                                                        '百折不撓: 意義/Meaning',
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
                                                          '百折不撓: 意義(中文)',
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.bold
                                                          ),
                                                        ),
                                                        children: [
                                                          Text(
                                                            '解釋：折：挫折。撓：彎曲；引伸為屈服。無論遭到多少挫折；都不退縮；不屈服。',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '拼音：bǎi zhé bù náo',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '反義詞：知難而退、一蹶不振、半途而廢',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '同義詞：百折不回、不屈不撓、堅韌不拔',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '用法：多形容意志堅定；不畏困難；堅持到底的用語。一般作謂語、定語、狀語。',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '出處：漢·蔡邕《太尉橋玄碑》：“其性莊；疾華尚樸；有百折不撓；臨大節而不可奪之風。”',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            '例子：他以百折不撓的毅力苦練了五年, 終于登上了珠穆朗瑪峰, 站在了世界最高處。',
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
                                                          '百折不撓: Meaning(English)',
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.bold
                                                          ),
                                                        ),
                                                        children: [
                                                          Text(
                                                            'Meaning：No matter how many setbacks are encountered, do not back down, do not give in.',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            'Antonym：retreat from difficulty && slumped && give up halfway',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            'Synonym：perseverance && tenacity',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            'Usage：More to describe the firm-willed; not afraid of difficulties; perseverance to the end of the term. Generally used as predicate, attributive, adverbial.',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.black
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Text(
                                                            'Example：He practiced hard for five years with perseverance and perseverance, and finally climbed Mount Everest, the highest point in the world.',
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
                  set3 == true && number[0] == '按' && number[1] == '圖' && number[2] == '索' && number[3] == '驥' ||
                      set3 == true && number[4] == '按' && number[5] == '圖' && number[6] == '索' && number[7] == '驥' ||
                      set3 == true && number[8] == '按' && number[9] == '圖' && number[10] == '索' && number[11] == '驥' ||
                      set3 == true && number[12] == '按' && number[13] == '圖' && number[14] == '索' && number[15] == '驥' ||
                      set3 == true && number[16] == '按' && number[17] == '圖' && number[18] == '索' && number[19] == '驥'?
                  Row(
                    children: [
                      FadeTransition(
                        opacity: _animation6,
                        child: const Text(
                          '按',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation7,
                        child: const Text(
                          '圖',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation8,
                        child: const Text(
                          '索',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation9,
                        child: const Text(
                          '驥',
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
                                                  '按圖索驥: 意義/Meaning',
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
                                                    '按圖索驥: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：按圖：按照圖形；索：尋找；驥：好馬。按照畫好的圖形去尋找好馬。①比喻按線索去尋找需要的東西。②比喻按教條辦事；不知變通。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：àn tú suǒ jì',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：不落窠臼',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：照本宣科、生搬硬套',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：多含貶義。用來比喻按照線索去尋求事物。一般作謂語；也作定語、狀語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處:元·袁桷《清容居士集·示從子瑛》詩：“隔竹引龜心有想；按圖索驥術難靈。”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：工具書中索引的作用, 就在于能讓人按圖索驥, 很快找到自己所要的資料。',
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
                                                    '按圖索驥: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：The metaphor follows clues to find what you need.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym：Not out of the norm',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym：According to the script',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：A lot of derogatory connotations. Used as a metaphor to follow clues to find things. Generally used as predicate; also used as attribute, adverbial.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：The function of the index in the reference book is to allow people to follow the map and find the information they want quickly.',
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
                          '按',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation7,
                        child: const Text(
                          '圖',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation8,
                        child: const Text(
                          '索',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation9,
                        child: const Text(
                          '驥',
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
                                                  '按圖索驥: 意義/Meaning',
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
                                                    '按圖索驥: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：按圖：按照圖形；索：尋找；驥：好馬。按照畫好的圖形去尋找好馬。①比喻按線索去尋找需要的東西。②比喻按教條辦事；不知變通。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：àn tú suǒ jì',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：不落窠臼',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：照本宣科、生搬硬套',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：多含貶義。用來比喻按照線索去尋求事物。一般作謂語；也作定語、狀語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處:元·袁桷《清容居士集·示從子瑛》詩：“隔竹引龜心有想；按圖索驥術難靈。”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：工具書中索引的作用, 就在于能讓人按圖索驥, 很快找到自己所要的資料。',
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
                                                    '按圖索驥: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：The metaphor follows clues to find what you need.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym：Not out of the norm',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym：According to the script',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：A lot of derogatory connotations. Used as a metaphor to follow clues to find things. Generally used as predicate; also used as attribute, adverbial.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：The function of the index in the reference book is to allow people to follow the map and find the information they want quickly.',
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
                  set4 == true && number[0] == '白' && number[1] == '駒' && number[2] == '過' && number[3] == '隙' ||
                      set4 == true && number[4] == '白' && number[5] == '駒' && number[6] == '過' && number[7] == '隙' ||
                      set4 == true && number[8] == '白' && number[9] == '駒' && number[10] == '過' && number[11] == '隙' ||
                      set4 == true && number[12] == '白' && number[13] == '駒' && number[14] == '過' && number[15] == '隙' ||
                      set4 == true && number[16] == '白' && number[17] == '駒' && number[18] == '過' && number[19] == '隙'?
                  Row(
                    children: [
                      FadeTransition(
                        opacity: _animation11,
                        child: const Text(
                          '白',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation12,
                        child: const Text(
                          '駒',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation13,
                        child: const Text(
                          '過',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation14,
                        child: const Text(
                          '隙',
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
                                                  '白駒過隙: 意義/Meaning',
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
                                                    '白駒過隙: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：白駒：白色的少壯馬；喻指太陽；過隙：經過縫隙。白色的駿馬飛快地馳過縫隙。現指日影在縫隙前一掃而過。比喻時間過得很快；光陰易逝。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：bái jū guò xì',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：度日如年',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：光陰似箭、日月如梭',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：比喻時光飛快流逝。一般作賓語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處：《莊子·知北游》：“人生天地之間；若白駒之過隙；忽然而已。”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：時光飛逝, 如白駒過隙, 轉眼二十年過去, 她的鬢邊終于也見到了白發。',
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
                                                    '白駒過隙: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：Metaphor time flies fast, time is fleeting.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym：day by day',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym：Time is like an arrow && The sun and the moon are like a shuttle',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：A metaphor for how time flies. Generally used as an object.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：Time flies, like a white horse passing a gap, and twenty years later, she finally saw white hair on her temples.',
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
                          '白',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation12,
                        child: const Text(
                          '駒',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation13,
                        child: const Text(
                          '過',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation14,
                        child: const Text(
                          '隙',
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
                                                  '白駒過隙: 意義/Meaning',
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
                                                    '白駒過隙: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：白駒：白色的少壯馬；喻指太陽；過隙：經過縫隙。白色的駿馬飛快地馳過縫隙。現指日影在縫隙前一掃而過。比喻時間過得很快；光陰易逝。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：bái jū guò xì',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：度日如年',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：光陰似箭、日月如梭',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：比喻時光飛快流逝。一般作賓語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處：《莊子·知北游》：“人生天地之間；若白駒之過隙；忽然而已。”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：時光飛逝, 如白駒過隙, 轉眼二十年過去, 她的鬢邊終于也見到了白發。',
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
                                                    '白駒過隙: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：Metaphor time flies fast, time is fleeting.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym：day by day',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym：Time is like an arrow && The sun and the moon are like a shuttle',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：A metaphor for how time flies. Generally used as an object.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：Time flies, like a white horse passing a gap, and twenty years later, she finally saw white hair on her temples.',
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
            'Mark' : (((number[0] == '安' && number[1] == '貧' && number[2] == '樂' && number[3] == '道') ||
                (number[4] == '安' && number[5] == '貧' && number[6] == '樂' && number[7] == '道') ||
                (number[8] == '安' && number[9] == '貧' && number[10] == '樂' && number[11] == '道') ||
                (number[12] == '安' && number[13] == '貧' && number[14] == '樂' && number[15] == '道') ||
                (number[16] == '安' && number[17] == '貧' && number[18] == '樂' && number[19] == '道')) &&
                ((number[0] == '按' && number[1] == '圖' && number[2] == '索' && number[3] == '驥') ||
                    (number[4] == '按' && number[5] == '圖' && number[6] == '索' && number[7] == '驥') ||
                    (number[8] == '按' && number[9] == '圖' && number[10] == '索' && number[11] == '驥') ||
                    (number[12] == '按' && number[13] == '圖' && number[14] == '索' && number[15] == '驥')||
                    (number[16] == '按' && number[17] == '圖' && number[18] == '索' && number[19] == '驥')) &&
                ((number[0] == '白' && number[1] == '駒' && number[2] == '過' && number[3] == '隙') ||
                    (number[4] == '白' && number[5] == '駒' && number[6] == '過' && number[7] == '隙') ||
                    (number[8] == '白' && number[9] == '駒' && number[10] == '過' && number[11] == '隙') ||
                    (number[12] == '白' && number[13] == '駒' && number[14] == '過' && number[15] == '隙')||
                    (number[16] == '白' && number[17] == '駒' && number[18] == '過' && number[19] == '隙')) &&
                ((number[0] == '百' && number[1] == '折' && number[2] == '不' && number[3] == '撓') ||
                    (number[4] == '百' && number[5] == '折' && number[6] == '不' && number[7] == '撓') ||
                    (number[8] == '百' && number[9] == '折' && number[10] == '不' && number[11] == '撓') ||
                    (number[12] == '百' && number[13] == '折' && number[14] == '不' && number[15] == '撓')||
                    (number[16] == '百' && number[17] == '折' && number[18] == '不' && number[19] == '撓'))
            )?
            '4/4' :
            (((number[0] == '安' && number[1] == '貧' && number[2] == '樂' && number[3] == '道') ||
                (number[4] == '安' && number[5] == '貧' && number[6] == '樂' && number[7] == '道') ||
                (number[8] == '安' && number[9] == '貧' && number[10] == '樂' && number[11] == '道') ||
                (number[12] == '安' && number[13] == '貧' && number[14] == '樂' && number[15] == '道') ||
                (number[16] == '安' && number[17] == '貧' && number[18] == '樂' && number[19] == '道')) &&
                ((number[0] == '按' && number[1] == '圖' && number[2] == '索' && number[3] == '驥') ||
                    (number[4] == '按' && number[5] == '圖' && number[6] == '索' && number[7] == '驥') ||
                    (number[8] == '按' && number[9] == '圖' && number[10] == '索' && number[11] == '驥') ||
                    (number[12] == '按' && number[13] == '圖' && number[14] == '索' && number[15] == '驥')||
                    (number[16] == '按' && number[17] == '圖' && number[18] == '索' && number[19] == '驥')) &&
                ((number[0] == '白' && number[1] == '駒' && number[2] == '過' && number[3] == '隙') ||
                    (number[4] == '白' && number[5] == '駒' && number[6] == '過' && number[7] == '隙') ||
                    (number[8] == '白' && number[9] == '駒' && number[10] == '過' && number[11] == '隙') ||
                    (number[12] == '白' && number[13] == '駒' && number[14] == '過' && number[15] == '隙')||
                    (number[16] == '白' && number[17] == '駒' && number[18] == '過' && number[19] == '隙'))) ||
                (((number[0] == '按' && number[1] == '圖' && number[2] == '索' && number[3] == '驥') ||
                    (number[4] == '按' && number[5] == '圖' && number[6] == '索' && number[7] == '驥') ||
                    (number[8] == '按' && number[9] == '圖' && number[10] == '索' && number[11] == '驥') ||
                    (number[12] == '按' && number[13] == '圖' && number[14] == '索' && number[15] == '驥')||
                    (number[16] == '按' && number[17] == '圖' && number[18] == '索' && number[19] == '驥')) &&
                    ((number[0] == '白' && number[1] == '駒' && number[2] == '過' && number[3] == '隙') ||
                        (number[4] == '白' && number[5] == '駒' && number[6] == '過' && number[7] == '隙') ||
                        (number[8] == '白' && number[9] == '駒' && number[10] == '過' && number[11] == '隙') ||
                        (number[12] == '白' && number[13] == '駒' && number[14] == '過' && number[15] == '隙')||
                        (number[16] == '白' && number[17] == '駒' && number[18] == '過' && number[19] == '隙'))&&
                    ((number[0] == '百' && number[1] == '折' && number[2] == '不' && number[3] == '撓') ||
                        (number[4] == '百' && number[5] == '折' && number[6] == '不' && number[7] == '撓') ||
                        (number[8] == '百' && number[9] == '折' && number[10] == '不' && number[11] == '撓') ||
                        (number[12] == '百' && number[13] == '折' && number[14] == '不' && number[15] == '撓')||
                        (number[16] == '百' && number[17] == '折' && number[18] == '不' && number[19] == '撓'))) ||
                (((number[0] == '安' && number[1] == '貧' && number[2] == '樂' && number[3] == '道') ||
                    (number[4] == '安' && number[5] == '貧' && number[6] == '樂' && number[7] == '道') ||
                    (number[8] == '安' && number[9] == '貧' && number[10] == '樂' && number[11] == '道') ||
                    (number[12] == '安' && number[13] == '貧' && number[14] == '樂' && number[15] == '道') ||
                    (number[16] == '安' && number[17] == '貧' && number[18] == '樂' && number[19] == '道')) &&
                    ((number[0] == '按' && number[1] == '圖' && number[2] == '索' && number[3] == '驥') ||
                        (number[4] == '按' && number[5] == '圖' && number[6] == '索' && number[7] == '驥') ||
                        (number[8] == '按' && number[9] == '圖' && number[10] == '索' && number[11] == '驥') ||
                        (number[12] == '按' && number[13] == '圖' && number[14] == '索' && number[15] == '驥')||
                        (number[16] == '按' && number[17] == '圖' && number[18] == '索' && number[19] == '驥'))&&
                    ((number[0] == '百' && number[1] == '折' && number[2] == '不' && number[3] == '撓') ||
                        (number[4] == '百' && number[5] == '折' && number[6] == '不' && number[7] == '撓') ||
                        (number[8] == '百' && number[9] == '折' && number[10] == '不' && number[11] == '撓') ||
                        (number[12] == '百' && number[13] == '折' && number[14] == '不' && number[15] == '撓')||
                        (number[16] == '百' && number[17] == '折' && number[18] == '不' && number[19] == '撓'))) ||
                (((number[0] == '安' && number[1] == '貧' && number[2] == '樂' && number[3] == '道') ||
                    (number[4] == '安' && number[5] == '貧' && number[6] == '樂' && number[7] == '道') ||
                    (number[8] == '安' && number[9] == '貧' && number[10] == '樂' && number[11] == '道') ||
                    (number[12] == '安' && number[13] == '貧' && number[14] == '樂' && number[15] == '道') ||
                    (number[16] == '安' && number[17] == '貧' && number[18] == '樂' && number[19] == '道'))&&
                    ((number[0] == '白' && number[1] == '駒' && number[2] == '過' && number[3] == '隙') ||
                        (number[4] == '白' && number[5] == '駒' && number[6] == '過' && number[7] == '隙') ||
                        (number[8] == '白' && number[9] == '駒' && number[10] == '過' && number[11] == '隙') ||
                        (number[12] == '白' && number[13] == '駒' && number[14] == '過' && number[15] == '隙')||
                        (number[16] == '白' && number[17] == '駒' && number[18] == '過' && number[19] == '隙'))&&
                    ((number[0] == '百' && number[1] == '折' && number[2] == '不' && number[3] == '撓') ||
                        (number[4] == '百' && number[5] == '折' && number[6] == '不' && number[7] == '撓') ||
                        (number[8] == '百' && number[9] == '折' && number[10] == '不' && number[11] == '撓') ||
                        (number[12] == '百' && number[13] == '折' && number[14] == '不' && number[15] == '撓')||
                        (number[16] == '百' && number[17] == '折' && number[18] == '不' && number[19] == '撓')))?
                '3/4' :

            (((number[0] == '安' && number[1] == '貧' && number[2] == '樂' && number[3] == '道') ||
                (number[4] == '安' && number[5] == '貧' && number[6] == '樂' && number[7] == '道') ||
                (number[8] == '安' && number[9] == '貧' && number[10] == '樂' && number[11] == '道') ||
                (number[12] == '安' && number[13] == '貧' && number[14] == '樂' && number[15] == '道') ||
                (number[16] == '安' && number[17] == '貧' && number[18] == '樂' && number[19] == '道')) &&
                ((number[0] == '按' && number[1] == '圖' && number[2] == '索' && number[3] == '驥') ||
                    (number[4] == '按' && number[5] == '圖' && number[6] == '索' && number[7] == '驥') ||
                    (number[8] == '按' && number[9] == '圖' && number[10] == '索' && number[11] == '驥') ||
                    (number[12] == '按' && number[13] == '圖' && number[14] == '索' && number[15] == '驥')||
                    (number[16] == '按' && number[17] == '圖' && number[18] == '索' && number[19] == '驥'))) ||

                (((number[0] == '白' && number[1] == '駒' && number[2] == '過' && number[3] == '隙') ||
                    (number[4] == '白' && number[5] == '駒' && number[6] == '過' && number[7] == '隙') ||
                    (number[8] == '白' && number[9] == '駒' && number[10] == '過' && number[11] == '隙') ||
                    (number[12] == '白' && number[13] == '駒' && number[14] == '過' && number[15] == '隙')||
                    (number[16] == '白' && number[17] == '駒' && number[18] == '過' && number[19] == '隙')) &&
                    ((number[0] == '百' && number[1] == '折' && number[2] == '不' && number[3] == '撓') ||
                        (number[4] == '百' && number[5] == '折' && number[6] == '不' && number[7] == '撓') ||
                        (number[8] == '百' && number[9] == '折' && number[10] == '不' && number[11] == '撓') ||
                        (number[12] == '百' && number[13] == '折' && number[14] == '不' && number[15] == '撓')||
                        (number[16] == '百' && number[17] == '折' && number[18] == '不' && number[19] == '撓'))) ||

                (((number[0] == '安' && number[1] == '貧' && number[2] == '樂' && number[3] == '道') ||
                    (number[4] == '安' && number[5] == '貧' && number[6] == '樂' && number[7] == '道') ||
                    (number[8] == '安' && number[9] == '貧' && number[10] == '樂' && number[11] == '道') ||
                    (number[12] == '安' && number[13] == '貧' && number[14] == '樂' && number[15] == '道') ||
                    (number[16] == '安' && number[17] == '貧' && number[18] == '樂' && number[19] == '道')) &&
                    ((number[0] == '白' && number[1] == '駒' && number[2] == '過' && number[3] == '隙') ||
                        (number[4] == '白' && number[5] == '駒' && number[6] == '過' && number[7] == '隙') ||
                        (number[8] == '白' && number[9] == '駒' && number[10] == '過' && number[11] == '隙') ||
                        (number[12] == '白' && number[13] == '駒' && number[14] == '過' && number[15] == '隙')||
                        (number[16] == '白' && number[17] == '駒' && number[18] == '過' && number[19] == '隙'))) ||

                (((number[0] == '安' && number[1] == '貧' && number[2] == '樂' && number[3] == '道') ||
                    (number[4] == '安' && number[5] == '貧' && number[6] == '樂' && number[7] == '道') ||
                    (number[8] == '安' && number[9] == '貧' && number[10] == '樂' && number[11] == '道') ||
                    (number[12] == '安' && number[13] == '貧' && number[14] == '樂' && number[15] == '道') ||
                    (number[16] == '安' && number[17] == '貧' && number[18] == '樂' && number[19] == '道')) &&
                    ((number[0] == '百' && number[1] == '折' && number[2] == '不' && number[3] == '撓') ||
                        (number[4] == '百' && number[5] == '折' && number[6] == '不' && number[7] == '撓') ||
                        (number[8] == '百' && number[9] == '折' && number[10] == '不' && number[11] == '撓') ||
                        (number[12] == '百' && number[13] == '折' && number[14] == '不' && number[15] == '撓')||
                        (number[16] == '百' && number[17] == '折' && number[18] == '不' && number[19] == '撓'))) ||

                (((number[0] == '按' && number[1] == '圖' && number[2] == '索' && number[3] == '驥') ||
                    (number[4] == '按' && number[5] == '圖' && number[6] == '索' && number[7] == '驥') ||
                    (number[8] == '按' && number[9] == '圖' && number[10] == '索' && number[11] == '驥') ||
                    (number[12] == '按' && number[13] == '圖' && number[14] == '索' && number[15] == '驥')||
                    (number[16] == '按' && number[17] == '圖' && number[18] == '索' && number[19] == '驥')) &&
                    ((number[0] == '白' && number[1] == '駒' && number[2] == '過' && number[3] == '隙') ||
                        (number[4] == '白' && number[5] == '駒' && number[6] == '過' && number[7] == '隙') ||
                        (number[8] == '白' && number[9] == '駒' && number[10] == '過' && number[11] == '隙') ||
                        (number[12] == '白' && number[13] == '駒' && number[14] == '過' && number[15] == '隙')||
                        (number[16] == '白' && number[17] == '駒' && number[18] == '過' && number[19] == '隙'))) ||

                (((number[0] == '按' && number[1] == '圖' && number[2] == '索' && number[3] == '驥') ||
                    (number[4] == '按' && number[5] == '圖' && number[6] == '索' && number[7] == '驥') ||
                    (number[8] == '按' && number[9] == '圖' && number[10] == '索' && number[11] == '驥') ||
                    (number[12] == '按' && number[13] == '圖' && number[14] == '索' && number[15] == '驥')||
                    (number[16] == '按' && number[17] == '圖' && number[18] == '索' && number[19] == '驥')) &&
                    ((number[0] == '百' && number[1] == '折' && number[2] == '不' && number[3] == '撓') ||
                        (number[4] == '百' && number[5] == '折' && number[6] == '不' && number[7] == '撓') ||
                        (number[8] == '百' && number[9] == '折' && number[10] == '不' && number[11] == '撓') ||
                        (number[12] == '百' && number[13] == '折' && number[14] == '不' && number[15] == '撓')||
                        (number[16] == '百' && number[17] == '折' && number[18] == '不' && number[19] == '撓'))) ?
            '2/4' :
            (((number[0] == '安' && number[1] == '貧' && number[2] == '樂' && number[3] == '道') ||
                (number[4] == '安' && number[5] == '貧' && number[6] == '樂' && number[7] == '道') ||
                (number[8] == '安' && number[9] == '貧' && number[10] == '樂' && number[11] == '道') ||
                (number[12] == '安' && number[13] == '貧' && number[14] == '樂' && number[15] == '道') ||
                (number[16] == '安' && number[17] == '貧' && number[18] == '樂' && number[19] == '道')) ||
                (((number[0] == '按' && number[1] == '圖' && number[2] == '索' && number[3] == '驥') ||
                    (number[4] == '按' && number[5] == '圖' && number[6] == '索' && number[7] == '驥') ||
                    (number[8] == '按' && number[9] == '圖' && number[10] == '索' && number[11] == '驥') ||
                    (number[12] == '按' && number[13] == '圖' && number[14] == '索' && number[15] == '驥')||
                    (number[16] == '按' && number[17] == '圖' && number[18] == '索' && number[19] == '驥')) ||
                    ((number[0] == '白' && number[1] == '駒' && number[2] == '過' && number[3] == '隙') ||
                        (number[4] == '白' && number[5] == '駒' && number[6] == '過' && number[7] == '隙') ||
                        (number[8] == '白' && number[9] == '駒' && number[10] == '過' && number[11] == '隙') ||
                        (number[12] == '白' && number[13] == '駒' && number[14] == '過' && number[15] == '隙')||
                        (number[16] == '白' && number[17] == '駒' && number[18] == '過' && number[19] == '隙'))||
                    ((number[0] == '百' && number[1] == '折' && number[2] == '不' && number[3] == '撓') ||
                        (number[4] == '百' && number[5] == '折' && number[6] == '不' && number[7] == '撓') ||
                        (number[8] == '百' && number[9] == '折' && number[10] == '不' && number[11] == '撓') ||
                        (number[12] == '百' && number[13] == '折' && number[14] == '不' && number[15] == '撓')||
                        (number[16] == '百' && number[17] == '折' && number[18] == '不' && number[19] == '撓')))
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
            'Mark' : (((number[0] == '安' && number[1] == '貧' && number[2] == '樂' && number[3] == '道') ||
                (number[4] == '安' && number[5] == '貧' && number[6] == '樂' && number[7] == '道') ||
                (number[8] == '安' && number[9] == '貧' && number[10] == '樂' && number[11] == '道') ||
                (number[12] == '安' && number[13] == '貧' && number[14] == '樂' && number[15] == '道') ||
                (number[16] == '安' && number[17] == '貧' && number[18] == '樂' && number[19] == '道')) &&
                ((number[0] == '按' && number[1] == '圖' && number[2] == '索' && number[3] == '驥') ||
                    (number[4] == '按' && number[5] == '圖' && number[6] == '索' && number[7] == '驥') ||
                    (number[8] == '按' && number[9] == '圖' && number[10] == '索' && number[11] == '驥') ||
                    (number[12] == '按' && number[13] == '圖' && number[14] == '索' && number[15] == '驥')||
                    (number[16] == '按' && number[17] == '圖' && number[18] == '索' && number[19] == '驥')) &&
                ((number[0] == '白' && number[1] == '駒' && number[2] == '過' && number[3] == '隙') ||
                    (number[4] == '白' && number[5] == '駒' && number[6] == '過' && number[7] == '隙') ||
                    (number[8] == '白' && number[9] == '駒' && number[10] == '過' && number[11] == '隙') ||
                    (number[12] == '白' && number[13] == '駒' && number[14] == '過' && number[15] == '隙')||
                    (number[16] == '白' && number[17] == '駒' && number[18] == '過' && number[19] == '隙')) &&
                ((number[0] == '百' && number[1] == '折' && number[2] == '不' && number[3] == '撓') ||
                    (number[4] == '百' && number[5] == '折' && number[6] == '不' && number[7] == '撓') ||
                    (number[8] == '百' && number[9] == '折' && number[10] == '不' && number[11] == '撓') ||
                    (number[12] == '百' && number[13] == '折' && number[14] == '不' && number[15] == '撓')||
                    (number[16] == '百' && number[17] == '折' && number[18] == '不' && number[19] == '撓'))
            )?
            '4/4' :
            (((number[0] == '安' && number[1] == '貧' && number[2] == '樂' && number[3] == '道') ||
                (number[4] == '安' && number[5] == '貧' && number[6] == '樂' && number[7] == '道') ||
                (number[8] == '安' && number[9] == '貧' && number[10] == '樂' && number[11] == '道') ||
                (number[12] == '安' && number[13] == '貧' && number[14] == '樂' && number[15] == '道') ||
                (number[16] == '安' && number[17] == '貧' && number[18] == '樂' && number[19] == '道')) &&
                ((number[0] == '按' && number[1] == '圖' && number[2] == '索' && number[3] == '驥') ||
                    (number[4] == '按' && number[5] == '圖' && number[6] == '索' && number[7] == '驥') ||
                    (number[8] == '按' && number[9] == '圖' && number[10] == '索' && number[11] == '驥') ||
                    (number[12] == '按' && number[13] == '圖' && number[14] == '索' && number[15] == '驥')||
                    (number[16] == '按' && number[17] == '圖' && number[18] == '索' && number[19] == '驥')) &&
                ((number[0] == '白' && number[1] == '駒' && number[2] == '過' && number[3] == '隙') ||
                    (number[4] == '白' && number[5] == '駒' && number[6] == '過' && number[7] == '隙') ||
                    (number[8] == '白' && number[9] == '駒' && number[10] == '過' && number[11] == '隙') ||
                    (number[12] == '白' && number[13] == '駒' && number[14] == '過' && number[15] == '隙')||
                    (number[16] == '白' && number[17] == '駒' && number[18] == '過' && number[19] == '隙'))) ||
                (((number[0] == '按' && number[1] == '圖' && number[2] == '索' && number[3] == '驥') ||
                    (number[4] == '按' && number[5] == '圖' && number[6] == '索' && number[7] == '驥') ||
                    (number[8] == '按' && number[9] == '圖' && number[10] == '索' && number[11] == '驥') ||
                    (number[12] == '按' && number[13] == '圖' && number[14] == '索' && number[15] == '驥')||
                    (number[16] == '按' && number[17] == '圖' && number[18] == '索' && number[19] == '驥')) &&
                    ((number[0] == '白' && number[1] == '駒' && number[2] == '過' && number[3] == '隙') ||
                        (number[4] == '白' && number[5] == '駒' && number[6] == '過' && number[7] == '隙') ||
                        (number[8] == '白' && number[9] == '駒' && number[10] == '過' && number[11] == '隙') ||
                        (number[12] == '白' && number[13] == '駒' && number[14] == '過' && number[15] == '隙')||
                        (number[16] == '白' && number[17] == '駒' && number[18] == '過' && number[19] == '隙'))&&
                    ((number[0] == '百' && number[1] == '折' && number[2] == '不' && number[3] == '撓') ||
                        (number[4] == '百' && number[5] == '折' && number[6] == '不' && number[7] == '撓') ||
                        (number[8] == '百' && number[9] == '折' && number[10] == '不' && number[11] == '撓') ||
                        (number[12] == '百' && number[13] == '折' && number[14] == '不' && number[15] == '撓')||
                        (number[16] == '百' && number[17] == '折' && number[18] == '不' && number[19] == '撓'))) ||
                (((number[0] == '安' && number[1] == '貧' && number[2] == '樂' && number[3] == '道') ||
                    (number[4] == '安' && number[5] == '貧' && number[6] == '樂' && number[7] == '道') ||
                    (number[8] == '安' && number[9] == '貧' && number[10] == '樂' && number[11] == '道') ||
                    (number[12] == '安' && number[13] == '貧' && number[14] == '樂' && number[15] == '道') ||
                    (number[16] == '安' && number[17] == '貧' && number[18] == '樂' && number[19] == '道')) &&
                    ((number[0] == '按' && number[1] == '圖' && number[2] == '索' && number[3] == '驥') ||
                        (number[4] == '按' && number[5] == '圖' && number[6] == '索' && number[7] == '驥') ||
                        (number[8] == '按' && number[9] == '圖' && number[10] == '索' && number[11] == '驥') ||
                        (number[12] == '按' && number[13] == '圖' && number[14] == '索' && number[15] == '驥')||
                        (number[16] == '按' && number[17] == '圖' && number[18] == '索' && number[19] == '驥'))&&
                    ((number[0] == '百' && number[1] == '折' && number[2] == '不' && number[3] == '撓') ||
                        (number[4] == '百' && number[5] == '折' && number[6] == '不' && number[7] == '撓') ||
                        (number[8] == '百' && number[9] == '折' && number[10] == '不' && number[11] == '撓') ||
                        (number[12] == '百' && number[13] == '折' && number[14] == '不' && number[15] == '撓')||
                        (number[16] == '百' && number[17] == '折' && number[18] == '不' && number[19] == '撓'))) ||
                (((number[0] == '安' && number[1] == '貧' && number[2] == '樂' && number[3] == '道') ||
                    (number[4] == '安' && number[5] == '貧' && number[6] == '樂' && number[7] == '道') ||
                    (number[8] == '安' && number[9] == '貧' && number[10] == '樂' && number[11] == '道') ||
                    (number[12] == '安' && number[13] == '貧' && number[14] == '樂' && number[15] == '道') ||
                    (number[16] == '安' && number[17] == '貧' && number[18] == '樂' && number[19] == '道'))&&
                    ((number[0] == '白' && number[1] == '駒' && number[2] == '過' && number[3] == '隙') ||
                        (number[4] == '白' && number[5] == '駒' && number[6] == '過' && number[7] == '隙') ||
                        (number[8] == '白' && number[9] == '駒' && number[10] == '過' && number[11] == '隙') ||
                        (number[12] == '白' && number[13] == '駒' && number[14] == '過' && number[15] == '隙')||
                        (number[16] == '白' && number[17] == '駒' && number[18] == '過' && number[19] == '隙'))&&
                    ((number[0] == '百' && number[1] == '折' && number[2] == '不' && number[3] == '撓') ||
                        (number[4] == '百' && number[5] == '折' && number[6] == '不' && number[7] == '撓') ||
                        (number[8] == '百' && number[9] == '折' && number[10] == '不' && number[11] == '撓') ||
                        (number[12] == '百' && number[13] == '折' && number[14] == '不' && number[15] == '撓')||
                        (number[16] == '百' && number[17] == '折' && number[18] == '不' && number[19] == '撓')))?
            '3/4' :

            (((number[0] == '安' && number[1] == '貧' && number[2] == '樂' && number[3] == '道') ||
                (number[4] == '安' && number[5] == '貧' && number[6] == '樂' && number[7] == '道') ||
                (number[8] == '安' && number[9] == '貧' && number[10] == '樂' && number[11] == '道') ||
                (number[12] == '安' && number[13] == '貧' && number[14] == '樂' && number[15] == '道') ||
                (number[16] == '安' && number[17] == '貧' && number[18] == '樂' && number[19] == '道')) &&
                ((number[0] == '按' && number[1] == '圖' && number[2] == '索' && number[3] == '驥') ||
                    (number[4] == '按' && number[5] == '圖' && number[6] == '索' && number[7] == '驥') ||
                    (number[8] == '按' && number[9] == '圖' && number[10] == '索' && number[11] == '驥') ||
                    (number[12] == '按' && number[13] == '圖' && number[14] == '索' && number[15] == '驥')||
                    (number[16] == '按' && number[17] == '圖' && number[18] == '索' && number[19] == '驥'))) ||

                (((number[0] == '白' && number[1] == '駒' && number[2] == '過' && number[3] == '隙') ||
                    (number[4] == '白' && number[5] == '駒' && number[6] == '過' && number[7] == '隙') ||
                    (number[8] == '白' && number[9] == '駒' && number[10] == '過' && number[11] == '隙') ||
                    (number[12] == '白' && number[13] == '駒' && number[14] == '過' && number[15] == '隙')||
                    (number[16] == '白' && number[17] == '駒' && number[18] == '過' && number[19] == '隙')) &&
                    ((number[0] == '百' && number[1] == '折' && number[2] == '不' && number[3] == '撓') ||
                        (number[4] == '百' && number[5] == '折' && number[6] == '不' && number[7] == '撓') ||
                        (number[8] == '百' && number[9] == '折' && number[10] == '不' && number[11] == '撓') ||
                        (number[12] == '百' && number[13] == '折' && number[14] == '不' && number[15] == '撓')||
                        (number[16] == '百' && number[17] == '折' && number[18] == '不' && number[19] == '撓'))) ||

                (((number[0] == '安' && number[1] == '貧' && number[2] == '樂' && number[3] == '道') ||
                    (number[4] == '安' && number[5] == '貧' && number[6] == '樂' && number[7] == '道') ||
                    (number[8] == '安' && number[9] == '貧' && number[10] == '樂' && number[11] == '道') ||
                    (number[12] == '安' && number[13] == '貧' && number[14] == '樂' && number[15] == '道') ||
                    (number[16] == '安' && number[17] == '貧' && number[18] == '樂' && number[19] == '道')) &&
                    ((number[0] == '白' && number[1] == '駒' && number[2] == '過' && number[3] == '隙') ||
                        (number[4] == '白' && number[5] == '駒' && number[6] == '過' && number[7] == '隙') ||
                        (number[8] == '白' && number[9] == '駒' && number[10] == '過' && number[11] == '隙') ||
                        (number[12] == '白' && number[13] == '駒' && number[14] == '過' && number[15] == '隙')||
                        (number[16] == '白' && number[17] == '駒' && number[18] == '過' && number[19] == '隙'))) ||

                (((number[0] == '安' && number[1] == '貧' && number[2] == '樂' && number[3] == '道') ||
                    (number[4] == '安' && number[5] == '貧' && number[6] == '樂' && number[7] == '道') ||
                    (number[8] == '安' && number[9] == '貧' && number[10] == '樂' && number[11] == '道') ||
                    (number[12] == '安' && number[13] == '貧' && number[14] == '樂' && number[15] == '道') ||
                    (number[16] == '安' && number[17] == '貧' && number[18] == '樂' && number[19] == '道')) &&
                    ((number[0] == '百' && number[1] == '折' && number[2] == '不' && number[3] == '撓') ||
                        (number[4] == '百' && number[5] == '折' && number[6] == '不' && number[7] == '撓') ||
                        (number[8] == '百' && number[9] == '折' && number[10] == '不' && number[11] == '撓') ||
                        (number[12] == '百' && number[13] == '折' && number[14] == '不' && number[15] == '撓')||
                        (number[16] == '百' && number[17] == '折' && number[18] == '不' && number[19] == '撓'))) ||

                (((number[0] == '按' && number[1] == '圖' && number[2] == '索' && number[3] == '驥') ||
                    (number[4] == '按' && number[5] == '圖' && number[6] == '索' && number[7] == '驥') ||
                    (number[8] == '按' && number[9] == '圖' && number[10] == '索' && number[11] == '驥') ||
                    (number[12] == '按' && number[13] == '圖' && number[14] == '索' && number[15] == '驥')||
                    (number[16] == '按' && number[17] == '圖' && number[18] == '索' && number[19] == '驥')) &&
                    ((number[0] == '白' && number[1] == '駒' && number[2] == '過' && number[3] == '隙') ||
                        (number[4] == '白' && number[5] == '駒' && number[6] == '過' && number[7] == '隙') ||
                        (number[8] == '白' && number[9] == '駒' && number[10] == '過' && number[11] == '隙') ||
                        (number[12] == '白' && number[13] == '駒' && number[14] == '過' && number[15] == '隙')||
                        (number[16] == '白' && number[17] == '駒' && number[18] == '過' && number[19] == '隙'))) ||

                (((number[0] == '按' && number[1] == '圖' && number[2] == '索' && number[3] == '驥') ||
                    (number[4] == '按' && number[5] == '圖' && number[6] == '索' && number[7] == '驥') ||
                    (number[8] == '按' && number[9] == '圖' && number[10] == '索' && number[11] == '驥') ||
                    (number[12] == '按' && number[13] == '圖' && number[14] == '索' && number[15] == '驥')||
                    (number[16] == '按' && number[17] == '圖' && number[18] == '索' && number[19] == '驥')) &&
                    ((number[0] == '百' && number[1] == '折' && number[2] == '不' && number[3] == '撓') ||
                        (number[4] == '百' && number[5] == '折' && number[6] == '不' && number[7] == '撓') ||
                        (number[8] == '百' && number[9] == '折' && number[10] == '不' && number[11] == '撓') ||
                        (number[12] == '百' && number[13] == '折' && number[14] == '不' && number[15] == '撓')||
                        (number[16] == '百' && number[17] == '折' && number[18] == '不' && number[19] == '撓'))) ?
            '2/4' :
            (((number[0] == '安' && number[1] == '貧' && number[2] == '樂' && number[3] == '道') ||
                (number[4] == '安' && number[5] == '貧' && number[6] == '樂' && number[7] == '道') ||
                (number[8] == '安' && number[9] == '貧' && number[10] == '樂' && number[11] == '道') ||
                (number[12] == '安' && number[13] == '貧' && number[14] == '樂' && number[15] == '道') ||
                (number[16] == '安' && number[17] == '貧' && number[18] == '樂' && number[19] == '道')) ||
                (((number[0] == '按' && number[1] == '圖' && number[2] == '索' && number[3] == '驥') ||
                    (number[4] == '按' && number[5] == '圖' && number[6] == '索' && number[7] == '驥') ||
                    (number[8] == '按' && number[9] == '圖' && number[10] == '索' && number[11] == '驥') ||
                    (number[12] == '按' && number[13] == '圖' && number[14] == '索' && number[15] == '驥')||
                    (number[16] == '按' && number[17] == '圖' && number[18] == '索' && number[19] == '驥')) ||
                    ((number[0] == '白' && number[1] == '駒' && number[2] == '過' && number[3] == '隙') ||
                        (number[4] == '白' && number[5] == '駒' && number[6] == '過' && number[7] == '隙') ||
                        (number[8] == '白' && number[9] == '駒' && number[10] == '過' && number[11] == '隙') ||
                        (number[12] == '白' && number[13] == '駒' && number[14] == '過' && number[15] == '隙')||
                        (number[16] == '白' && number[17] == '駒' && number[18] == '過' && number[19] == '隙'))||
                    ((number[0] == '百' && number[1] == '折' && number[2] == '不' && number[3] == '撓') ||
                        (number[4] == '百' && number[5] == '折' && number[6] == '不' && number[7] == '撓') ||
                        (number[8] == '百' && number[9] == '折' && number[10] == '不' && number[11] == '撓') ||
                        (number[12] == '百' && number[13] == '折' && number[14] == '不' && number[15] == '撓')||
                        (number[16] == '百' && number[17] == '折' && number[18] == '不' && number[19] == '撓')))
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
                                          (((number[0] == '安' && number[1] == '貧' && number[2] == '樂' && number[3] == '道') ||
                                              (number[4] == '安' && number[5] == '貧' && number[6] == '樂' && number[7] == '道') ||
                                              (number[8] == '安' && number[9] == '貧' && number[10] == '樂' && number[11] == '道') ||
                                              (number[12] == '安' && number[13] == '貧' && number[14] == '樂' && number[15] == '道') ||
                                              (number[16] == '安' && number[17] == '貧' && number[18] == '樂' && number[19] == '道')) &&
                                              ((number[0] == '按' && number[1] == '圖' && number[2] == '索' && number[3] == '驥') ||
                                                  (number[4] == '按' && number[5] == '圖' && number[6] == '索' && number[7] == '驥') ||
                                                  (number[8] == '按' && number[9] == '圖' && number[10] == '索' && number[11] == '驥') ||
                                                  (number[12] == '按' && number[13] == '圖' && number[14] == '索' && number[15] == '驥')||
                                                  (number[16] == '按' && number[17] == '圖' && number[18] == '索' && number[19] == '驥')) &&
                                              ((number[0] == '白' && number[1] == '駒' && number[2] == '過' && number[3] == '隙') ||
                                                  (number[4] == '白' && number[5] == '駒' && number[6] == '過' && number[7] == '隙') ||
                                                  (number[8] == '白' && number[9] == '駒' && number[10] == '過' && number[11] == '隙') ||
                                                  (number[12] == '白' && number[13] == '駒' && number[14] == '過' && number[15] == '隙')||
                                                  (number[16] == '白' && number[17] == '駒' && number[18] == '過' && number[19] == '隙')) &&
                                              ((number[0] == '百' && number[1] == '折' && number[2] == '不' && number[3] == '撓') ||
                                                  (number[4] == '百' && number[5] == '折' && number[6] == '不' && number[7] == '撓') ||
                                                  (number[8] == '百' && number[9] == '折' && number[10] == '不' && number[11] == '撓') ||
                                                  (number[12] == '百' && number[13] == '折' && number[14] == '不' && number[15] == '撓')||
                                                  (number[16] == '百' && number[17] == '折' && number[18] == '不' && number[19] == '撓'))
                                          )?
                                          '4/4' :
                                          (((number[0] == '安' && number[1] == '貧' && number[2] == '樂' && number[3] == '道') ||
                                              (number[4] == '安' && number[5] == '貧' && number[6] == '樂' && number[7] == '道') ||
                                              (number[8] == '安' && number[9] == '貧' && number[10] == '樂' && number[11] == '道') ||
                                              (number[12] == '安' && number[13] == '貧' && number[14] == '樂' && number[15] == '道') ||
                                              (number[16] == '安' && number[17] == '貧' && number[18] == '樂' && number[19] == '道')) &&
                                              ((number[0] == '按' && number[1] == '圖' && number[2] == '索' && number[3] == '驥') ||
                                                  (number[4] == '按' && number[5] == '圖' && number[6] == '索' && number[7] == '驥') ||
                                                  (number[8] == '按' && number[9] == '圖' && number[10] == '索' && number[11] == '驥') ||
                                                  (number[12] == '按' && number[13] == '圖' && number[14] == '索' && number[15] == '驥')||
                                                  (number[16] == '按' && number[17] == '圖' && number[18] == '索' && number[19] == '驥')) &&
                                              ((number[0] == '白' && number[1] == '駒' && number[2] == '過' && number[3] == '隙') ||
                                                  (number[4] == '白' && number[5] == '駒' && number[6] == '過' && number[7] == '隙') ||
                                                  (number[8] == '白' && number[9] == '駒' && number[10] == '過' && number[11] == '隙') ||
                                                  (number[12] == '白' && number[13] == '駒' && number[14] == '過' && number[15] == '隙')||
                                                  (number[16] == '白' && number[17] == '駒' && number[18] == '過' && number[19] == '隙'))) ||
                                              (((number[0] == '按' && number[1] == '圖' && number[2] == '索' && number[3] == '驥') ||
                                                  (number[4] == '按' && number[5] == '圖' && number[6] == '索' && number[7] == '驥') ||
                                                  (number[8] == '按' && number[9] == '圖' && number[10] == '索' && number[11] == '驥') ||
                                                  (number[12] == '按' && number[13] == '圖' && number[14] == '索' && number[15] == '驥')||
                                                  (number[16] == '按' && number[17] == '圖' && number[18] == '索' && number[19] == '驥')) &&
                                                  ((number[0] == '白' && number[1] == '駒' && number[2] == '過' && number[3] == '隙') ||
                                                      (number[4] == '白' && number[5] == '駒' && number[6] == '過' && number[7] == '隙') ||
                                                      (number[8] == '白' && number[9] == '駒' && number[10] == '過' && number[11] == '隙') ||
                                                      (number[12] == '白' && number[13] == '駒' && number[14] == '過' && number[15] == '隙')||
                                                      (number[16] == '白' && number[17] == '駒' && number[18] == '過' && number[19] == '隙'))&&
                                                  ((number[0] == '百' && number[1] == '折' && number[2] == '不' && number[3] == '撓') ||
                                                      (number[4] == '百' && number[5] == '折' && number[6] == '不' && number[7] == '撓') ||
                                                      (number[8] == '百' && number[9] == '折' && number[10] == '不' && number[11] == '撓') ||
                                                      (number[12] == '百' && number[13] == '折' && number[14] == '不' && number[15] == '撓')||
                                                      (number[16] == '百' && number[17] == '折' && number[18] == '不' && number[19] == '撓'))) ||
                                              (((number[0] == '安' && number[1] == '貧' && number[2] == '樂' && number[3] == '道') ||
                                                  (number[4] == '安' && number[5] == '貧' && number[6] == '樂' && number[7] == '道') ||
                                                  (number[8] == '安' && number[9] == '貧' && number[10] == '樂' && number[11] == '道') ||
                                                  (number[12] == '安' && number[13] == '貧' && number[14] == '樂' && number[15] == '道') ||
                                                  (number[16] == '安' && number[17] == '貧' && number[18] == '樂' && number[19] == '道')) &&
                                                  ((number[0] == '按' && number[1] == '圖' && number[2] == '索' && number[3] == '驥') ||
                                                      (number[4] == '按' && number[5] == '圖' && number[6] == '索' && number[7] == '驥') ||
                                                      (number[8] == '按' && number[9] == '圖' && number[10] == '索' && number[11] == '驥') ||
                                                      (number[12] == '按' && number[13] == '圖' && number[14] == '索' && number[15] == '驥')||
                                                      (number[16] == '按' && number[17] == '圖' && number[18] == '索' && number[19] == '驥'))&&
                                                  ((number[0] == '百' && number[1] == '折' && number[2] == '不' && number[3] == '撓') ||
                                                      (number[4] == '百' && number[5] == '折' && number[6] == '不' && number[7] == '撓') ||
                                                      (number[8] == '百' && number[9] == '折' && number[10] == '不' && number[11] == '撓') ||
                                                      (number[12] == '百' && number[13] == '折' && number[14] == '不' && number[15] == '撓')||
                                                      (number[16] == '百' && number[17] == '折' && number[18] == '不' && number[19] == '撓'))) ||
                                              (((number[0] == '安' && number[1] == '貧' && number[2] == '樂' && number[3] == '道') ||
                                                  (number[4] == '安' && number[5] == '貧' && number[6] == '樂' && number[7] == '道') ||
                                                  (number[8] == '安' && number[9] == '貧' && number[10] == '樂' && number[11] == '道') ||
                                                  (number[12] == '安' && number[13] == '貧' && number[14] == '樂' && number[15] == '道') ||
                                                  (number[16] == '安' && number[17] == '貧' && number[18] == '樂' && number[19] == '道'))&&
                                                  ((number[0] == '白' && number[1] == '駒' && number[2] == '過' && number[3] == '隙') ||
                                                      (number[4] == '白' && number[5] == '駒' && number[6] == '過' && number[7] == '隙') ||
                                                      (number[8] == '白' && number[9] == '駒' && number[10] == '過' && number[11] == '隙') ||
                                                      (number[12] == '白' && number[13] == '駒' && number[14] == '過' && number[15] == '隙')||
                                                      (number[16] == '白' && number[17] == '駒' && number[18] == '過' && number[19] == '隙'))&&
                                                  ((number[0] == '百' && number[1] == '折' && number[2] == '不' && number[3] == '撓') ||
                                                      (number[4] == '百' && number[5] == '折' && number[6] == '不' && number[7] == '撓') ||
                                                      (number[8] == '百' && number[9] == '折' && number[10] == '不' && number[11] == '撓') ||
                                                      (number[12] == '百' && number[13] == '折' && number[14] == '不' && number[15] == '撓')||
                                                      (number[16] == '百' && number[17] == '折' && number[18] == '不' && number[19] == '撓')))?
                                          '3/4' :

                                          (((number[0] == '安' && number[1] == '貧' && number[2] == '樂' && number[3] == '道') ||
                                              (number[4] == '安' && number[5] == '貧' && number[6] == '樂' && number[7] == '道') ||
                                              (number[8] == '安' && number[9] == '貧' && number[10] == '樂' && number[11] == '道') ||
                                              (number[12] == '安' && number[13] == '貧' && number[14] == '樂' && number[15] == '道') ||
                                              (number[16] == '安' && number[17] == '貧' && number[18] == '樂' && number[19] == '道')) &&
                                              ((number[0] == '按' && number[1] == '圖' && number[2] == '索' && number[3] == '驥') ||
                                                  (number[4] == '按' && number[5] == '圖' && number[6] == '索' && number[7] == '驥') ||
                                                  (number[8] == '按' && number[9] == '圖' && number[10] == '索' && number[11] == '驥') ||
                                                  (number[12] == '按' && number[13] == '圖' && number[14] == '索' && number[15] == '驥')||
                                                  (number[16] == '按' && number[17] == '圖' && number[18] == '索' && number[19] == '驥'))) ||

                                              (((number[0] == '白' && number[1] == '駒' && number[2] == '過' && number[3] == '隙') ||
                                                  (number[4] == '白' && number[5] == '駒' && number[6] == '過' && number[7] == '隙') ||
                                                  (number[8] == '白' && number[9] == '駒' && number[10] == '過' && number[11] == '隙') ||
                                                  (number[12] == '白' && number[13] == '駒' && number[14] == '過' && number[15] == '隙')||
                                                  (number[16] == '白' && number[17] == '駒' && number[18] == '過' && number[19] == '隙')) &&
                                                  ((number[0] == '百' && number[1] == '折' && number[2] == '不' && number[3] == '撓') ||
                                                      (number[4] == '百' && number[5] == '折' && number[6] == '不' && number[7] == '撓') ||
                                                      (number[8] == '百' && number[9] == '折' && number[10] == '不' && number[11] == '撓') ||
                                                      (number[12] == '百' && number[13] == '折' && number[14] == '不' && number[15] == '撓')||
                                                      (number[16] == '百' && number[17] == '折' && number[18] == '不' && number[19] == '撓'))) ||

                                              (((number[0] == '安' && number[1] == '貧' && number[2] == '樂' && number[3] == '道') ||
                                                  (number[4] == '安' && number[5] == '貧' && number[6] == '樂' && number[7] == '道') ||
                                                  (number[8] == '安' && number[9] == '貧' && number[10] == '樂' && number[11] == '道') ||
                                                  (number[12] == '安' && number[13] == '貧' && number[14] == '樂' && number[15] == '道') ||
                                                  (number[16] == '安' && number[17] == '貧' && number[18] == '樂' && number[19] == '道')) &&
                                                  ((number[0] == '白' && number[1] == '駒' && number[2] == '過' && number[3] == '隙') ||
                                                      (number[4] == '白' && number[5] == '駒' && number[6] == '過' && number[7] == '隙') ||
                                                      (number[8] == '白' && number[9] == '駒' && number[10] == '過' && number[11] == '隙') ||
                                                      (number[12] == '白' && number[13] == '駒' && number[14] == '過' && number[15] == '隙')||
                                                      (number[16] == '白' && number[17] == '駒' && number[18] == '過' && number[19] == '隙'))) ||

                                              (((number[0] == '安' && number[1] == '貧' && number[2] == '樂' && number[3] == '道') ||
                                                  (number[4] == '安' && number[5] == '貧' && number[6] == '樂' && number[7] == '道') ||
                                                  (number[8] == '安' && number[9] == '貧' && number[10] == '樂' && number[11] == '道') ||
                                                  (number[12] == '安' && number[13] == '貧' && number[14] == '樂' && number[15] == '道') ||
                                                  (number[16] == '安' && number[17] == '貧' && number[18] == '樂' && number[19] == '道')) &&
                                                  ((number[0] == '百' && number[1] == '折' && number[2] == '不' && number[3] == '撓') ||
                                                      (number[4] == '百' && number[5] == '折' && number[6] == '不' && number[7] == '撓') ||
                                                      (number[8] == '百' && number[9] == '折' && number[10] == '不' && number[11] == '撓') ||
                                                      (number[12] == '百' && number[13] == '折' && number[14] == '不' && number[15] == '撓')||
                                                      (number[16] == '百' && number[17] == '折' && number[18] == '不' && number[19] == '撓'))) ||

                                              (((number[0] == '按' && number[1] == '圖' && number[2] == '索' && number[3] == '驥') ||
                                                  (number[4] == '按' && number[5] == '圖' && number[6] == '索' && number[7] == '驥') ||
                                                  (number[8] == '按' && number[9] == '圖' && number[10] == '索' && number[11] == '驥') ||
                                                  (number[12] == '按' && number[13] == '圖' && number[14] == '索' && number[15] == '驥')||
                                                  (number[16] == '按' && number[17] == '圖' && number[18] == '索' && number[19] == '驥')) &&
                                                  ((number[0] == '白' && number[1] == '駒' && number[2] == '過' && number[3] == '隙') ||
                                                      (number[4] == '白' && number[5] == '駒' && number[6] == '過' && number[7] == '隙') ||
                                                      (number[8] == '白' && number[9] == '駒' && number[10] == '過' && number[11] == '隙') ||
                                                      (number[12] == '白' && number[13] == '駒' && number[14] == '過' && number[15] == '隙')||
                                                      (number[16] == '白' && number[17] == '駒' && number[18] == '過' && number[19] == '隙'))) ||

                                              (((number[0] == '按' && number[1] == '圖' && number[2] == '索' && number[3] == '驥') ||
                                                  (number[4] == '按' && number[5] == '圖' && number[6] == '索' && number[7] == '驥') ||
                                                  (number[8] == '按' && number[9] == '圖' && number[10] == '索' && number[11] == '驥') ||
                                                  (number[12] == '按' && number[13] == '圖' && number[14] == '索' && number[15] == '驥')||
                                                  (number[16] == '按' && number[17] == '圖' && number[18] == '索' && number[19] == '驥')) &&
                                                  ((number[0] == '百' && number[1] == '折' && number[2] == '不' && number[3] == '撓') ||
                                                      (number[4] == '百' && number[5] == '折' && number[6] == '不' && number[7] == '撓') ||
                                                      (number[8] == '百' && number[9] == '折' && number[10] == '不' && number[11] == '撓') ||
                                                      (number[12] == '百' && number[13] == '折' && number[14] == '不' && number[15] == '撓')||
                                                      (number[16] == '百' && number[17] == '折' && number[18] == '不' && number[19] == '撓'))) ?
                                          '2/4' :
                                          (((number[0] == '安' && number[1] == '貧' && number[2] == '樂' && number[3] == '道') ||
                                              (number[4] == '安' && number[5] == '貧' && number[6] == '樂' && number[7] == '道') ||
                                              (number[8] == '安' && number[9] == '貧' && number[10] == '樂' && number[11] == '道') ||
                                              (number[12] == '安' && number[13] == '貧' && number[14] == '樂' && number[15] == '道') ||
                                              (number[16] == '安' && number[17] == '貧' && number[18] == '樂' && number[19] == '道')) ||
                                              (((number[0] == '按' && number[1] == '圖' && number[2] == '索' && number[3] == '驥') ||
                                                  (number[4] == '按' && number[5] == '圖' && number[6] == '索' && number[7] == '驥') ||
                                                  (number[8] == '按' && number[9] == '圖' && number[10] == '索' && number[11] == '驥') ||
                                                  (number[12] == '按' && number[13] == '圖' && number[14] == '索' && number[15] == '驥')||
                                                  (number[16] == '按' && number[17] == '圖' && number[18] == '索' && number[19] == '驥')) ||
                                                  ((number[0] == '白' && number[1] == '駒' && number[2] == '過' && number[3] == '隙') ||
                                                      (number[4] == '白' && number[5] == '駒' && number[6] == '過' && number[7] == '隙') ||
                                                      (number[8] == '白' && number[9] == '駒' && number[10] == '過' && number[11] == '隙') ||
                                                      (number[12] == '白' && number[13] == '駒' && number[14] == '過' && number[15] == '隙')||
                                                      (number[16] == '白' && number[17] == '駒' && number[18] == '過' && number[19] == '隙'))||
                                                  ((number[0] == '百' && number[1] == '折' && number[2] == '不' && number[3] == '撓') ||
                                                      (number[4] == '百' && number[5] == '折' && number[6] == '不' && number[7] == '撓') ||
                                                      (number[8] == '百' && number[9] == '折' && number[10] == '不' && number[11] == '撓') ||
                                                      (number[12] == '百' && number[13] == '折' && number[14] == '不' && number[15] == '撓')||
                                                      (number[16] == '百' && number[17] == '折' && number[18] == '不' && number[19] == '撓')))
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



