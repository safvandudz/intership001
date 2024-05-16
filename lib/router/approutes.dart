// import 'package:flutter/cupertino.dart';
// import 'package:go_router/go_router.dart';
//
// import '../Screens/Student/create/view.dart';
// import '../Screens/auth/login/login.dart';
//
// GlobalKey<NavigatorState> navigatorKey= GlobalKey();
// final GoRouter router = GoRouter(
//
//   navigatorKey: navigatorKey,
//   redirect: (context, state) {
//     print(state.fullPath);
//     print(state.uri);
//     print(state.name);
//     ///token login dont go
//     ///studensScreen
//     ///--mainAppController has token null
// ///token not present go to login only
//   },
//   initialLocation: '/login',
//   routes: <RouteBase>[
//     GoRoute(path: '/login',builder: (context, state) {
//       return const Login();
//
//     },),
//     GoRoute(
//       path: '/students',
//       builder: (BuildContext context, GoRouterState state) {
//         return const StudentsScreen();
//       },
//       routes: <RouteBase>[
//         GoRoute(
//           path: 'create',
//           name: "createStudent",
//           builder: (BuildContext context, GoRouterState state) {
//             print(state.uri.query.toString());
//             return const StudentsScreen();
//           },
//         ),
//         GoRoute(
//           path: 'edit',
//           name: "editStudent",
//           builder: (BuildContext context, GoRouterState state) {
//             print(state.uri.query.toString());
//             return const StudentsScreen();
//           },
//         ),
//       ],
//     ),
//   ],
// );

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:go_router/go_router.dart';
import '../Screens/Student/create/view.dart';
import '../Screens/auth/login/login.dart';
import '../app_state/main_app_controller.dart';
import '../screens/teacher/teacher_list.dart';
 // Import your MainAppController

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

final GoRouter router = GoRouter(
  navigatorKey: navigatorKey,

    ///token login dont go
    ///studensScreen
    ///--mainAppController has token null
///token not present go to login only

  redirect: (context, state)async {

 var token = GetStorage().read('token') ?? "";

    print(state.fullPath);
    print(state.uri);
    print(state.name);
    if(token.isEmpty){
   return '/login';

    }else if(token.isNotEmpty&& state.fullPath=="/login") {

    return '/students';
    }
    else{
      return null;
    }

    // if (state.name != '/login' && mainAppController.token.value == null) {
    //   return '/login';
    // } else if (state.name == '/login' && mainAppController.token.value != null) {
    //   return '/students';
    // }

  },


  initialLocation: '/login',
  routes: <RouteBase>[
    GoRoute(
      path: '/login',
      builder: (BuildContext context, GoRouterState state) {
        return const Login();
      },
    ),
    GoRoute(
      path: '/students',
      builder: (BuildContext context, GoRouterState state) {
        return const StudentsScreen();
      },
    ),
    GoRoute(
      path: '/teacher',
      builder: (BuildContext context, GoRouterState state) {
        return  TeacherPage();
      },
    ),
  ],
);
// TeacherPage