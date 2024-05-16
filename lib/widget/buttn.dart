import 'package:flutter/material.dart';

class Buttn extends StatelessWidget {
  final Widget child;
  final Color color;
  final String h;

  const Buttn({
    Key? key,
    this.color = Colors.blue,
    required this.child,
    required this.h,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 52,
      child: Center(child: child),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(18)),
    );
  }
}
