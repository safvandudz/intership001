import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:intership01/Screens/Student/create/view.dart';
import '../../../../widget/field.dart';
import '../../main.dart';

class StudentsList extends StatelessWidget {
  const StudentsList({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.only(left: 87, top:50, right: 87),
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'NEW STUDENTS',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    SizedBox(height: 50,),
                    Expanded(
                      child: Obx(
                        () =>  GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4, // Number of columns in the grid
                            crossAxisSpacing: 5, // Spacing between columns
                            mainAxisSpacing: 5.0,
                          ),
                          itemCount: items.value.length + 1, // Add 1 for the "+" icon
                          itemBuilder: (BuildContext context, int index) {
                            if (index == items.length) {
                              return GestureDetector(onTap: () {
                         context.pushNamed("createStudent");
                              },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black26),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 50),
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Icon(Icons.add_circle_outline_rounded, size: 100,color: Colors.black38,),
                                        Text('Add New Student'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            } else {
                              // Render student data
                              return Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black26),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${items[index]['name']}',
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      Text('${items[index]['email']}'),
                                      Text('${items[index]['id']}'),
                                      Text('${items[index]['district']}'),
                                      Text('${items[index]['phoneNo']}'),
                                      Text('${items[index]['pin']}'),
                                      Text('${items[index]['country']}'),
                                    ],
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
