import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:intership01/repository/api/api.dart';
// Import the ApiController class
import '../Fieldlog.dart'; // Import any necessary classes used in Logfield
import '../login_controller.dart'; // Import the LoginController class

class LoginDesktop extends StatelessWidget {
  final LoginController controller;

  const LoginDesktop({Key? key, required this.controller}) : super(key: key); // Fixed the constructor syntax

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
                    padding: const EdgeInsets.only(left: 87, top: 74, right: 87),
                    child: Center(
                      child: Image.asset(
                        'assets/Log.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Logfield(controller: LoginController(),
                  keyboardType: TextInputType.text,
                  obs: true,
                  keyboardType1: TextInputType.text,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
