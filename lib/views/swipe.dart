import 'package:flutter/material.dart';
import 'package:nafnaappv2/views/card.dart';

class SwipeView extends StatefulWidget {
  const SwipeView({super.key});

  @override
  State<SwipeView> createState() => _SwipeViewState();
}

class _SwipeViewState extends State<SwipeView> {
  int stackCounter = 0;
  double swipeThreshold = 100.0;
  String name = "Grjótgarður";

  List<Color> colors = <Color>[
    Colors.green,
    Colors.blueGrey,
    Colors.yellow,
    Colors.red,
    Colors.purple,
  ];

  List<String> names = <String>[
    "Grjótgarður",
    "Hödd",
    "Aspar",
    "Gústs",
    "Grjótgarður (aftur)",
    "Kaktus",
    "Bobbs",
    "Mjöglangtnafnsemerrosalangt",
  ];

  void evaluateSwipe(dx) {
    if (dx > swipeThreshold) {
      like();
    } else if (dx < -swipeThreshold) {
      dislike();
    }
  }

  void like() {
    increaseStackCounter();
  }

  void dislike() {
    increaseStackCounter();
  }

  void increaseStackCounter() {
    setState(() {
      stackCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) => Draggable(
          onDragEnd: (details) => evaluateSwipe(details.offset.dx),
          feedback: SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: SwipeCard(
                color: colors[stackCounter % colors.length],
                name: names[stackCounter % names.length],
              )),
          childWhenDragging: SwipeCard(
            color: colors[(stackCounter + 1) % colors.length],
            name: names[(stackCounter + 1) % names.length],
          ),
          child: SwipeCard(
            color: colors[stackCounter % colors.length],
            name: names[stackCounter % names.length],
          ),
        ),
      ),
    );
  }
}
