import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../main.dart';

class LogController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController userIDController = TextEditingController();
  final TextEditingController districtController = TextEditingController();
  final TextEditingController phoneNoController = TextEditingController();
  final TextEditingController pincodeController = TextEditingController();
  final TextEditingController countryController = TextEditingController();

///_create ()
  ///_edit(){
  ///items[index]= UserModel(
  ///name:nameC.text
  ///items.refresh()

  void saveForm(BuildContext context) {
    if (formKey.currentState!.validate()) {

      ///id!=null
      ///_edit()
      ///id==null
      ///create()
      items.add({
        'name': firstNameController.text.trim() + ' ' + lastNameController.text.trim(),
        'email': emailAddressController.text.trim(),
        'id': userIDController.text.trim(),
        'district': districtController.text.trim(),
        'phoneNo': phoneNoController.text.trim(),
        'pin': pincodeController.text.trim(),
        'country': countryController.text.trim(),
      });
      clearForm();
      Get.snackbar('Success', 'Form saved successfully');
      context.pop();
    }
    else{
      print("Working");
    }
  }

  void clearForm() {
    firstNameController.clear();
    lastNameController.clear();
    emailAddressController.clear();
    userIDController.clear();
    districtController.clear();
    phoneNoController.clear();
    pincodeController.clear();
    countryController.clear();
  }


onSubmit(){
  /// desktop design
  /// textfeild design
  /// First Name required |email not required but if enter validate| user id required| phone number validate if entered



  /// validate firts before submiting
  /// main list <Student> add on submit
  /// design view page responsively ...
  ///

  /// route to list page
}
  @override
  void onClose() {
    // Dispose controllers when not needed to avoid memory leaks
    firstNameController.dispose();
    lastNameController.dispose();
    emailAddressController.dispose();
    userIDController.dispose();
    districtController.dispose();
    phoneNoController.dispose();
    pincodeController.dispose();
    countryController.dispose();
    super.onClose();
  }
@override
  void onInit() {
    /// if index !null
  /// data = items[index]
  /// emailC = data.email
  /// name = data.name


    super.onInit();
  }
  // void saveForm() {
  //   if (formKey.currentState!.validate()) {
  //
  //     Get.snackbar('Success', 'Form saved successfully');
  //   }
  // }
}