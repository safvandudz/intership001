import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intership01/screens/teacher/teacherScreen.dart';
import '../../../../utils/validator.dart';
import '../../../../widget/buttn.dart';
import '../../../../widget/field.dart';
import '../../../router/approutes.dart';
import '../homeController.dart';
import '../widgets/listItems.dart';

class HomeDesktop extends StatefulWidget {
  final HomeController controller;
final Widget child;
  const HomeDesktop({Key? key, required this.child,
    required this.controller,
    // required this.controller
  }) : super(key: key);

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 323,
            color: Colors.blue,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 63),
                  child: SizedBox(
                    width: 215,
                    child: Image.asset(
                      'assets/Logo.png', // Ensure correct image path
                    ),
                  ),
                ),
                ListWidget(controller: widget.controller),

              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 40, top: 30, right: 40),child: widget.child,
            ),
          ),
        ],
      ),
    );
  }
}
