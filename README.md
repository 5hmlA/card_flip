# [![publish](https://github.com/ZuYun/card_flip/actions/workflows/publish.yml/badge.svg)](https://github.com/ZuYun/card_flip/actions/workflows/publish.yml)  [![https://pub.dev/packages/loginj](https://img.shields.io/badge/card_flip-0.0.4-blue)](https://pub.dev/packages/card_flip)  

### what is it

![flipover](https://raw.githubusercontent.com/ZuYun/card_flip/main/preview/flip_cards.gif)

### how to use
 - pub

   ```yaml
   dependencies:
     card_flip: ^0.0.4
   ```

 - example

   ```dart
   FlipLayout(
        duration: 800,
        foldState: true,
        children: List.generate(5, (index) {
              return itemWidget(index);
        	}),
        foldChild: FoldCard());
  }
   ```

   
   
   https://user-images.githubusercontent.com/9412501/142214791-e66c5a7f-0a92-4b32-90b4-9a412688ee2c.mp4
   
   https://user-images.githubusercontent.com/9412501/147240240-c81bece3-52f7-4ef9-a08b-69ca6b748e4d.mp4