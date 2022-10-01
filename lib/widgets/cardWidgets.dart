import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Color color;
  final Widget myChild;
  final Function()? onpress;

  const CardWidget({required this.color, required this.myChild, this.onpress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: GestureDetector(
          onTap: onpress,
          child: Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: myChild,
            ),
          ),
        ),
      ),
    );
  }
}
