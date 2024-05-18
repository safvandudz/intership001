import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:intership01/screens/student/lists/responsive/desktop.dart';
import 'package:intership01/screens/student/lists/responsive/mobile.dart';
import 'package:intership01/screens/student/lists/responsive/tab.dart';
import 'package:intership01/widget/response.dart';

import '../studentController.dart';


class DataList extends StatefulWidget {
  const DataList({super.key});

  @override
  State<DataList> createState() => _DataListState();
}

class _DataListState extends State<DataList> {
  String tag=DateTime.now.toString();
  late StudentController _controller;
  @override
  void iniState(){
    
    _controller=Get.put(tag: tag,StudentController());
    super.initState();
  }
  void dispose(){
    
   Get.delete<StudentController>(tag:tag);
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Responsive(desktop: DataDesktop(), mobile: DataMobile(), tab: DataTab());
  }
}
