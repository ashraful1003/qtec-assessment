part of 'nav_bloc.dart';

abstract class NavState extends Equatable {
  const NavState();
  @override
  List<Object> get props => [];
}

class HomeState extends NavState {}

class ProductState extends NavState {
  final String slug;
  const ProductState(this.slug);
}