import 'package:qtec_asssessment/models/search/product_details.dart';

class Products {
  Products({
    this.count,
    this.next,
    this.previous,
    this.searchProducts,
  });

  int? count;
  String? next, previous;
  List<SearchProducts>? searchProducts;

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        searchProducts: List<SearchProducts>.from(
            json["results"].map((x) => SearchProducts.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results": List<dynamic>.from(searchProducts!.map((x) => x.toJson())),
      };
}
