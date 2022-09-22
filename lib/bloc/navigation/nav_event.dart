part of 'nav_bloc.dart';

abstract class NavEvent extends Equatable {
  const NavEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class HomeEvent extends NavEvent {}

class ProductEvent extends NavEvent {
  final String slug;

  const ProductEvent(this.slug);
}
