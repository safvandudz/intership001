import 'package:flutter/material.dart';

class Buttn extends StatelessWidget {
  final Widget child;
  final Color color;
  final double? h;

  const Buttn({
    Key? key,
    this.color = Colors.blue,
    required this.child,
    this.h=52,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: h,
      child: Center(child: child),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(18)),
    );
  }
}
