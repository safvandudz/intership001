import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:intership01/Screens/Student/create/view.dart';
import 'package:url_strategy/url_strategy.dart';

import 'Screens/Student/List.dart';
import 'model/user.dart';
import 'utils/validator.dart';
final RxList<Map<String, dynamic>> items =<Map<String, dynamic>> [
  ///MODEL
  {
    'name': 'Arshak KP',
    'email': 'Arshak@gmail.com',
    'id': 1524552,
    'district': 'Kozhikode',
    'phoneNo': '+91 7034665522',
    'pin': 676122,
    'country': 'India',
  },
  {
    'name': 'Arshak KP',
    'email': 'Arshak@gmail.com',
    'id': 1524552,
    'district': 'Kozhikode',
    'phoneNo': '+91 7034665522',
    'pin': 676122,
    'country': 'India',
  }, {
    'name': 'Arshak KP',
    'email': 'Arshak@gmail.com',
    'id': 1524552,
    'district': 'Kozhikode',
    'phoneNo': '+91 7034665522',
    'pin': 676122,
    'country': 'India',
  }, {
    'name': 'Arshak KP',
    'email': 'Arshak@gmail.com',
    'id': 1524552,
    'district': 'Kozhikode',
    'phoneNo': '+91 7034665522',
    'pin': 676122,
    'country': 'India',
  },
  {
    'name': 'Arshak KP',
    'email': 'Arshak@gmail.com',
    'id': 1524552,
    'district': 'Kozhikode',
    'phoneNo': '+91 7034665522',
    'pin': 676122,
    'country': 'India',
  },{
    'name': 'Arshak KP',
    'email': 'Arshak@gmail.com',
    'id': 1524552,
    'district': 'Kozhikode',
    'phoneNo': '+91 7034665522',
    'pin': 676122,
    'country': 'India',
  },{
    'name': 'Arshak KP',
    'email': 'Arshak@gmail.com',
    'id': 1524552,
    'district': 'Kozhikode',
    'phoneNo': '+91 7034665522',
    'pin': 676122,
    'country': 'India',
  },
].obs;

final GoRouter _router = GoRouter(
  redirect: (context, state) {

  },
  initialLocation: '/students',
  routes: <RouteBase>[
    GoRoute(
      path: '/students',
      builder: (BuildContext context, GoRouterState state) {
        return const StudentsList();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'create',
          name: "createStudent",
          builder: (BuildContext context, GoRouterState state) {
            print(state.uri.query.toString());
            return const StudentsScreen();
          },
        ),
        GoRoute(
          path: 'edit',
          name: "editStudent",
          builder: (BuildContext context, GoRouterState state) {
            print(state.uri.query.toString());
            return const StudentsScreen();
          },
        ),
      ],
    ),
  ],
);

void main() {
  setPathUrlStrategy();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}
