import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:intership01/repository/api/api.dart';
import '../../widgets/fieldlog.dart';
import '../login_controller.dart';

class LoginDesktop extends StatelessWidget {
  final LoginController controller;

  const LoginDesktop({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 1500), // Adjust maximum width here
          width: double.infinity, // Allow the Container to take full available width
          height: double.infinity,
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 1500),
                        height: 605,
                        child: Image.asset(
                          'assets/Log.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Container(constraints: BoxConstraints(maxWidth: 450),width: double.infinity,
                      height: 500,
                      child: Logfield(
                        controller: LoginController(),
                        keyboardType: TextInputType.text,
                        obs: true,
                        keyboardType1: TextInputType.text,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
