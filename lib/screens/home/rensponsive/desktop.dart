import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intership01/screens/teacher/teacherScreen.dart';
import '../../../../utils/validator.dart';
import '../../../../widget/buttn.dart';
import '../../../../widget/field.dart';
import '../../Student/create/view.dart';

class HomeDesktop extends StatefulWidget {
  // final LogController controller;

  const HomeDesktop({Key? key,
    // required this.controller
  }) : super(key: key);

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  bool teach = true;
  bool stud = false;

  Color _buttonColor = Colors.blue;
  Color _buttonColor1 = Colors.white;
  Color text = Colors.white;
  Color text1 = Colors.blue;
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
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: GestureDetector(
                    onTap: () {
                      // Update color when "Students" button is pressed
                      setState(() {
                        teach = true;
                        stud = false;
                        _buttonColor = Colors.blue;
                        _buttonColor1 = Colors.white;
                        text = Colors.white;
                        text1 = Colors.blue;
                      });
                    },
                    child: Buttn(
                      color: _buttonColor1, // Use the state variable for color
                      child: Text(
                        'Students',
                        style: TextStyle(
                          color: text1,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      h: '20',
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        stud = true;
                        teach = false;
                        _buttonColor = Colors.white;
                        _buttonColor1 = Colors.blue;
                        text = Colors.blue;
                        text1 = Colors.white;
                      });
                    },
                    child: Buttn(
                      color: _buttonColor, // Use the state variable for color
                      child: Text(
                        'Teacher',
                        style: TextStyle(
                          color: text,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      h: '20',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: teach,
            child: Expanded(
                child: TeacherScreen()),
          ),
          Visibility(
            visible: stud,
            child: Expanded(
              child: StudentsScreen(),
            ),
          ),
        ],
      ),
    );
  }
}
