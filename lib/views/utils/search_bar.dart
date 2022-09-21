import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  SearchBar({Key? key, required this.searchController}) : super(key: key);

  TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: TextField(
        controller: searchController,
        decoration: const InputDecoration(
          icon: Icon(Icons.search),
          hintText: "Search for Keynote Speaker",
        ),
      ),
    );
  }
}
