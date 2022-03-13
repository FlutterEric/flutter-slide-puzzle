import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:marquee/marquee.dart';
import 'package:puzzle_app/Chinesegame/chinesegame5.dart';


// ignore: camel_case_types, must_be_immutable
class chinesegame4 extends StatefulWidget {

  String name;
  String pic;
  String email;

  chinesegame4({
    Key? key,
    required this.name,
    required this.pic,
    required this.email,
  }) : super(key: key);

  @override
  _chinesegame4State createState() => _chinesegame4State();
}

// ignore: camel_case_types
class _chinesegame4State extends State<chinesegame4> with TickerProviderStateMixin {

  CollectionReference reference = FirebaseFirestore.instance.collection('Chinese Game(4)');

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

  var number = ['故', '步', '自', '封', '好', '高', '騖', '遠', '盡', '忠', '報', '國', '完', '成', '了', 0];

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
    CollectionReference ref = FirebaseFirestore.instance.collection(widget.name + ' Chinese Game(4)');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          'Four-Character Idiom (4)',
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
                  set1 == true && (number[0] == '故' && number[1] == '步' && number[2] == '自' && number[3] == '封') ||
                      set1 == true && (number[4] == '故' && number[5] == '步' && number[6] == '自' && number[7] == '封') ||
                      set1 == true && (number[8] == '故' && number[9] == '步' && number[10] == '自' && number[11] == '封') ||
                      set1 == true && (number[12] == '故' && number[13] == '步' && number[14] == '自' && number[15] == '封') ?
                  Row(
                    children: [
                      FadeTransition(
                        opacity: _animation,
                        child: const Text(
                          '故',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation2,
                        child: const Text(
                          '步',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation3,
                        child: const Text(
                          '自',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation4,
                        child: const Text(
                          '封',
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
                                                  '故步自封: 意義/Meaning',
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
                                                    '故步自封: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：故：過時的；舊：故步。原來的步伐；老步子；封：限制；自封：把自己限制在一定的范圍之內。指自己停滯在老路上。比喻安于現狀；不求進步或革新。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：gù bù zì fēng',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：勇往直前、一往無前',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：墨守成規、抱殘守缺、因循守舊',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：含貶義。一般作謂語、定語',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處：張錫純《醫學衷中參西錄·第五期·卷二·論中西之藥原宜相助為理》：“是誠西人醫學之進步也；若吾人仍故步自封；不知采取西藥之所長；以補中藥所短；是甘讓西人進步矣。”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：即使有成績, 也不可驕傲自滿, 故步自封。',
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
                                                    '故步自封: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：Refers to oneself stuck in the old way. A metaphor for being content with the status quo; not seeking progress or innovation.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym：Forge ahead',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym：Sticking to the rules && clinging to the old ways',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：Contains a derogatory connotation. Generally used as predicate, attributive.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：Even if you have achievements, you should not be complacent or complacent.',
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
                          '故',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation2,
                        child: const Text(
                          '步',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation3,
                        child: const Text(
                          '自',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation4,
                        child: const Text(
                          '封',
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
                                                  '故步自封: 意義/Meaning',
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
                                                    '故步自封: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：故：過時的；舊：故步。原來的步伐；老步子；封：限制；自封：把自己限制在一定的范圍之內。指自己停滯在老路上。比喻安于現狀；不求進步或革新。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：gù bù zì fēng',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：勇往直前、一往無前',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：墨守成規、抱殘守缺、因循守舊',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：含貶義。一般作謂語、定語',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處：張錫純《醫學衷中參西錄·第五期·卷二·論中西之藥原宜相助為理》：“是誠西人醫學之進步也；若吾人仍故步自封；不知采取西藥之所長；以補中藥所短；是甘讓西人進步矣。”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：即使有成績, 也不可驕傲自滿, 故步自封。',
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
                                                    '故步自封: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：Refers to oneself stuck in the old way. A metaphor for being content with the status quo; not seeking progress or innovation.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym：Forge ahead',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym：Sticking to the rules && clinging to the old ways',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：Contains a derogatory connotation. Generally used as predicate, attributive.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：Even if you have achievements, you should not be complacent or complacent.',
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
                  set3 == true && number[0] == '好' && number[1] == '高' && number[2] == '騖' && number[3] == '遠' ||
                      set3 == true && number[4] == '好' && number[5] == '高' && number[6] == '騖' && number[7] == '遠' ||
                      set3 == true && number[8] == '好' && number[9] == '高' && number[10] == '騖' && number[11] == '遠' ||
                      set3 == true && number[12] == '好' && number[13] == '高' && number[14] == '騖' && number[15] == '遠' ?
                  Row(
                    children: [
                      FadeTransition(
                        opacity: _animation6,
                        child: const Text(
                          '好',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation7,
                        child: const Text(
                          '高',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation8,
                        child: const Text(
                          '騖',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation9,
                        child: const Text(
                          '遠',
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
                                                  '好高騖遠: 意義/Meaning',
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
                                                    '好高騖遠: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：好：喜歡；騖：從事；追求。喜歡高的；追求遠的。指不切實際地追求過高過遠的目標。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：hào gāo wù yuǎn',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：實事求是、腳踏實地',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：好大喜功、急功近利',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：形容不切實際地追求過高、過遠目標；目前還做不到的事情。也作“好高務遠”。一般作謂語、賓語、狀語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處:《宋史·程顥傳》：“病學者厭卑近而騖高遠；卒無成焉。”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：他決心從點點滴滴做起, 打下堅實的基礎, 沒有一點好高騖遠, 不切實際的想法。',
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
                                                    '好高騖遠: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：Refers to the unrealistic pursuit of goals that are too high and too far.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym：Seek truth from facts && Down-to-earth',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym：Great joy && Quick success',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：Describes the unrealistic pursuit of high and far-reaching goals; things that cannot be achieved at present. Also known as "Good Gaowuyuan". Generally used as predicate, object, adverbial.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：He is determined to start bit by bit and lay a solid foundation, without any lofty and unrealistic ideas.',
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
                          '好',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation7,
                        child: const Text(
                          '高',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation8,
                        child: const Text(
                          '騖',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation9,
                        child: const Text(
                          '遠',
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
                                                  '好高騖遠: 意義/Meaning',
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
                                                    '好高騖遠: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：好：喜歡；騖：從事；追求。喜歡高的；追求遠的。指不切實際地追求過高過遠的目標。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：hào gāo wù yuǎn',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：實事求是、腳踏實地',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：好大喜功、急功近利',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：形容不切實際地追求過高、過遠目標；目前還做不到的事情。也作“好高務遠”。一般作謂語、賓語、狀語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處:《宋史·程顥傳》：“病學者厭卑近而騖高遠；卒無成焉。”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：他決心從點點滴滴做起, 打下堅實的基礎, 沒有一點好高騖遠, 不切實際的想法。',
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
                                                    '好高騖遠: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：Refers to the unrealistic pursuit of goals that are too high and too far.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym：Seek truth from facts && Down-to-earth',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym：Great joy && Quick success',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：Describes the unrealistic pursuit of high and far-reaching goals; things that cannot be achieved at present. Also known as "Good Gaowuyuan". Generally used as predicate, object, adverbial.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：He is determined to start bit by bit and lay a solid foundation, without any lofty and unrealistic ideas.',
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
                  set4 == true && number[0] == '盡' && number[1] == '忠' && number[2] == '報' && number[3] == '國' ||
                      set4 == true && number[4] == '盡' && number[5] == '忠' && number[6] == '報' && number[7] == '國' ||
                      set4 == true && number[8] == '盡' && number[9] == '忠' && number[10] == '報' && number[11] == '國' ||
                      set4 == true && number[12] == '盡' && number[13] == '忠' && number[14] == '報' && number[15] == '國' ?
                  Row(
                    children: [
                      FadeTransition(
                        opacity: _animation11,
                        child: const Text(
                          '盡',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation12,
                        child: const Text(
                          '忠',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation13,
                        child: const Text(
                          '報',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation14,
                        child: const Text(
                          '國',
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
                                                  '盡忠報國: 意義/Meaning',
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
                                                    '盡忠報國: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：用全部忠誠報效國家。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：jìn zhōng bào guó',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：賣國求榮',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：忠心耿耿、為國捐軀',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：含褒義。一般作謂語、定語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處：《北史·顏之儀傳》：“公等備受朝恩；當盡忠報國。”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：青少年不僅要有盡忠報國的志向, 還要努力學習',
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
                                                    '盡忠報國: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：Serve the country with all your loyalty.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym：Betrayal',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym：Loyalty and sacrifice for the country',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：With compliments. Generally used as predicate, attributive.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：Teenagers should not only have the ambition to serve the country with allegiance, they should also study hard.',
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
                          '盡',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation12,
                        child: const Text(
                          '忠',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation13,
                        child: const Text(
                          '報',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _animation14,
                        child: const Text(
                          '國',
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
                                                  '盡忠報國: 意義/Meaning',
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
                                                    '盡忠報國: 意義(中文)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      '解釋：用全部忠誠報效國家。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '拼音：jìn zhōng bào guó',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '反義詞：賣國求榮',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '同義詞：忠心耿耿、為國捐軀',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '用法：含褒義。一般作謂語、定語。',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '出處：《北史·顏之儀傳》：“公等備受朝恩；當盡忠報國。”',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      '例子：青少年不僅要有盡忠報國的志向, 還要努力學習',
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
                                                    '盡忠報國: Meaning(English)',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  children: [
                                                    Text(
                                                      'Meaning：Serve the country with all your loyalty.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Antonym：Betrayal',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Synonym：Loyalty and sacrifice for the country',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Usage：With compliments. Generally used as predicate, attributive.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                    Divider(),
                                                    Text(
                                                      'Example：Teenagers should not only have the ambition to serve the country with allegiance, they should also study hard.',
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
            'Mark' : (((number[0] == '故' && number[1] == '步' && number[2] == '自' && number[3] == '封') ||
                (number[4] == '故' && number[5] == '步' && number[6] == '自' && number[7] == '封') ||
                (number[8] == '故' && number[9] == '步' && number[10] == '自' && number[11] == '封') ||
                (number[12] == '故' && number[13] == '步' && number[14] == '自' && number[15] == '封')) &&
                ((number[0] == '好' && number[1] == '高' && number[2] == '騖' && number[3] == '遠') ||
                    (number[4] == '好' && number[5] == '高' && number[6] == '騖' && number[7] == '遠') ||
                    (number[8] == '好' && number[9] == '高' && number[10] == '騖' && number[11] == '遠') ||
                    (number[12] == '好' && number[13] == '高' && number[14] == '騖' && number[15] == '遠')) &&
                ((number[0] == '盡' && number[1] == '忠' && number[2] == '報' && number[3] == '國') ||
                    (number[4] == '盡' && number[5] == '忠' && number[6] == '報' && number[7] == '國') ||
                    (number[8] == '盡' && number[9] == '忠' && number[10] == '報' && number[11] == '國') ||
                    (number[12] == '盡' && number[13] == '忠' && number[14] == '報' && number[15] == '國'))
            )?
            '3/3' :
            (((number[0] == '故' && number[1] == '步' && number[2] == '自' && number[3] == '封') ||
                (number[4] == '故' && number[5] == '步' && number[6] == '自' && number[7] == '封') ||
                (number[8] == '故' && number[9] == '步' && number[10] == '自' && number[11] == '封') ||
                (number[12] == '故' && number[13] == '步' && number[14] == '自' && number[15] == '封')) &&
                ((number[0] == '好' && number[1] == '高' && number[2] == '騖' && number[3] == '遠') ||
                    (number[4] == '好' && number[5] == '高' && number[6] == '騖' && number[7] == '遠') ||
                    (number[8] == '好' && number[9] == '高' && number[10] == '騖' && number[11] == '遠') ||
                    (number[12] == '好' && number[13] == '高' && number[14] == '騖' && number[15] == '遠'))) ||

                (((number[0] == '故' && number[1] == '步' && number[2] == '自' && number[3] == '封') ||
                    (number[4] == '故' && number[5] == '步' && number[6] == '自' && number[7] == '封') ||
                    (number[8] == '故' && number[9] == '步' && number[10] == '自' && number[11] == '封') ||
                    (number[12] == '故' && number[13] == '步' && number[14] == '自' && number[15] == '封')) &&
                    ((number[0] == '盡' && number[1] == '忠' && number[2] == '報' && number[3] == '國') ||
                        (number[4] == '盡' && number[5] == '忠' && number[6] == '報' && number[7] == '國') ||
                        (number[8] == '盡' && number[9] == '忠' && number[10] == '報' && number[11] == '國') ||
                        (number[12] == '盡' && number[13] == '忠' && number[14] == '報' && number[15] == '國'))) ||

                (((number[0] == '好' && number[1] == '高' && number[2] == '騖' && number[3] == '遠') ||
                    (number[4] == '好' && number[5] == '高' && number[6] == '騖' && number[7] == '遠') ||
                    (number[8] == '好' && number[9] == '高' && number[10] == '騖' && number[11] == '遠') ||
                    (number[12] == '好' && number[13] == '高' && number[14] == '騖' && number[15] == '遠')) &&
                    ((number[0] == '盡' && number[1] == '忠' && number[2] == '報' && number[3] == '國') ||
                        (number[4] == '盡' && number[5] == '忠' && number[6] == '報' && number[7] == '國') ||
                        (number[8] == '盡' && number[9] == '忠' && number[10] == '報' && number[11] == '國') ||
                        (number[12] == '盡' && number[13] == '忠' && number[14] == '報' && number[15] == '國'))) ?
            '2/3' :
            (((number[0] == '故' && number[1] == '步' && number[2] == '自' && number[3] == '封') ||
                (number[4] == '故' && number[5] == '步' && number[6] == '自' && number[7] == '封') ||
                (number[8] == '故' && number[9] == '步' && number[10] == '自' && number[11] == '封') ||
                (number[12] == '故' && number[13] == '步' && number[14] == '自' && number[15] == '封')) ||
                (((number[0] == '好' && number[1] == '高' && number[2] == '騖' && number[3] == '遠') ||
                    (number[4] == '好' && number[5] == '高' && number[6] == '騖' && number[7] == '遠') ||
                    (number[8] == '好' && number[9] == '高' && number[10] == '騖' && number[11] == '遠') ||
                    (number[12] == '好' && number[13] == '高' && number[14] == '騖' && number[15] == '遠')) ||
                    ((number[0] == '盡' && number[1] == '忠' && number[2] == '報' && number[3] == '國') ||
                        (number[4] == '盡' && number[5] == '忠' && number[6] == '報' && number[7] == '國') ||
                        (number[8] == '盡' && number[9] == '忠' && number[10] == '報' && number[11] == '國') ||
                        (number[12] == '盡' && number[13] == '忠' && number[14] == '報' && number[15] == '國')))
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
            'Mark' : (((number[0] == '故' && number[1] == '步' && number[2] == '自' && number[3] == '封') ||
                (number[4] == '故' && number[5] == '步' && number[6] == '自' && number[7] == '封') ||
                (number[8] == '故' && number[9] == '步' && number[10] == '自' && number[11] == '封') ||
                (number[12] == '故' && number[13] == '步' && number[14] == '自' && number[15] == '封')) &&
                ((number[0] == '好' && number[1] == '高' && number[2] == '騖' && number[3] == '遠') ||
                    (number[4] == '好' && number[5] == '高' && number[6] == '騖' && number[7] == '遠') ||
                    (number[8] == '好' && number[9] == '高' && number[10] == '騖' && number[11] == '遠') ||
                    (number[12] == '好' && number[13] == '高' && number[14] == '騖' && number[15] == '遠')) &&
                ((number[0] == '盡' && number[1] == '忠' && number[2] == '報' && number[3] == '國') ||
                    (number[4] == '盡' && number[5] == '忠' && number[6] == '報' && number[7] == '國') ||
                    (number[8] == '盡' && number[9] == '忠' && number[10] == '報' && number[11] == '國') ||
                    (number[12] == '盡' && number[13] == '忠' && number[14] == '報' && number[15] == '國'))
            )?
            '3/3' :
            (((number[0] == '故' && number[1] == '步' && number[2] == '自' && number[3] == '封') ||
                (number[4] == '故' && number[5] == '步' && number[6] == '自' && number[7] == '封') ||
                (number[8] == '故' && number[9] == '步' && number[10] == '自' && number[11] == '封') ||
                (number[12] == '故' && number[13] == '步' && number[14] == '自' && number[15] == '封')) &&
                ((number[0] == '好' && number[1] == '高' && number[2] == '騖' && number[3] == '遠') ||
                    (number[4] == '好' && number[5] == '高' && number[6] == '騖' && number[7] == '遠') ||
                    (number[8] == '好' && number[9] == '高' && number[10] == '騖' && number[11] == '遠') ||
                    (number[12] == '好' && number[13] == '高' && number[14] == '騖' && number[15] == '遠'))) ||

                (((number[0] == '故' && number[1] == '步' && number[2] == '自' && number[3] == '封') ||
                    (number[4] == '故' && number[5] == '步' && number[6] == '自' && number[7] == '封') ||
                    (number[8] == '故' && number[9] == '步' && number[10] == '自' && number[11] == '封') ||
                    (number[12] == '故' && number[13] == '步' && number[14] == '自' && number[15] == '封')) &&
                    ((number[0] == '盡' && number[1] == '忠' && number[2] == '報' && number[3] == '國') ||
                        (number[4] == '盡' && number[5] == '忠' && number[6] == '報' && number[7] == '國') ||
                        (number[8] == '盡' && number[9] == '忠' && number[10] == '報' && number[11] == '國') ||
                        (number[12] == '盡' && number[13] == '忠' && number[14] == '報' && number[15] == '國'))) ||

                (((number[0] == '好' && number[1] == '高' && number[2] == '騖' && number[3] == '遠') ||
                    (number[4] == '好' && number[5] == '高' && number[6] == '騖' && number[7] == '遠') ||
                    (number[8] == '好' && number[9] == '高' && number[10] == '騖' && number[11] == '遠') ||
                    (number[12] == '好' && number[13] == '高' && number[14] == '騖' && number[15] == '遠')) &&
                    ((number[0] == '盡' && number[1] == '忠' && number[2] == '報' && number[3] == '國') ||
                        (number[4] == '盡' && number[5] == '忠' && number[6] == '報' && number[7] == '國') ||
                        (number[8] == '盡' && number[9] == '忠' && number[10] == '報' && number[11] == '國') ||
                        (number[12] == '盡' && number[13] == '忠' && number[14] == '報' && number[15] == '國'))) ?
            '2/3' :
            (((number[0] == '故' && number[1] == '步' && number[2] == '自' && number[3] == '封') ||
                (number[4] == '故' && number[5] == '步' && number[6] == '自' && number[7] == '封') ||
                (number[8] == '故' && number[9] == '步' && number[10] == '自' && number[11] == '封') ||
                (number[12] == '故' && number[13] == '步' && number[14] == '自' && number[15] == '封')) ||
                (((number[0] == '好' && number[1] == '高' && number[2] == '騖' && number[3] == '遠') ||
                    (number[4] == '好' && number[5] == '高' && number[6] == '騖' && number[7] == '遠') ||
                    (number[8] == '好' && number[9] == '高' && number[10] == '騖' && number[11] == '遠') ||
                    (number[12] == '好' && number[13] == '高' && number[14] == '騖' && number[15] == '遠')) ||
                    ((number[0] == '盡' && number[1] == '忠' && number[2] == '報' && number[3] == '國') ||
                        (number[4] == '盡' && number[5] == '忠' && number[6] == '報' && number[7] == '國') ||
                        (number[8] == '盡' && number[9] == '忠' && number[10] == '報' && number[11] == '國') ||
                        (number[12] == '盡' && number[13] == '忠' && number[14] == '報' && number[15] == '國')))
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
                                          (((number[0] == '故' && number[1] == '步' && number[2] == '自' && number[3] == '封') ||
                                              (number[4] == '故' && number[5] == '步' && number[6] == '自' && number[7] == '封') ||
                                              (number[8] == '故' && number[9] == '步' && number[10] == '自' && number[11] == '封') ||
                                              (number[12] == '故' && number[13] == '步' && number[14] == '自' && number[15] == '封')) &&
                                              ((number[0] == '好' && number[1] == '高' && number[2] == '騖' && number[3] == '遠') ||
                                                  (number[4] == '好' && number[5] == '高' && number[6] == '騖' && number[7] == '遠') ||
                                                  (number[8] == '好' && number[9] == '高' && number[10] == '騖' && number[11] == '遠') ||
                                                  (number[12] == '好' && number[13] == '高' && number[14] == '騖' && number[15] == '遠')) &&
                                              ((number[0] == '盡' && number[1] == '忠' && number[2] == '報' && number[3] == '國') ||
                                                  (number[4] == '盡' && number[5] == '忠' && number[6] == '報' && number[7] == '國') ||
                                                  (number[8] == '盡' && number[9] == '忠' && number[10] == '報' && number[11] == '國') ||
                                                  (number[12] == '盡' && number[13] == '忠' && number[14] == '報' && number[15] == '國'))
                                          )?
                                          '3/3' :
                                          (((number[0] == '故' && number[1] == '步' && number[2] == '自' && number[3] == '封') ||
                                              (number[4] == '故' && number[5] == '步' && number[6] == '自' && number[7] == '封') ||
                                              (number[8] == '故' && number[9] == '步' && number[10] == '自' && number[11] == '封') ||
                                              (number[12] == '故' && number[13] == '步' && number[14] == '自' && number[15] == '封')) &&
                                              ((number[0] == '好' && number[1] == '高' && number[2] == '騖' && number[3] == '遠') ||
                                                  (number[4] == '好' && number[5] == '高' && number[6] == '騖' && number[7] == '遠') ||
                                                  (number[8] == '好' && number[9] == '高' && number[10] == '騖' && number[11] == '遠') ||
                                                  (number[12] == '好' && number[13] == '高' && number[14] == '騖' && number[15] == '遠'))) ||

                                              (((number[0] == '故' && number[1] == '步' && number[2] == '自' && number[3] == '封') ||
                                                  (number[4] == '故' && number[5] == '步' && number[6] == '自' && number[7] == '封') ||
                                                  (number[8] == '故' && number[9] == '步' && number[10] == '自' && number[11] == '封') ||
                                                  (number[12] == '故' && number[13] == '步' && number[14] == '自' && number[15] == '封')) &&
                                                  ((number[0] == '盡' && number[1] == '忠' && number[2] == '報' && number[3] == '國') ||
                                                      (number[4] == '盡' && number[5] == '忠' && number[6] == '報' && number[7] == '國') ||
                                                      (number[8] == '盡' && number[9] == '忠' && number[10] == '報' && number[11] == '國') ||
                                                      (number[12] == '盡' && number[13] == '忠' && number[14] == '報' && number[15] == '國'))) ||

                                              (((number[0] == '好' && number[1] == '高' && number[2] == '騖' && number[3] == '遠') ||
                                                  (number[4] == '好' && number[5] == '高' && number[6] == '騖' && number[7] == '遠') ||
                                                  (number[8] == '好' && number[9] == '高' && number[10] == '騖' && number[11] == '遠') ||
                                                  (number[12] == '好' && number[13] == '高' && number[14] == '騖' && number[15] == '遠')) &&
                                                  ((number[0] == '盡' && number[1] == '忠' && number[2] == '報' && number[3] == '國') ||
                                                      (number[4] == '盡' && number[5] == '忠' && number[6] == '報' && number[7] == '國') ||
                                                      (number[8] == '盡' && number[9] == '忠' && number[10] == '報' && number[11] == '國') ||
                                                      (number[12] == '盡' && number[13] == '忠' && number[14] == '報' && number[15] == '國'))) ?
                                          '2/3' :
                                          (((number[0] == '故' && number[1] == '步' && number[2] == '自' && number[3] == '封') ||
                                              (number[4] == '故' && number[5] == '步' && number[6] == '自' && number[7] == '封') ||
                                              (number[8] == '故' && number[9] == '步' && number[10] == '自' && number[11] == '封') ||
                                              (number[12] == '故' && number[13] == '步' && number[14] == '自' && number[15] == '封')) ||
                                              (((number[0] == '好' && number[1] == '高' && number[2] == '騖' && number[3] == '遠') ||
                                                  (number[4] == '好' && number[5] == '高' && number[6] == '騖' && number[7] == '遠') ||
                                                  (number[8] == '好' && number[9] == '高' && number[10] == '騖' && number[11] == '遠') ||
                                                  (number[12] == '好' && number[13] == '高' && number[14] == '騖' && number[15] == '遠')) ||
                                                  ((number[0] == '盡' && number[1] == '忠' && number[2] == '報' && number[3] == '國') ||
                                                      (number[4] == '盡' && number[5] == '忠' && number[6] == '報' && number[7] == '國') ||
                                                      (number[8] == '盡' && number[9] == '忠' && number[10] == '報' && number[11] == '國') ||
                                                      (number[12] == '盡' && number[13] == '忠' && number[14] == '報' && number[15] == '國')))
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
                                                          return chinesegame5(
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



