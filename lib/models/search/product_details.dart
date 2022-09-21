import 'package:qtec_asssessment/models/search/values_model.dart';

import 'brand_model.dart';
import 'charge_model.dart';
import 'image_model.dart';

class Result {
  Result({
    required this.id,
    required this.brand,
    required this.image,
    required this.charge,
    required this.images,
    required this.slug,
    required this.productName,
    required this.model,
    required this.commissionType,
    required this.amount,
    required this.tag,
    required this.description,
    required this.note,
    required this.embaddedVideoLink,
    required this.maximumOrder,
    required this.stock,
    required this.isBackOrder,
    required this.specification,
    required this.warranty,
    required this.preOrder,
    required this.productReview,
    required this.isSeller,
    required this.isPhone,
    required this.willShowEmi,
    required this.badge,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    required this.language,
    required this.seller,
    required this.combo,
    required this.createdBy,
    required this.updatedBy,
    required this.category,
    required this.relatedProduct,
    required this.filterValue,
  });

  int id;
  Brand brand;
  String image;
  Charge charge;
  List<Image> images;
  String slug;
  String productName;
  String model;
  CommissionType commissionType;
  String amount;
  String tag;
  String description;
  String note;
  String embaddedVideoLink;
  int maximumOrder;
  int stock;
  bool isBackOrder;
  Specification specification;
  String warranty;
  bool preOrder;
  int productReview;
  bool isSeller;
  bool isPhone;
  bool willShowEmi;
  dynamic badge;
  bool isActive;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic language;
  Seller seller;
  dynamic combo;
  CreatedBy createdBy;
  dynamic updatedBy;
  List<int> category;
  List<dynamic> relatedProduct;
  List<dynamic> filterValue;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        brand: Brand.fromJson(json["brand"]),
        image: json["image"],
        charge: Charge.fromJson(json["charge"]),
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        slug: json["slug"],
        productName: json["product_name"],
        model: json["model"],
        commissionType: commissionTypeValues.map[json["commission_type"]]!,
        amount: json["amount"],
        tag: json["tag"],
        description: json["description"],
        note: json["note"],
        embaddedVideoLink: json["embadded_video_link"],
        maximumOrder: json["maximum_order"],
        stock: json["stock"],
        isBackOrder: json["is_back_order"],
        specification: specificationValues.map[json["specification"]]!,
        warranty: json["warranty"],
        preOrder: json["pre_order"],
        productReview: json["product_review"],
        isSeller: json["is_seller"],
        isPhone: json["is_phone"],
        willShowEmi: json["will_show_emi"],
        badge: json["badge"],
        isActive: json["is_active"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        language: json["language"],
        seller: sellerValues.map[json["seller"]]!,
        combo: json["combo"],
        createdBy: createdByValues.map[json["created_by"]]!,
        updatedBy: json["updated_by"],
        category: List<int>.from(json["category"].map((x) => x)),
        relatedProduct:
            List<dynamic>.from(json["related_product"].map((x) => x)),
        filterValue: List<dynamic>.from(json["filter_value"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "brand": brand.toJson(),
        "image": image,
        "charge": charge.toJson(),
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "slug": slug,
        "product_name": productName,
        "model": model,
        "commission_type": commissionTypeValues.reverse[commissionType],
        "amount": amount,
        "tag": tag,
        "description": description,
        "note": note,
        "embadded_video_link": embaddedVideoLink,
        "maximum_order": maximumOrder,
        "stock": stock,
        "is_back_order": isBackOrder,
        "specification": specificationValues.reverse[specification],
        "warranty": warranty,
        "pre_order": preOrder,
        "product_review": productReview,
        "is_seller": isSeller,
        "is_phone": isPhone,
        "will_show_emi": willShowEmi,
        "badge": badge,
        "is_active": isActive,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "language": language,
        "seller": sellerValues.reverse[seller],
        "combo": combo,
        "created_by": createdByValues.reverse[createdBy],
        "updated_by": updatedBy,
        "category": List<dynamic>.from(category.map((x) => x)),
        "related_product": List<dynamic>.from(relatedProduct.map((x) => x)),
        "filter_value": List<dynamic>.from(filterValue.map((x) => x)),
      };
}
