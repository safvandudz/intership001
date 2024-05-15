import 'package:flutter/material.dart';
import 'package:intership01/Screens/auth/login/login_controller.dart';

import '../Fieldlog.dart';

class Login_tab extends StatelessWidget {
  final LoginController controller;
  const Login_tab({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.only(left: 87, top: 74, right: 87),
                  child: Center(
                    child: Image.asset(
                      'assets/Log.png',
                      fit: BoxFit.contain,
                    ),
                  ))),
          Logfield(controller: LoginController(),
            keyboardType: TextInputType.text,
            obs: true,
            keyboardType1: TextInputType.text,
          )
        ],
      ),
    );
  }
}
