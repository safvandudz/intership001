import 'package:flutter/material.dart';

import '../../../router/approutes.dart';

class HomeMobile extends StatefulWidget {
  final Widget child;
  const HomeMobile({super.key, required this.child});

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
      drawer:Drawer(width: 130  ,shape: Border(),
        child: ListView(
          // padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(

              title: Text('teacher'),
              onTap: () {
                router.go('/teacher');
              },
            ),
            ListTile(
              title: Text('Student'),
              onTap: () {
                router.go('/createStudent');
              },
            ),
            ListTile(
              title: Text('Connect'),
              onTap: () {
                router.go('/teacher');
              },
            ),
          ],
        ),
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
