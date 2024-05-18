import 'package:flutter/material.dart';

class DumpTab extends StatefulWidget {
  const DumpTab({super.key});

  @override
  State<DumpTab> createState() => _DumpTabState();
}

class _DumpTabState extends State<DumpTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Dump',
            style: TextStyle(fontSize: 32),
          ),
          Container(
            width: 120,
            height: 40,
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
                      width: 5,
                    ),
                    Text('Create',
                        style: TextStyle(fontWeight: FontWeight.w700))
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
