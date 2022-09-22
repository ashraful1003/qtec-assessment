import 'package:flutter/material.dart';
import 'package:qtec_asssessment/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key, required this.searchController}) : super(key: key);

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: const EdgeInsets.fromLTRB(7, 0, 7, 16),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      alignment: Alignment.center,
      child: TextField(
        controller: searchController,
        decoration: InputDecoration(
          suffixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          hintText: searchHint,
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 14.0),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
