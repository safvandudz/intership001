import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intership01/Screens/auth/login/responsive/desktop.dart';
import 'package:intership01/Screens/auth/login/responsive/mobile.dart';
import 'package:intership01/Screens/auth/login/responsive/tab.dart';

import '../../../widget/response.dart';
import 'login_controller.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String tag= DateTime.now().toString();
  late LoginController _controller ;
  @override
  void initState() {
    _controller= Get.put(LoginController(),tag:tag);
    super.initState();
  }
  @override
  void dispose() {
    Get.delete<LoginController>(
        tag: tag
    );
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Responsive(desktop: LoginDesktop(controller: _controller,), mobile: Login_Mobile(controller: _controller,),tab: Login_tab(controller: _controller,),);
  }
}

