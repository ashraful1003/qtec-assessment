import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:qtec_asssessment/constants.dart';
import 'package:qtec_asssessment/repositories/search_repository.dart';
import 'package:qtec_asssessment/views/screens/home/home_page.dart';

void setupLocator() {
  GetIt.instance.registerLazySingleton(() => SearchRepository());
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qtec Assessment',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: hexToColor(bgColor),
      ),
      home: HomePage(),
    );
  }
}
