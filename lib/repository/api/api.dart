import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:intership01/Screens/auth/login/login_controller.dart';
import 'package:intership01/app_state/main_app_controller.dart';

import '../../Screens/Student/create/view.dart';

class ApiController extends GetxController {
  final LoginController controller;

  ApiController({required this.controller});

  // var data = [].obs;
  // var isLoading = true.obs;

  @override
  void onInit() {
    _login();
    super.onInit();
  }

  void _login() async {
    final String apiUrl = 'https://api.realestate.salonsyncs.com/graphql';
    final String email = controller.userNameController.text; // Correctly access controller values
    final String password = controller.passwordController.text; // Correctly access controller values

    try {
      final response = await Dio().post(
        apiUrl,
        data: {
          'query': '''
            query Auth_Login(\$loginData: LoginInput!) {
              Auth_Login(loginData: \$loginData) {
                device_id
                accessToken
              }
            }
          ''',
          'variables': {
            "loginData": {
              "grant_type": "password",
              "deviceToken": "testfor",
              "deviceName": "testfor",
              "deviceId": "testfor",
              "_userType": 0,
              "_password": password,
              "_email": email,
              "_deviceType": 1
            }
          },
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'x-tenant-id': "RL0582",
          },
        ),
      );
      if (response.statusCode == 200) {
        final accessToken = response.data['data']['Auth_Login']['accessToken'];
        print('Access Token: $accessToken');
        mainAppController.onLogin(accessToken);

      } else {
        throw Exception('Failed to authenticate');
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}
