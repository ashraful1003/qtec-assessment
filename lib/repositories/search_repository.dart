import 'package:qtec_asssessment/models/search/search_model.dart';
import 'package:qtec_asssessment/services/search_api_service.dart';

import '../models/api_response.dart';

class SearchRepository {
  final _searchService = SearchApiService();

  Future<APIResponse<SearchModel>> fetchSearchProductsList(
      String limit, String searchWord) {
    return _searchService.fetchSearchProductsList(limit, searchWord);
  }
}

class NetworkError extends Error {}
