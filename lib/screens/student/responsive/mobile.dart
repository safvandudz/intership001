
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intership01/utils/validator.dart';

import '../../../../widget/field.dart';
import '../studentController.dart';


class StudentsMobile extends StatefulWidget {
  final StudentController controller;
  const StudentsMobile({super.key,required this.controller});

  @override
  State<StudentsMobile> createState() => _StudentsMobileState();
}

class _StudentsMobileState extends State<StudentsMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Form(
        key: widget.controller.formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'BASIC DETAILS',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                    ),
                    Fields(size: 12,h: 8,
                      labelText: 'First Name',
                      controller: widget.controller.firstNameController,
                      keyboardType: TextInputType.text,validator: validName,
                    ),
                    Fields(size: 12,h: 8,
                      labelText: 'Last Name',
                      controller: widget.controller.lastNameController,
                      keyboardType: TextInputType.text,
                    ),
                    Fields(size: 12,h: 8,
                      labelText: 'Email Address',
                      controller: widget.controller.emailAddressController,
                      keyboardType: TextInputType.emailAddress,
                      validator: isEmailValid,
                    ),
                    Fields(size: 12,h: 8,
                      labelText: 'User ID',
                      controller: widget.controller.userIDController,
                      keyboardType: TextInputType.text,
                      validator: userIdValidator,
                    ),
                    Fields(size: 12,h: 8,
                      labelText: 'District',
                      controller: widget.controller.districtController,
                      keyboardType: TextInputType.text,
                    ),
                    Fields(size: 12,h: 8,

                      labelText: 'Phone No',
                      controller: widget.controller.phoneNoController,
                      keyboardType: TextInputType.phone,validator: isPhoneNumberValid,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly,LengthLimitingTextInputFormatter(10)],
                    ),
                    Fields(size: 12,h: 8,
                      labelText: 'Pincode',
                      controller: widget.controller.pincodeController,
                      keyboardType: TextInputType.phone,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    ),
                    Fields(size: 12,h: 8,
                      labelText: 'Country',
                      controller: widget.controller.countryController,

                    ),
                    SizedBox(height: 50),
                    Center(
                      child: Column(
                        children: [
                          ElevatedButton(

                              onPressed: () => widget.controller.onSubmit(),
                        style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue, // Background color
                            ),
                            child: Text(
                              "Save & Proceed",
                              style: TextStyle(color: Colors.white), // Text color
                            ),
                          ),

                          SizedBox(height: 8),
                          TextButton(
                            onPressed: widget.controller.clearForm,
                            child: Text(
                              "Reset All",
                              style: TextStyle(color: Colors.black), // Text color
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
