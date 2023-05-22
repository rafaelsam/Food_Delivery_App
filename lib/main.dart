import 'package:flutter/material.dart';
import 'package:food_app/pages/food_details.dart';
import 'package:food_app/pages/home.dart';
import 'package:food_app/pages/food_body.dart';
import 'package:food_app/pages/recommended_food.dart';
import 'package:get/get.dart';
import 'package:food_app/routes/route_helper.dart';

import 'package:food_app/helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}
