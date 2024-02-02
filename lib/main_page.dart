import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 29, 31, 1),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage('assets/logo.png'),
            ),
            Center(
              child: Text(
                'HELPER',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 70,
                  fontFamily: 'warhaven',
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.go('/map_page');
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/map_logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 150,
                child: Center(
                  child: Text(
                    '팰 월드 맵',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                      fontFamily: "cookierun",
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.go('/pal_guide_page');
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/guide_logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 150,
                child: Center(
                  child: Text(
                    '팰 도감',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                      fontFamily: "cookierun",
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.go('/property_page');
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/attribute_logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 150,
                child: Center(
                  child: Text(
                    '속성 상성표',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                      fontFamily: "cookierun",
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
