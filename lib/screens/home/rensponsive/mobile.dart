import 'package:flutter/material.dart';

import '../../Student/create/view.dart';
import '../../teacher/teacherScreen.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Image.asset(
            'assets/Logo.png', // Replace 'your_image.png' with your actual image asset path
            width: 100, // Adjust width as needed
            height: 80, // Adjust height as needed
          ),
        ),
        leadingWidth: 150,
      ),
      body: Scaffold(body:

        Column(
          children: [Visibility(
            visible: true,
            child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 87, top: 74, right: 87),
                  child: TeacherScreen(),
                )),
          ),
            Visibility(
              visible: true,
              child: Expanded(
                child: Padding(
                    padding: const EdgeInsets.only(left: 87, top: 74, right: 87),
                    child: StudentsScreen()
                ),
              ),
            ),],
        )
        ,),
    );
  }
}
