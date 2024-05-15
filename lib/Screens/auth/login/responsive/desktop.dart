import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../Fieldlog.dart';
import '../login_controller.dart';

class LoginDesktop extends StatelessWidget {
  final LoginController controller;
  const LoginDesktop({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                        padding:
                            const EdgeInsets.only(left: 87, top: 74, right: 87),
                        child: Center(
                          child: Image.asset(
                            'assets/Log.png',
                            fit: BoxFit.contain,
                          ),
                        ))),
                Logfield(controller: controller.userNameController,keyboardType: TextInputType.text,onPressed: () {



                },obs: true,keyboardType1: TextInputType.text,controller1: controller.passwordController,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
