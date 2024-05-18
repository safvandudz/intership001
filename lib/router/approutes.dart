import 'package:flutter/cupertino.dart';
import 'package:get_storage/get_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:intership01/screens/teacher/teacherScreen.dart';
import '../Screens/auth/login/login.dart';
import '../screens/home/home.dart';
import '../screens/student/lists/data.dart';
import '../screens/student/view.dart';

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

    return '/teacher';
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
        // HomeScreen( child :TeacherScreen());
        return  HomeScreen( child :DataList());
      },
    ),


    GoRoute(
      path: '/teacher',
      builder: (BuildContext context, GoRouterState state) {
        // HomeScreen( child :TeacherScreen());
        return  HomeScreen( child :TeacherScreen());
      },
    ),
    GoRoute(
      path: '/student',
      builder: (BuildContext context, GoRouterState state) {
        return HomeScreen( child :StudentsScreen());
      },
    ),
  ],
);
// TeacherPage