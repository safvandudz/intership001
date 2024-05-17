import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intership01/utils/validator.dart';

import '../../../../widget/field.dart';

import '../logcontrollers.dart';

class StudentsTab extends StatelessWidget {
  final LogController controller;
  const StudentsTab({super.key,required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Row(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child:Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'BASIC DETAILS',
                      style:
                      TextStyle(fontSize: 25,fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Expanded(
                            child: Fields(size: 18,h: 10,
                              labelText: 'First Name',
                              controller: controller.firstNameController,
                              keyboardType: TextInputType.text,
                              validator: validName,
                            )),
                        SizedBox(width: 8),
                        Expanded(
                            child: Fields(size: 18,h: 10,
                              labelText: 'Last Name',
                              controller: controller.lastNameController,
                              keyboardType: TextInputType.text,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Fields(size: 18,h: 10,
                              labelText: 'Email Address',
                              controller: controller.emailAddressController,
                              keyboardType: TextInputType.text,
                              validator:  isEmailValid,
                            )),
                        SizedBox(width: 8),
                        Expanded(
                            child: Fields(size: 18,h: 10,
                              labelText: 'User ID',
                              validator: userIdValidator,
                              controller: controller.userIDController,
                              keyboardType: TextInputType.text,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Fields(size: 18,h: 10,
                              labelText: 'District',
                              controller: controller.districtController,
                              keyboardType: TextInputType.text,
                            )),
                        SizedBox(width: 8),
                        Expanded(
                            child: Fields(size: 18,h: 10,
                              labelText: 'Phone No',validator: isPhoneNumberValid,
                              controller: controller.phoneNoController,inputFormatters: [FilteringTextInputFormatter.digitsOnly,LengthLimitingTextInputFormatter(10)],
                              keyboardType: TextInputType.phone,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Fields(size: 18,h: 10,
                              labelText: 'Pincode',
                              controller: controller.pincodeController,
                              keyboardType: TextInputType.phone,
                            )),
                        SizedBox(width: 8),
                        Expanded(
                            child: Fields(size: 18,h: 10,
                              labelText: 'Country',
                              controller: controller.countryController,
                              keyboardType: TextInputType.text,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: controller.clearForm,
                            child: Text(
                              "Reset all",
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 18),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () => controller.saveForm(context),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              minimumSize: Size(10, 45),
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20), // Inner padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24), // Reduced radius
                              ),
                            ),
                            child: Text(
                              "Save & Proceed",
                              style: TextStyle(color: Colors.white, fontSize: 14),
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
      ],
    ),);
  }
}
