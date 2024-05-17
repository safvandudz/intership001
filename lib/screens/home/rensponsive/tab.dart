import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intership01/screens/teacher/teacherScreen.dart';
import '../../../../utils/validator.dart';
import '../../../../widget/buttn.dart';
import '../../../../widget/field.dart';
import '../../../router/approutes.dart';
import '../../Student/create/view.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  Color _buttonColor = Colors.white;
  Color _buttonColor1 = Colors.blue;
  Color text = Colors.blue;
  Color text1 = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Sidebar
          Container(
            width: 213,
            color: Colors.blue,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 63),
                  child: SizedBox(
                    width: 134,
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
                      setState(() {
                        _buttonColor = Colors.white;
                        _buttonColor1 = Colors.blue;
                        text = Colors.blue;
                        text1 = Colors.white;
                        router.go('students');
                      });
                    },
                    child: Buttn(
                      color: _buttonColor,
                      child: Text(
                        'Students',
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
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _buttonColor = Colors.blue;
                        _buttonColor1 = Colors.white;
                        text = Colors.white;
                        text1 = Colors.blue;
                        router.pushNamed('teacher');
                      });
                    },
                    child: Buttn(
                      color: _buttonColor1,
                      child: Text(
                        'Teacher',
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
              ],
            ),
          ),
          // Content Area
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 40, top: 30, right: 40),
              child: _buildSelectedContent(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSelectedContent() {

  }
}
