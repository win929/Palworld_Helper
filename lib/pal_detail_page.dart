import 'package:flutter/material.dart';

class Pals {
  String index;
  String name;
  Pals({
    required this.index,
    required this.name,
  });
}

class PalDetailPage extends StatefulWidget {
  int palIndex;
  PalDetailPage({
    super.key,
    required this.palIndex,
  });

  @override
  State<PalDetailPage> createState() => _PalDetailPageState();
}

class _PalDetailPageState extends State<PalDetailPage> {
  List<Pals> pals = [
    Pals(
      index: '001',
      name: '도로롱',
    ),
    Pals(
      index: '002',
      name: '까부냥',
    ),
    Pals(
      index: '003',
      name: '꼬꼬닭',
    ),
    Pals(
      index: '004',
      name: '큐룰리스',
    ),
    Pals(
      index: '005',
      name: '파이호',
    ),
    Pals(
      index: '006',
      name: '청부리',
    ),
    Pals(
      index: '007',
      name: '번개냥',
    ),
    Pals(
      index: '008',
      name: '몽지',
    ),
    Pals(
      index: '009',
      name: '불꽃밤비',
    ),
    Pals(
      index: '010',
      name: '펭키',
    ),
  ];

  late Pals currentPal;
  int palIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    palIndex = widget.palIndex;
    currentPal = pals[palIndex];
  }

  List<Widget> prevButton() {
    Pals prevPal = palIndex > 0 ? pals[palIndex - 1] : pals[pals.length - 1];
    List<Widget> temp = [];

    if (palIndex > 0) {
      temp = [
        Icon(
          Icons.arrow_back_ios,
          size: 35,
          color: Colors.white,
        ),
        Column(
          children: [
            Text(
              '${prevPal.index}.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'cookierun',
              ),
            ),
            Text(
              '${prevPal.name}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'cookierun',
              ),
            ),
          ],
        ),
      ];
    }
    return temp;
  }

  List<Widget> nextButton() {
    Pals nextPal = palIndex < pals.length - 1 ? pals[palIndex + 1] : pals[0];
    List<Widget> temp = [];

    if (palIndex < pals.length - 1) {
      temp = [
        Column(
          children: [
            Text(
              '${nextPal.index}.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'cookierun',
              ),
            ),
            Text(
              '${nextPal.name}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'cookierun',
              ),
            ),
          ],
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: 35,
          color: Colors.white,
        ),
      ];
    }
    return temp;
  }

  void prevMove() {
    if (palIndex > 0) {
      palIndex--;
    }
    currentPal = pals[palIndex];
  }

  void nextMove() {
    if (palIndex < pals.length - 1) {
      palIndex++;
    }
    currentPal = pals[palIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'PALWORLD HELPER',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromRGBO(28, 29, 31, 1),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: Color.fromRGBO(28, 29, 31, 1),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Color.fromRGBO(28, 29, 31, 1),
                child: Column(
                  children: [
                    Text(
                      '${currentPal.index}.${currentPal.name}',
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                    Image(
                      image: AssetImage('assets/pals/${currentPal.index}.png'),
                      height: 200,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(8),
                              color: Colors.red,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(8),
                              color: Colors.red,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(8),
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(8),
                              color: Colors.red,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(8),
                              color: Colors.red,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(8),
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(8),
                              color: Colors.red,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(8),
                              color: Colors.red,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(8),
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(8),
                              color: Colors.red,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(8),
                              color: Colors.red,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(8),
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(8),
                              color: Colors.red,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(8),
                              color: Colors.red,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(8),
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 60,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        prevMove();
                      });
                    },
                    child: Row(
                      children: prevButton(),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      setState(() {
                        nextMove();
                      });
                    },
                    child: Row(
                      children: nextButton(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
