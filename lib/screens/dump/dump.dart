import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intership01/screens/dump/dumpController.dart';
import 'package:intership01/screens/dump/responsive/desktop.dart';
import 'package:intership01/screens/dump/responsive/mobile.dart';
import 'package:intership01/screens/dump/responsive/tab.dart';
import 'package:intership01/screens/home/homeController.dart';
import 'package:intership01/screens/home/rensponsive/desktop.dart';
import 'package:intership01/screens/home/rensponsive/mobile.dart';
import 'package:intership01/screens/home/rensponsive/tab.dart';
import 'package:intership01/screens/teacher/responsive/desktop.dart';
import 'package:intership01/screens/teacher/teacher_list_controller.dart';
import 'package:intership01/widget/response.dart';

class DumpScreen extends StatefulWidget {
  // final Widget child;
  // final String? id;
  const DumpScreen({
    super.key,
  });

  @override
  State<DumpScreen> createState() => _DumpScreenState();
}

class _DumpScreenState extends State<DumpScreen> {
  String tag = DateTime.now().toString();
  late DumpController _controller;
  @override
  void initState() {
    _controller = Get.put(tag: tag, DumpController());
    super.initState();
  }

  void dispose() {
    Get.delete<TeacherController>(
      tag: tag,
    );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(
      tab: DumpTab(),
      desktop:  DumpDesktop(controller: _controller,),
      mobile: DumpMobile()
    );
  }
}
