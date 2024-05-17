import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intership01/screens/home/homeController.dart';
import 'package:intership01/screens/home/rensponsive/desktop.dart';
import 'package:intership01/screens/home/rensponsive/mobile.dart';
import 'package:intership01/screens/home/rensponsive/tab.dart';
import 'package:intership01/screens/teacher/responsive/desktop.dart';
import 'package:intership01/screens/teacher/teacher_list_controller.dart';
import 'package:intership01/widget/response.dart';

class HomeScreen extends StatefulWidget {
  // final String? id;
  const HomeScreen({super.key,});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String tag = DateTime.now().toString();
  late HomeController _controller;
  @override
  void initState() {
    _controller = Get.put(tag: tag, HomeController());
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
      tab: HomeTab(),
      desktop:HomeDesktop(),
      mobile: HomeMobile(),
    );
  }
}