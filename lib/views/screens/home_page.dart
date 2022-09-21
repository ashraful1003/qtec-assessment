import 'package:flutter/material.dart';
import 'package:qtec_asssessment/bloc/search/search_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final SearchBloc searchBloc = SearchBloc();

  @override
  void initState() {
    // TODO: implement initState
    searchBloc.add(GetSearchProductList());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
