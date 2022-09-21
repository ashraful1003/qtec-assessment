import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';
import 'package:qtec_asssessment/models/api_response.dart';
import 'package:qtec_asssessment/models/search/search_model.dart';
import 'package:qtec_asssessment/repositories/search_repository.dart';

part 'search_event.dart';

part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchInitial()) {
    final SearchRepository repository = SearchRepository();
    on<SearchEvent>((event, emit) async {
      // TODO: implement event handler
      String limit = '10', searchWord = 'rice';
      try {
        emit(SearchLoading());
        final productsList =
            await repository.fetchSearchProductsList(limit, searchWord);
        emit(SearchLoaded(productsList));
        if (productsList.error) {
          emit(SearchError(message: productsList.errorMessage));
        }
      } on NetworkError {
        emit(const SearchError(message: 'Failed to fetch data!'));
      }
    });
  }
}
