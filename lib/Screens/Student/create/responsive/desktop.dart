import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intership01/Screens/Student/List.dart';

import '../../../../utils/validator.dart';
import '../../../../widget/field.dart';
import '../logcontrollers.dart';

class StudentsDesktop extends StatelessWidget {
  final LogController controller;

  const StudentsDesktop({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 323,
            color: Colors.blue,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 63),
                  child: SizedBox(
                    width: 215,
                    child: Image.asset(
                      'assets/Logo.png', // Ensure correct image path
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 87, top: 74, right: 87),
              child: Container(
                width: double.infinity,
                child: Form(
                  key: controller.formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'BASIC DETAILS',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 35),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 86),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Fields(
                                      size: 20,
                                      h: 15,
                                      labelText: 'First Name',
                                      controller:
                                          controller.firstNameController,
                                      keyboardType: TextInputType.text,
                                      validator: validName,
                                    ),
                                  ),
                                  SizedBox(width: 44),
                                  Expanded(
                                    child: Fields(
                                      size: 20,
                                      h: 15,
                                      labelText: 'Last Name',
                                      controller: controller.lastNameController,
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Fields(
                                      size: 20,
                                      h: 15,
                                      validator: isEmailValid,
                                      labelText: 'Email Address',
                                      controller:
                                          controller.emailAddressController,
                                      keyboardType: TextInputType.emailAddress,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(RegExp(
                                            '[a-z@.]')), // Allow lowercase letters, '@', and '.'

                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 44),
                                  Expanded(
                                    child: Fields(
                                      size: 20,
                                      h: 15,
                                      labelText: 'User ID',
                                      validator: userIdValidator,
                                      controller: controller.userIDController,
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Fields(
                                      size: 20,
                                      h: 15,
                                      labelText: 'District',
                                      controller: controller.districtController,
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                  SizedBox(width: 44),
                                  Expanded(
                                    child: Fields(
                                      size: 20,
                                      h: 15,
                                      validator: isPhoneNumberValid,
                                      labelText: 'Phone No',
                                      controller: controller.phoneNoController,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                        LengthLimitingTextInputFormatter(10),
                                      ],
                                      keyboardType: TextInputType.phone,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Fields(
                                      size: 20,
                                      h: 15,
                                      labelText: 'Pincode',
                                      controller: controller.pincodeController,
                                      keyboardType: TextInputType.phone,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 44,
                                  ),
                                  Expanded(
                                    child: Fields(
                                      size: 20,
                                      h: 15,
                                      labelText: 'Country',
                                      controller: controller.countryController,
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: controller.clearForm,
                                child: Text(
                                  "Reset all",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () => controller.saveForm(context),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  minimumSize: Size(10, 60),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 20), // Inner padding
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        24), // Reduced radius
                                  ),
                                ),
                                child: Text(
                                  "Save & Proceed",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
