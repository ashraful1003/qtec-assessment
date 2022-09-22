import 'package:flutter/material.dart';
import 'package:qtec_asssessment/bloc/products/products_bloc.dart';
import 'package:qtec_asssessment/constants.dart';
import 'package:qtec_asssessment/views/screens/products/components/arguments.dart';
import 'package:qtec_asssessment/views/utils/search_bar.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  ProductsBloc productsBloc = ProductsBloc();
  TextEditingController searchController = TextEditingController();


  @override
  void initState() {
    // TODO: implement initState
    productsBloc.add(GetProductDetailsList());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: hexToColor(bgColor),
        elevation: 0.0,
        title: Text(
          productBar,
          style: const TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 7),
                child: SearchBar(searchController: searchController)),
            Container(),

          ],
        ),
      ),
    );
  }
}
