import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:qtec_asssessment/models/api_response.dart';
import 'package:qtec_asssessment/repositories/product_repository.dart';

import '../../models/products/products_details_model.dart';

part 'products_event.dart';

part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(ProductsInitial()) {
    final ProductRepository repository = ProductRepository();
    on<ProductsEvent>((event, emit) async {
      // TODO: implement event handler
      String slug = '-1ifu';
      try {
        emit(ProductsLoading());
        final detailsList = await repository.fetchProductDetails(slug);
        emit(ProductsLoaded(detailsList));
        if (detailsList.error) {
          emit(ProductsError(message: detailsList.errorMessage));
        }
      } on NetworkError {
        emit(const ProductsError(message: 'Failed to fetch data'));
      }
    });
  }
}
