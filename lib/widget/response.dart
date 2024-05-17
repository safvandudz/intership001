import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget desktop;

  final Widget mobile;
  final Widget tab;

  const Responsive({super.key,required this.desktop,required this.mobile,required this.tab,});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        var width=MediaQuery.of(context).size.width;
        if (constraints.maxWidth > 992) {
          // Tablet layout
          return desktop;
        } else if(constraints.maxWidth > 576 ) {
          // Mobile layout
          return tab;
        }else{
          return mobile;
        }
      },
    );
  }
}
