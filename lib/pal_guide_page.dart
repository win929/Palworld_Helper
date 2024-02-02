import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Pals {
  String index;
  String name;
  Pals({
    required this.index,
    required this.name,
  });
}

class PalGuidePage extends StatelessWidget {
  PalGuidePage({super.key});

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

  List<Widget> makedGuide(BuildContext context) {
    List<Widget> guide = [];

    for (int i = 0; i < pals.length; i++) {
      Pals palobj = pals[i];
      guide.add(
        GestureDetector(
          onTap: () {
            context.go('/pal_guide_page/pal_detail_page/$i');
          },
          child: Row(
            children: [
              Expanded(
                child: Text(
                  '${palobj.index}. ${palobj.name}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: "cookierun",
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/pals/${palobj.index}.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return guide;
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
        child: SingleChildScrollView(
          child: Column(
            children: makedGuide(context),
          ),
        ),
      ),
    );
  }
}
