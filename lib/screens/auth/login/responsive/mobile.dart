import 'package:flutter/material.dart';

import '../Fieldlog.dart';
import '../login_controller.dart';

class Login_Mobile extends StatelessWidget {
  final LoginController controller;

  const Login_Mobile({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Logfield(controller: LoginController(),
          keyboardType: TextInputType.text,
          obs: true,
          keyboardType1: TextInputType.text,
        )
      ),
    );
  }
}
