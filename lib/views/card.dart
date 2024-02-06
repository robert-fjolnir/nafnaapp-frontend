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
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
      color: color,
      child: Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      name,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 36,
                          fontWeight: FontWeight.bold),
                    ),
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
