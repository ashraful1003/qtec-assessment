import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:qtec_asssessment/constants.dart';
import 'package:qtec_asssessment/models/api_response.dart';
import 'package:qtec_asssessment/models/products/products_details_model.dart';

class ProductApiService {
  Future<APIResponse<ProductDetailsModel>> fetchProductDetails(
      String slug) async {
    try {
      var myHeaders = {
        'Content-Type': 'application/json',
      };

      Uri apiUrl = Uri.parse('$apiRoot$slug');

      return http.get(apiUrl, headers: myHeaders).then((value) {
        if (value.statusCode == 200) {
          final jsonData = json.decode(utf8.decode(value.bodyBytes));
          ProductDetailsModel model = ProductDetailsModel.fromJson(jsonData);
          return APIResponse(data: model);
        }
        return APIResponse<ProductDetailsModel>(
            error: true, errorMessage: 'An Error Occurred');
      }).catchError((e) => APIResponse<ProductDetailsModel>(
          error: true, errorMessage: e.toString()));
    } catch (error) {
      return APIResponse<ProductDetailsModel>(
          error: true, errorMessage: 'An Error Occurred');
    }
  }
}
