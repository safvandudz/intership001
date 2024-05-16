//
// import 'package:flutter/material.dart';
// import 'package:intership01/screens/teacher/teacher_list_controller.dart';
//
// import '../router/approutes.dart';
// import 'buttn.dart';
// class SideBar extends StatelessWidget {
//   final TeacherController controller;
//   final double sw;
//   final double lw;
//
//   const SideBar({Key? key, required this.sw, required this.lw, required this.controller});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: sw,
//       color: Colors.blue,
//       child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 63),
//             child: SizedBox(
//               width: lw,
//               child: Image.asset(
//                 'assets/Logo.png', // Ensure correct image path
//               ),
//             ),
//           ),
//           SizedBox(height: 8,),
//           Padding(
//             padding: const EdgeInsets.all(15),
//             child: Buttn(color: Colors.white,child: Text('Teacher',style: TextStyle(color: Colors.blue,fontSize: 22,fontWeight: FontWeight.bold),),onPressed: () {
//               router.go('/teacher');
//
//             }, h: '20',),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(15),
//             child: Buttn(color: Colors.white,child: Text('Teacher',style: TextStyle(color: Colors.blue,fontSize: 22,fontWeight: FontWeight.bold),),onPressed: () {
//               router.go('/teacher');
//
//             }, h: '20',),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(15),
//             child: Buttn(color: Colors.white,child: Text('Teacher',style: TextStyle(color: Colors.blue,fontSize: 22,fontWeight: FontWeight.bold),),onPressed: () {
//               router.go('/teacher');
//
//             }, h: '20',),
//           ),
//         ],
//       ),
//     );
//   }
// }
