import 'package:qtec_asssessment/models/search/products_model.dart';

class Data {
  Data({
    required this.products,
  });

  Products products;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    products: Products.fromJson(json["products"]),
  );

  Map<String, dynamic> toJson() => {
    "products": products.toJson(),
  };
}