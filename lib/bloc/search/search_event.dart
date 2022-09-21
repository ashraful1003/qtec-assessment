part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class GetSearchProductList extends SearchEvent{}