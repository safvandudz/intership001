import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:intership01/router/approutes.dart';
import 'package:url_strategy/url_strategy.dart';
void main() async{
  setPathUrlStrategy();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
