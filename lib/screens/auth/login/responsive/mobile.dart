import 'package:flutter/material.dart';

import '../../widgets/fieldlog.dart';
import '../login_controller.dart';

class Login_Mobile extends StatelessWidget {
  final LoginController controller;

  const Login_Mobile({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Logfield(controller: LoginController(),
              keyboardType: TextInputType.text,
              obs: true,
              keyboardType1: TextInputType.text,
            ),
          ),
        ),
      ),
    );
  }
}
