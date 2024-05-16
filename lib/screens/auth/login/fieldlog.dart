import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intership01/Screens/auth/login/login_controller.dart';

import '../../../repository/api/api.dart';

class Logfield extends StatelessWidget {
  final LoginController controller;
  final String title;
  final String subtitle;
  final String button;
  final double size;
  final bool obs;
  final double h;
  final TextInputType keyboardType;
  final TextInputType keyboardType1;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;

  const Logfield({
    Key? key,
    required this.controller,
    this.obs=false,
    this.title = 'Welcome Back!',
    this.subtitle = 'Login your account',
    this.button = 'Login',
    this.size = 20,
    this.h = 15,
    required this.keyboardType,
    required this.keyboardType1,
    this.inputFormatters,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(constraints: BoxConstraints(maxWidth: 450),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700),
          ),
          Text(
            subtitle,
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 40,
          ),
          TextField1(
            labelText: 'Username/Email',
            size: size,
            controller: controller.userNameController,
            h: h,
            pass: false,
            keyboardType: keyboardType,
            inputFormatters: inputFormatters,
            validator: validator,
          ),
          SizedBox(
            height: 20,
          ),
          TextField1(
            pass:obs ,
            labelText: 'Password',
            size: size,
            controller: controller.passwordController,
            h: h,
            keyboardType: keyboardType1,
            inputFormatters: inputFormatters,
            validator: validator,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forget Password',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          SizedBox(height: 25,),
          Button(button: button,controller:controller,),
        ],
      ),
    );
  }
}
class TextField1 extends StatelessWidget {
  final String labelText;
  final double size;
  final double h;
  final bool pass; // Changed to lowercase
  final TextEditingController controller;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;

  const TextField1({
    Key? key,
    required this.labelText,
    required this.size,
    required this.h,
    required this.pass, // Changed to lowercase
    required this.controller,
    required this.keyboardType,
    this.inputFormatters,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: TextStyle(fontSize: size),
          ),
          SizedBox(height: 12),
          TextFormField(
            keyboardType: keyboardType,
            controller: controller,
            obscureText: pass, // Changed to lowercase
            inputFormatters: inputFormatters,
            validator: validator,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(color: Colors.grey, width: 0.1),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: h, horizontal: 10.0),
            ),
          ),
        ],
      ),
    );
  }
}


class Button extends StatelessWidget {
  final LoginController controller;
  final String button;

  const Button({
    Key? key,
    required this.button, required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {


      ApiController apiController = ApiController(controller: controller);
      apiController.onInit();
    },
      child: Container(
        width: double.maxFinite,
        height: 54,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Color.fromRGBO(66, 95, 235, 1),
        ),
        child: Center(
          child: Text(
            button,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}