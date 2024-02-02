import 'package:flutter/material.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  String drawedImage = 'fast_travel';
  int clickNumber = 1;

  Color getButtonColor(int buttonIndex) {
    if (clickNumber == buttonIndex) {
      return Colors.lightBlueAccent;
    }
    return Colors.white;
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
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 50,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 180,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              drawedImage = 'fast_travel';
                              clickNumber = 1;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: getButtonColor(1),
                          ),
                          child: Text(
                            '빠른 이동',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontFamily: "cookierun",
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 180,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              drawedImage = 'tower_boss';
                              clickNumber = 3;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: getButtonColor(3),
                          ),
                          child: Text(
                            '타워 보스',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontFamily: "cookierun",
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 180,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              drawedImage = 'merchant';
                              clickNumber = 5;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: getButtonColor(5),
                          ),
                          child: Text(
                            '상인',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontFamily: "cookierun",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 180,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              drawedImage = 'skill_fruit';
                              clickNumber = 2;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: getButtonColor(2),
                          ),
                          child: Text(
                            '스킬 열매',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontFamily: "cookierun",
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 180,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              drawedImage = 'alpha_pal';
                              clickNumber = 4;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: getButtonColor(4),
                          ),
                          child: Text(
                            '알파 팰',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontFamily: "cookierun",
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 180,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              drawedImage = 'pal_merchant';
                              clickNumber = 6;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: getButtonColor(6),
                          ),
                          child: Text(
                            '팰 상인',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontFamily: "cookierun",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Image.asset('assets/maps/$drawedImage.png'),
          ],
        ),
      ),
    );
  }
}
