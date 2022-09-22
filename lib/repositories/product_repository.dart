import 'package:qtec_asssessment/models/api_response.dart';
import 'package:qtec_asssessment/models/products/products_details_model.dart';
import 'package:qtec_asssessment/services/product_api_service.dart';

class ProductRepository{
  final _productService = ProductApiService();

  Future<APIResponse<ProductDetailsModel>> fetchProductDetails(String slug){
    return _productService.fetchProductDetails(slug);
  }
}

class NetworkError extends Error {}