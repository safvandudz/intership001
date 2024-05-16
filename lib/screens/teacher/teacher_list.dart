import 'package:flutter/material.dart';
import 'package:intership01/screens/teacher/teacher.dart';
import 'package:intership01/screens/teacher/teacher_list_controller.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';


class TeacherPage extends StatefulWidget {
  @override
  State<TeacherPage> createState() => _TeacherPageState();
}

class _TeacherPageState extends State<TeacherPage> {
  late TeacherDataSource teacherDataSource;

  late final TeacherController cntroller ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teacher DataGrid'),
      ),
      body: SfDataGrid(
        source: TeacherDataSource(teacherData:cntroller.teachers),
        columnWidthMode: ColumnWidthMode.fill,
        columns: <GridColumn>[
          GridColumn(
              columnName: 'name',
              label: Container(
                  padding: EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: Text('Name'))),
          GridColumn(
              columnName: 'subject',
              label: Container(
                  padding: EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: Text('Subject'))),
          GridColumn(
              columnName: 'age',
              label: Container(
                  padding: EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: Text('Age'))),
          GridColumn(
              columnName: 'height',
              label: Container(
                  padding: EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: Text('Height'))),
        ],
      ),
    );
  }
}
