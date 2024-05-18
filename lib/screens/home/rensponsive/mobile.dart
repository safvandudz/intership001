import 'package:flutter/material.dart';
import 'package:intership01/screens/home/homeController.dart';

import '../../../router/approutes.dart';
import '../widgets/listItems.dart';

class HomeMobile extends StatefulWidget {
  final HomeController controller;
  final Widget child;
  const HomeMobile({super.key, required this.child, required this.controller});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Builder(
        builder: (BuildContext context) {
          return GestureDetector(onTap: () {
            Scaffold.of(context).openDrawer();
          },
            child: Icon(Icons.menu),
          );
        },
      ),
        backgroundColor: Colors.blue,
        title: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Image.asset(
            'assets/Logo.png', // Replace 'your_image.png' with your actual image asset path
            width: 100, // Adjust width as needed
            height: 80, // Adjust height as needed
          ),
        ),
        leadingWidth: 50,
      ),
      drawer:Drawer(width: 130  ,backgroundColor: Colors.blue,shape: Border(),
        child: ListWidget(controller: widget.controller),
      ),
      body: Scaffold(body:

      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 40, top: 30, right: 40),child: widget.child,
        ),
      )
        ,),
    );
  }
}
