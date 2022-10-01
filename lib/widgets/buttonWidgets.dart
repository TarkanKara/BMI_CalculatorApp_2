import 'package:flutter/material.dart';

class Buttonn extends StatelessWidget {
  final IconData iconn;
  final Color colorr;
  final Function()? onpress;
  Buttonn({required this.iconn, required this.colorr, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onpress,
      child: Icon(iconn, size: 25, color: colorr),
      elevation: 10,
      shape: CircleBorder(),
    );
  }
}
