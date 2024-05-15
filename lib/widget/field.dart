import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Fields extends StatelessWidget {
  final String labelText;
  final double size;
  final double h;
  // final

  final TextEditingController controller;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator; // Validation function

  const Fields({
    Key? key,
    required this.labelText,
    required this.controller,
    this.size=12,
    required this.h,// Setting initial value for size
    this.keyboardType = TextInputType.text,
    this.inputFormatters,
    this.validator, // Validation function parameter
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
            style: TextStyle(fontSize: size.toDouble()), // Using the provided size
          ),
          SizedBox(height: 12),
          TextFormField(
            keyboardType: keyboardType,
            controller: controller,
            inputFormatters: inputFormatters,
            validator: validator, // Assigning the validator function
            decoration: InputDecoration(
              fillColor: Colors.grey.shade300,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide.none,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: h, horizontal: 10.0),
            ),
          ),
        ],
      ),
    );
  }
}
