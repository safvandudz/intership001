import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intership01/screens/teacher/responsive/desktop.dart';
import 'package:intership01/screens/teacher/teacher_list_controller.dart';
import 'package:intership01/widget/response.dart';

class TeacherScreen extends StatefulWidget {
  // final String? id;
  const TeacherScreen({super.key,});

  @override
  State<TeacherScreen> createState() => _TeacherScreenState();
}

class _TeacherScreenState extends State<TeacherScreen> {
  String tag = DateTime.now().toString();
  late TeacherController _controller;
  @override
  void initState() {
    _controller = Get.put(tag: tag, TeacherController());
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
      tab: TeacherDesktop(
        controller: _controller,
      ),
      desktop: TeacherDesktop(
        controller: _controller,
      ),
      mobile: TeacherDesktop(
        controller: _controller,
      ),
    );
  }
}
