import 'dart:js';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intership01/router/approutes.dart';

class MainAppController extends GetxController {
  Rx<String> token = "".obs;
  void onLogin(String token) {
    GetStorage().write('token', token);
    this.token.value = token;
    print('sucess');
    // if(token!=null){
     router.go('/home');
    //
    // }


  }




}

final mainAppController = Get.put(MainAppController());
