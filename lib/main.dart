import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qtec_asssessment/constants.dart';
import 'package:qtec_asssessment/repositories/search_repository.dart';
import 'package:qtec_asssessment/views/screens/home/home_page.dart';
import 'package:qtec_asssessment/views/screens/products/products_page.dart';

import 'bloc/navigation/nav_bloc.dart';

void main() {
  runApp(BlocProvider(
      create: (BuildContext context) => NavBloc(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qtec Assessment',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: hexToColor(bgColor),
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/products': (context) => const ProductsPage(),
      },
      initialRoute: '/',
    );
  }
}
