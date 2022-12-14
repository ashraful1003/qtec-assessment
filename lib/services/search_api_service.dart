import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:qtec_asssessment/models/api_response.dart';
import 'package:qtec_asssessment/models/search/search_model.dart';

class SearchApiService {
  Future<APIResponse<SearchModel>> fetchSearchProductsList(
      String limit, String searchWord) async {
    try {
      var myHeaders = {
        'Content-Type': 'application/json',
      };

      Map<String, String> searching = {
        'limit': limit,
        'search': searchWord,
      };

      final apiUrl = Uri.https("panel.supplyline.network",
          "/api/product/search-suggestions", searching);

      return http.get(apiUrl, headers: myHeaders).then((value) {
        if (value.statusCode == 200) {
          final jsonData = json.decode(utf8.decode(value.bodyBytes));
          SearchModel model = SearchModel.fromJson(jsonData);
          return APIResponse(data: model);
        }
        return APIResponse<SearchModel>(
            error: true, errorMessage: 'An Error Occurred');
      }).catchError((e) =>
          APIResponse<SearchModel>(error: true, errorMessage: e.toString()));
    } catch (error) {
      return APIResponse<SearchModel>(
          error: true, errorMessage: 'An Error Occurred');
    }
  }
}
