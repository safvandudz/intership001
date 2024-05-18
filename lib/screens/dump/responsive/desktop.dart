import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intership01/screens/dump/dumpController.dart';
import '../../../repository/dpi/api/api.dart';
import '../../../repository/dpi/api/apiModel.dart';

class DumpDesktop extends StatefulWidget {
  final DumpController controller;
  const DumpDesktop({Key? key, required this.controller}) : super(key: key);

  @override
  State<DumpDesktop> createState() => _DumpDesktopState();
}

class _DumpDesktopState extends State<DumpDesktop> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Dump',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Dialogue Box'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TextField(
                          controller: widget.controller.nameController,
                          decoration: InputDecoration(labelText: 'Field 1'),
                        ),
                        TextField(
                          controller: widget.controller.rateController,
                          decoration: InputDecoration(labelText: 'Field 2'),
                        ),
                      ],
                    ),
                    actions: <Widget>[
                      ElevatedButton(
                        onPressed: () async {
                          Navigator.of(context).pop();
                          String name = widget.controller.nameController.text;
                          String rate = widget.controller.rateController.text;


                          CreateDpiRateInput dpiCreate = CreateDpiRateInput(
                            branchId: '',
                            name: name,
                            rate: 1.2,
                          );

                          try {
                            await ApiController().createDpiRate(dpiCreate);
                            print('API call');
                            print('$name');


                          } catch (e) {

                            print('API call failed: $e');

                          }
                        },
                        child: Text('OK'),
                      ),

                    ],
                  );
                },
              );
            },
            child: Container(
              width: 150,
              height: 52,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add),
                    SizedBox(width: 5),
                    Text('Create', style: TextStyle(fontWeight: FontWeight.w700)),
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
