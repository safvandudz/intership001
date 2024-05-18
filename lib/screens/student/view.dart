import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intership01/screens/student/responsive/desktop.dart';
import 'package:intership01/screens/student/responsive/mobile.dart';
import 'package:intership01/screens/student/studentController.dart';

import 'package:intership01/widget/response.dart';

import 'responsive/tab.dart';



class StudentsScreen extends StatefulWidget {
  final String? id;
  const StudentsScreen({super.key,this.id});

  @override
  State<StudentsScreen> createState() => _StudentsScreenState();
}

class _StudentsScreenState extends State<StudentsScreen> {
 final String tag= DateTime.now().toString();
  late StudentController _controller ;
  @override
  void initState() {
    _controller= Get.put(StudentController(),tag:tag);
    super.initState();
  }
  @override
  void dispose() {
    Get.delete<StudentController>(
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
