import 'package:flutter/material.dart';

class DumpMobile extends StatefulWidget {
  const DumpMobile({super.key});

  @override
  State<DumpMobile> createState() => _DumpMobileState();
}

class _DumpMobileState extends State<DumpMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Dump',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Container(
            width: 100,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.yellow, borderRadius: BorderRadius.circular(18)),
            child: Center(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      'Create',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
