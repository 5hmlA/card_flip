import 'package:card_flip/card_flip.dart';
import 'package:card_flip/flip_sample.dart';
import 'package:flutter/material.dart';

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
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Center(child: FoldingBoxDemo()),
          ),
          // child: Center(child: buildListView()),
          color: Colors.black,
        ),
      ),
    );
  }

  ListView buildListView() {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int inde) {
        return FlipLayout(
            duration: 1500,
            key: ValueKey(inde),
            foldState: inde == 0,
            childs: List.generate(titles.length, (index) {
              if (index == 0) {
                return SizedBox(
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

/// ======================= demo ===============================
//region FoldingBoxDemo
class FoldingBoxDemo extends StatelessWidget {
  List<String> titles = [
    "Fold",
    "Arithmetic",
    "Breathe",
    "SnowMain",
    "BlendokuPage",
  ];

  @override
  Widget build(BuildContext context) {
    return buildListView();
  }

  ListView buildListView() {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (BuildContext context, int inde) {
        return FoldingBox(
            key: ValueKey(inde),
            foldState: inde == 0,
            childs: List.generate(titles.length, (index) {
              if (index == 0) {
                return Container(
                  width: 200,
                  height: 100,
                  child: Builder(
                    builder: (BuildContext context) => centerText(titles[index], color: Colors.primaries[index], onPressed: () {
                      FoldingBox.of(context).toggle();
                    }),
                  ),
                );
              } else {
                return centerTextButton(titles[index], color: Colors.primaries[index], onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(titles[index])));
                });
              }
            }),
            foldChild: Container(
              child: Builder(
                  builder: (context) => centerText("Unfold", color: randomColor(), onPressed: () {
                    FoldingBox.of(context).toggle();
                  })),
            ));
      },
    );
  }
}
//endregion

