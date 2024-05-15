// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:go_router/go_router.dart';
// import 'package:intership01/Screens/Student/create/sub_screen/details.dart';
//
// import '../../../main.dart';
//
// class LogController extends GetxController {
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//
//   final TextEditingController firstNameController = TextEditingController();
//   final TextEditingController lastNameController = TextEditingController();
//   final TextEditingController emailAddressController = TextEditingController();
//   final TextEditingController userIDController = TextEditingController();
//   final TextEditingController districtController = TextEditingController();
//   final TextEditingController phoneNoController = TextEditingController();
//   final TextEditingController pincodeController = TextEditingController();
//   final TextEditingController countryController = TextEditingController();
//
// ///_create ()
//   ///_edit(){
//   ///items[index]= UserModel(
//   ///name:nameC.text
//   ///items.refresh()
//
//   final RxList<UserModel> items = RxList<UserModel>.empty();
//
//   void saveForm(BuildContext context) {
//     final formKey = GlobalKey<FormState>();
//
//     if (formKey.currentState!.validate()) {
//       final firstName = firstNameController.text.trim();
//       final lastName = lastNameController.text.trim();
//       final fullName = '$firstName $lastName';
//       final email = emailAddressController.text.trim();
//       final id = userIDController.text.trim();
//       final district = districtController.text.trim();
//       final phoneNo = phoneNoController.text.trim();
//       final pin = pincodeController.text.trim();
//       final country = countryController.text.trim();
//
//       final userModel = UserModel(
//         name: fullName,
//         email: email,
//         uid: id,
//         district: district,
//         phoneNo: phoneNo,
//         pin: pin,
//         country: country,
//       );
//
//       items.add(userModel);
//       clearForm();
//       Get.snackbar('Success', 'Form saved successfully');
//       Navigator.pop(context);
//     } else {
//       print('Form validation failed');
//     }
//   }
//   void clearForm() {
//     firstNameController.clear();
//     lastNameController.clear();
//     emailAddressController.clear();
//     userIDController.clear();
//     districtController.clear();
//     phoneNoController.clear();
//     pincodeController.clear();
//     countryController.clear();
//   }
//
//
// onSubmit(){
//   /// desktop design
//   /// textfeild design
//   /// First Name required |email not required but if enter validate| user id required| phone number validate if entered
//
//
//
//   /// validate firts before submiting
//   /// main list <Student> add on submit
//   /// design view page responsively ...
//   ///
//
//   /// route to list page
// }
//   @override
//   void onClose() {
//     // Dispose controllers when not needed to avoid memory leaks
//     firstNameController.dispose();
//     lastNameController.dispose();
//     emailAddressController.dispose();
//     userIDController.dispose();
//     districtController.dispose();
//     phoneNoController.dispose();
//     pincodeController.dispose();
//     countryController.dispose();
//     super.onClose();
//   }
// @override
//   void onInit() {
//     /// if index !null
//   /// data = items[index]
//   /// emailC = data.email
//   /// name = data.name
//
//
//     super.onInit();
//   }
//   // void saveForm() {
//   //   if (formKey.currentState!.validate()) {
//   //
//   //     Get.snackbar('Success', 'Form saved successfully');
//   //   }
//   // }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intership01/Screens/Student/create/sub_screen/details.dart';
import 'package:intership01/Screens/Student/create/view.dart'; // Assuming you have a view.dart file
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

  // final RxList<UserModel> items = RxList<UserModel>.empty();
  ///_create ()
   ///_edit(){
  ///items[index]= UserModel(
  ///name:nameC.text
   ///items.refresh()
  void saveForm(BuildContext context) {

    // final formKey = GlobalKey<FormState>();
    if (formKey.currentState!.validate()) {
      print("hello");
      final firstName = firstNameController.text.trim();
      final lastName = lastNameController.text.trim();
      final email = emailAddressController.text.trim();
      final id = userIDController.text.trim();
      final district = districtController.text.trim();
      final phoneNo = phoneNoController.text.trim();
      final pin = pincodeController.text.trim();
      final country = countryController.text.trim();

      // Create a new UserModel instance
      final userModel = UserModel(
        name: '$firstName $lastName',
        email: email,
        uid: id,
        district: district,
        phoneNo: phoneNo,
        pin: pin,
        country: country,
      );

      items.add(userModel);

      clearForm();

      Get.snackbar('Success', 'Form saved successfully');

      Navigator.pop(context);
    } else {
      print('Form validation failed');
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
     /// desktop design
   /// textfeild design
   /// First Name required |email not required but if enter validate| user id required| phone number validate if entered

   /// validate firts before submiting
   /// main list <Student> add on submit
   /// design view page responsively ...
   /// route to list page

  void onSubmit() {
    saveForm(navigatorKey.currentContext!);

    //
    // Save the form data
    // You can add any additional logic related to form submission here
    // For example, you can navigate to another page after form submission
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
}