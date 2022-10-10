import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qtec_asssessment/bloc/search/search_bloc.dart';
import 'package:qtec_asssessment/constants.dart';
import 'package:qtec_asssessment/views/screens/products/components/arguments.dart';
import 'package:qtec_asssessment/views/utils/search_bar.dart';

import '../../../bloc/navigation/nav_bloc.dart';
import 'components/search_loaded_state.dart';
import '../../utils/search_loading_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SearchBloc searchBloc = SearchBloc();
  TextEditingController searchController = TextEditingController();
  String limit = '10';

  @override
  void initState() {
    // TODO: implement initState
    searchController.text = 'rice';
    searchBloc.add(GetSearchProductList(limit, searchController.text));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<NavBloc, NavState>(
      listener: (context, state) {
        if (state is ProductState) {
          Navigator.of(context)
              .pushNamed('/products', arguments: Arguments(slug: state.slug));
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: hexToColor(bgColor),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 7),
            child: Column(
              children: [
                SearchBar(searchController: searchController),
                BlocProvider(
                  create: (_) => searchBloc,
                  child: BlocListener<SearchBloc, SearchState>(
                    listener: (context, state) {
                      if (state is SearchError) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(state.message!),
                          ),
                        );
                      }
                    },
                    child: BlocBuilder<SearchBloc, SearchState>(
                        builder: (context, state) {
                      if (state is SearchInitial || state is SearchLoading) {
                        return const LoadingState();
                      } else if (state is SearchLoaded) {
                        return SearchLoadedState(
                          model: state.searchApiResponse.data!,
                        );
                      } else {
                        return Container();
                      }
                    }),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
