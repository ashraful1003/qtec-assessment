import 'dart:convert';

import 'products_data_model.dart';

ProductDetailsModel productDetailsModelFromJson(String str) =>
    ProductDetailsModel.fromJson(json.decode(str));

String productDetailsModelToJson(ProductDetailsModel data) =>
    json.encode(data.toJson());

class ProductDetailsModel {
  ProductDetailsModel({
    required this.status,
    required this.statusCode,
    required this.data,
    required this.error,
  });

  String status;
  int statusCode;
  Data data;
  String error;

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      ProductDetailsModel(
        status: json["status"],
        statusCode: json["statusCode"],
        data: Data.fromJson(json["data"]),
        error: json["error"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "statusCode": statusCode,
        "data": data.toJson(),
        "error": error,
      };
}
