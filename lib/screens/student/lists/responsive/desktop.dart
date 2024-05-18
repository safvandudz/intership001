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
      body: Column(
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
                  crossAxisCount:
                  MediaQuery.of(context).size.width > 600
                      ? 5
                      : 3, // Number of columns in the grid
                  crossAxisSpacing: 5, // Spacing between columns
                  mainAxisSpacing: 5.0,
                ),
                itemCount:
                items.value.length + 1, // Add 1 for the "+" icon
                itemBuilder: (BuildContext context, int index) {
                  if (index == items.length) {
                    return GestureDetector(
                        onTap: () {
                          router.go('/students');
                        },
                        child: Card(shape: Border.all(color: Colors.black26),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Center(
                              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(width: 1000,height: 100,
                                    child: Padding(
                                      padding: const EdgeInsets.all(30),
                                      child: Image.asset(
                                        'assets/add (1).png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  Text('Add New Student',),
                                ],
                              ),
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
    );
  }
}
