import 'package:flutter/material.dart';

class SwipeCard extends StatelessWidget {
  final String name;
  final Color color;

  const SwipeCard({
    Key? key,
    required this.name,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20.0),
        color: color,
      ),
      child: Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 4.0),
              child: Row(
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
