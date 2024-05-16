import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class Teacher {
  final String name;
  final String subject;
  final int age;
  final double height;

  Teacher(this.name, this.subject, this.age, this.height);
}

class TeacherDataSource extends DataGridSource {
  TeacherDataSource({required List<Teacher> teacherData}) {
    _teacherData = teacherData
        .map<DataGridRow>((e) => DataGridRow(cells: [
      DataGridCell<String>(columnName: 'name', value: e.name),
      DataGridCell<String>(columnName: 'subject', value: e.subject),
      DataGridCell<int>(columnName: 'age', value: e.age),
      DataGridCell<double>(columnName: 'height', value: e.height),
    ]))
        .toList();
  }

  List<DataGridRow> _teacherData = [];

  @override
  List<DataGridRow> get rows => _teacherData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
          return Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(8.0),
            child: Text(e.value.toString()),
          );
        }).toList());
  }
}


