import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MainAppController extends GetxController {
  Rx<String> token = "".obs;

  @override
  void onInit() async {

    await GetStorage.init();
    token.value = GetStorage().read('token') ?? "";
    super.onInit();
  }

  void onLogin(String token) {
    GetStorage().write('token', token);
    this.token.value = token;
    print('sucess');
    if(token==null){


    }


  }
}

final mainAppController = Get.put(MainAppController());
