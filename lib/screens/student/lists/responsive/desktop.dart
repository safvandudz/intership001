import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../../../../../router/approutes.dart';
import '../details.dart';

class DataDesktop extends StatelessWidget {
  const DataDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 87, top: 50, right: 87),
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
                    SizedBox(
                      height: 50,
                    ),
                    Expanded(
                      child: Obx(
                        () => GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 5, // Spacing between columns
                            mainAxisSpacing: 5.0,
                          ),
                          itemCount:
                              items.value.length + 1, // Add 1 for the "+" icon
                          itemBuilder: (BuildContext context, int index) {
                            if (index == items.length) {
                              return GestureDetector(
                                  onTap: () {
                                    router.go('/student');
                                  },
                                  child: Container(
                                    width: 224,
                                    height: 219,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.black26, width: 2)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 27,
                                            left: 35,
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  width: 100,
                                                  height: 100,
                                                  'assets/add (1).png',
                                                  fit: BoxFit.contain,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8.0),
                                                  child: Text(
                                                    'Add New Student',
                                                    style:
                                                        TextStyle(fontSize: 16),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ));
                            } else {
                              // Render student data
                              return Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black26),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${items[index].name}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        '${items[index].email}',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Text(
                                        '${items[index].uid}',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Text(
                                        '${items[index].district}',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Text(
                                        '${items[index].phoneNo}',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Text(
                                        '${items[index].pin}',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Text(
                                        '${items[index].country}',
                                        style: TextStyle(fontSize: 16),
                                      ),
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
