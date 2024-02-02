import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pals.dart';

class PalDetailPage extends StatefulWidget {
  int palIndex;
  PalDetailPage({
    super.key,
    required this.palIndex,
  });

  final List<Pals> pals = AllPals.pals;

  @override
  State<PalDetailPage> createState() => _PalDetailPageState();
}

class _PalDetailPageState extends State<PalDetailPage> {
  final List<Pals> pals = AllPals.pals;

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
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'warhaven',
          ),
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
                    Expanded(
                      flex: 4,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Column(
                              children: [
                                Text(
                                  'No.${currentPal.index}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontFamily: 'cookierun',
                                  ),
                                ),
                                Text(
                                  '${currentPal.name}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontFamily: 'cookierun',
                                  ),
                                ),
                                Expanded(
                                  child: Image(
                                    image: AssetImage(
                                        'assets/pals/${currentPal.index}.png'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Column(
                              children: [
                                BasicInfo(
                                  title: '속성',
                                  info: '${currentPal.property}',
                                ),
                                BasicInfo(
                                  title: '식사량',
                                  info: '${currentPal.food}/10',
                                ),
                                BasicInfo(
                                  title: '드롭 아이템',
                                  info: '${currentPal.dropItem}',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                JobAptitude(
                                  name: '불 피우기',
                                  level: currentPal.levels[0],
                                  icon: Icon(
                                    Icons.local_fire_department,
                                    color: Colors.red,
                                  ),
                                ),
                                JobAptitude(
                                  name: '관개',
                                  level: currentPal.levels[1],
                                  icon: Icon(
                                    Icons.water_drop,
                                    color: Colors.blue,
                                  ),
                                ),
                                JobAptitude(
                                  name: '파종',
                                  level: currentPal.levels[2],
                                  icon: Icon(
                                    Icons.grass,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                JobAptitude(
                                  name: '발전',
                                  level: currentPal.levels[3],
                                  icon: Icon(
                                    Icons.flash_on,
                                    color: Colors.yellow,
                                  ),
                                ),
                                JobAptitude(
                                  name: '수작업',
                                  level: currentPal.levels[4],
                                  icon: Icon(
                                    Icons.pan_tool,
                                    color: Colors.orangeAccent,
                                  ),
                                ),
                                JobAptitude(
                                  name: '채집',
                                  level: currentPal.levels[5],
                                  icon: Icon(
                                    Icons.spa,
                                    color: CupertinoColors.activeGreen,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                JobAptitude(
                                  name: '벌목',
                                  level: currentPal.levels[6],
                                  icon: Icon(
                                    Icons.forest,
                                    color: Colors.brown,
                                  ),
                                ),
                                JobAptitude(
                                  name: '채굴',
                                  level: currentPal.levels[7],
                                  icon: Icon(
                                    Icons.handyman,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                JobAptitude(
                                  name: '제약',
                                  level: currentPal.levels[8],
                                  icon: Icon(
                                    Icons.medication_liquid,
                                    color: Colors.lightGreenAccent,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                JobAptitude(
                                  name: '냉각',
                                  level: currentPal.levels[9],
                                  icon: Icon(
                                    Icons.ac_unit,
                                    color: Colors.lightBlueAccent,
                                  ),
                                ),
                                JobAptitude(
                                  name: '운반',
                                  level: currentPal.levels[10],
                                  icon: Icon(
                                    Icons.inventory_2,
                                    color: Colors.brown,
                                  ),
                                ),
                                JobAptitude(
                                  name: '목장',
                                  level: currentPal.levels[11],
                                  icon: Icon(
                                    Icons.fence,
                                    color: Colors.brown,
                                  ),
                                ),
                              ],
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

class BasicInfo extends StatelessWidget {
  String title;
  String info;
  BasicInfo({
    super.key,
    required this.title,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      color: Colors.white24,
      width: 200,
      child: Column(
        children: [
          Text(
            '$title',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'cookierun',
              color: Colors.orangeAccent,
            ),
          ),
          Text(
            '$info',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'cookierun',
              color: Colors.white60,
            ),
          ),
        ],
      ),
    );
  }
}

Container showProperty(String name, int level, Icon icon) {
  Container temp = Container(
    margin: EdgeInsets.all(8),
    color: Colors.grey,
  );

  if (level != 0) {
    temp = Container(
      margin: EdgeInsets.all(8),
      color: Colors.grey,
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon,
                Text(
                  '$name',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'cookierun',
                    color: Colors.amberAccent,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Text(
              'Lv.$level',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'cookierun',
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
  return temp;
}

class JobAptitude extends StatelessWidget {
  String name;
  int level;
  Icon icon;
  JobAptitude({
    super.key,
    required this.name,
    required this.level,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: showProperty(name, level, icon),
    );
  }
}
