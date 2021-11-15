import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:card_flip/flip.dart';

import 'Colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> titles = [
    "Fold",
    "Arithmetic",
    "Breathe",
    "SnowMain",
    "BlendokuPage",
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: ColoredBox(
          child: Center(child: buildListView()),
          color: Colors.black12,
        ),
      ),
    );
  }

  ListView buildListView() {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int inde) {
        return FlipLayout(
            key: ValueKey(inde),
            foldState: inde == 0,
            childs: List.generate(titles.length, (index) {
              if (index == 0) {
                return Container(
                  width: 200,
                  height: 100,
                  child: Builder(
                    builder: (BuildContext context) => centerText(titles[index],
                        color: Colors.primaries[index], onPressed: () {
                      FlipLayout.of(context).toggle();
                    }),
                  ),
                );
              } else {
                return centerTextButton(titles[index],
                    color: Colors.primaries[index], onPressed: () {});
              }
            }),
            foldChild: Container(
              child: Builder(
                  builder: (context) =>
                      centerText("Unfold", color: randomColor(), onPressed: () {
                        FlipLayout.of(context).toggle();
                      })),
            ));
      },
    );
  }
}
