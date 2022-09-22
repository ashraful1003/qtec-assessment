part of 'products_bloc.dart';

abstract class ProductsEvent extends Equatable {
  const ProductsEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class GetProductDetailsList extends ProductsEvent {}
