import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'pals.dart';

class PalGuidePage extends StatelessWidget {
  PalGuidePage({super.key});

  final List<Pals> pals = AllPals.pals;

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
          style: TextStyle(
            color: Colors.white,
            fontFamily: "warhaven",
          ),
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
