import 'package:flutter/material.dart';

class PropertyPage extends StatelessWidget {
  const PropertyPage({super.key});

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
      body: Center(
        child: Image.asset('assets/property.png'),
      ),
    );
  }
}
