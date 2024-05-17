import 'package:flutter/material.dart';
import 'package:intership01/screens/teacher/teacher.dart';
import 'package:intership01/screens/teacher/teacher_list_controller.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';


class TeacherDesktop extends StatelessWidget {
  final TeacherController controller;
  const TeacherDesktop({Key? key, required this.controller});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teacher DataGrid',style: TextStyle( fontWeight: FontWeight.bold, fontSize: 35),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SfDataGrid(checkboxShape: CircleBorder(side: BorderSide(color: Colors.red)),
          source: TeacherDataSource(teacherData:controller.teachers),
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
      ),
    );
  }
}
