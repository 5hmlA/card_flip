import 'package:card_flip/card_flip.dart';
import 'package:example/main.dart';
import 'package:example/widgets_factory.dart';
import 'package:flutter/material.dart';

import 'filp_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Stack(
          children: [
            Image.asset(
              'images/background.png',
              width: 360,
              fit: BoxFit.cover,
            ),
            SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      FlipLayoutDemo(),
                      const SizedBox(
                        height: 20,
                      ),
                      FlipLayoutDemo(),
                    ],
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
