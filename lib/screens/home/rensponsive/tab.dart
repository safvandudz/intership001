import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intership01/screens/home/homeController.dart';

import '../widgets/listItems.dart';

class HomeTab extends StatefulWidget {
  final HomeController controller;
  final Widget child;
  const HomeTab({
    Key? key,
    required this.child,
    required this.controller,
  }) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Sidebar
          Container(
            width: 213,
            color: Colors.blue,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 63),
                  child: SizedBox(
                    width: 134,
                    child: Image.asset(
                      'assets/Logo.png', // Ensure correct image path
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ListWidget(
                  controller: widget.controller,
                  h: 30,
                ),
              ],
            ),
          ),
          // Content Area
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 40, top: 30, right: 40),
              child: widget.child,
            ),
          ),
        ],
      ),
    );
  }
}
