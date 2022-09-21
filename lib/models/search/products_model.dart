import 'package:qtec_asssessment/models/search/product_details.dart';

class Products {
  Products({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  int count;
  String next;
  String previous;
  List<Result> results;

  factory Products.fromJson(Map<String, dynamic> json) => Products(
    count: json["count"],
    next: json["next"],
    previous: json["previous"],
    results:
    List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "next": next,
    "previous": previous,
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
  };
}