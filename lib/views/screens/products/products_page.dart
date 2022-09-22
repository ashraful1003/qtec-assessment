import 'package:flutter/material.dart';
import 'package:qtec_asssessment/constants.dart';
import 'package:qtec_asssessment/views/screens/products/components/arguments.dart';
import 'package:qtec_asssessment/views/utils/search_bar.dart';

class ProductsPage extends StatelessWidget {
  ProductsPage({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Arguments;
    print(args.slug);
    return Scaffold(
      appBar:
      AppBar(
        backgroundColor: hexToColor(bgColor),
        elevation: 0.0,
        title: Text(
          productBar,
          style: const TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      )
      ,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery
              .of(context)
              .size
              .width,
          margin: const EdgeInsets.symmetric(horizontal: 7),
          child: Column(
            children: [
              SearchBar(searchController: searchController),
            ],
          ),
        )
        ,
      )
      ,
    );
  }
}
