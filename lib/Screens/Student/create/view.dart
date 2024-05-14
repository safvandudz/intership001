import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intership01/Screens/Student/create/responsive/desktop.dart';
import 'package:intership01/Screens/Student/create/responsive/mobile.dart';
import 'package:intership01/Screens/Student/create/responsive/tab.dart';

import 'package:intership01/widget/response.dart';

import 'logcontrollers.dart';

class StudentsScreen extends StatefulWidget {
  final String? id;
  const StudentsScreen({super.key,this.id});

  @override
  State<StudentsScreen> createState() => _StudentsScreenState();
}

class _StudentsScreenState extends State<StudentsScreen> {
  String tag= DateTime.now().toString();
  late LogController _controller ;
  @override
  void initState() {
    _controller= Get.put(LogController(),tag:tag);
    super.initState();
  }
  @override
  void dispose() {
    Get.delete<LogController>(
        tag: tag
    );
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Responsive(desktop: StudentsDesktop(controller: _controller,), mobile:  StudentsMobile(controller: _controller,), tab:  StudentsTab(controller: _controller,));
  }
}
