import 'package:card_flip/card_flip.dart';
import 'package:flutter/widgets.dart';

import 'widgets_factory.dart';

class FlipLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlipLayout(
        duration: 800,
        foldState: true,
        children: List.generate(5, (index) {
          return itemWidget(index);
        }),
        foldChild: FoldCard());
  }
}
// class FoldBoxDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return FoldingBox(
//         foldState: true,
//         children: List.generate(3, (index) {
//           return itemWidget(index);
//         }),
//         foldChild: FoldCard());
//   }
// }
