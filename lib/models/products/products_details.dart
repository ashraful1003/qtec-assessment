import 'dart:convert';

import '../search/search_data_model.dart';

ProductDetailsModel productDetailsModelFromJson(String str) => ProductDetailsModel.fromJson(json.decode(str));

String productDetailsModelToJson(ProductDetailsModel data) => json.encode(data.toJson());

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

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) => ProductDetailsModel(
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

// class Brand {
//   Brand({
//     required this.name,
//     required this.image,
//     required this.headerImage,
//     required this.slug,
//   });
//
//   String name;
//   String image;
//   dynamic headerImage;
//   String slug;
//
//   factory Brand.fromJson(Map<String, dynamic> json) => Brand(
//     name: json["name"],
//     image: json["image"],
//     headerImage: json["header_image"],
//     slug: json["slug"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "name": name,
//     "image": image,
//     "header_image": headerImage,
//     "slug": slug,
//   };
// }
//
// class Charge {
//   Charge({
//     required this.bookingPrice,
//     required this.currentCharge,
//     required this.discountCharge,
//     required this.sellingPrice,
//     required this.profit,
//     required this.isEvent,
//     required this.eventId,
//     required this.highlight,
//     required this.highlightId,
//     required this.groupping,
//     required this.grouppingId,
//     required this.campaignSectionId,
//     required this.campaignSection,
//     required this.message,
//   });
//
//   int bookingPrice;
//   int currentCharge;
//   dynamic discountCharge;
//   int sellingPrice;
//   int profit;
//   bool isEvent;
//   dynamic eventId;
//   bool highlight;
//   dynamic highlightId;
//   bool groupping;
//   dynamic grouppingId;
//   dynamic campaignSectionId;
//   bool campaignSection;
//   dynamic message;
//
//   factory Charge.fromJson(Map<String, dynamic> json) => Charge(
//     bookingPrice: json["booking_price"],
//     currentCharge: json["current_charge"],
//     discountCharge: json["discount_charge"],
//     sellingPrice: json["selling_price"],
//     profit: json["profit"],
//     isEvent: json["is_event"],
//     eventId: json["event_id"],
//     highlight: json["highlight"],
//     highlightId: json["highlight_id"],
//     groupping: json["groupping"],
//     grouppingId: json["groupping_id"],
//     campaignSectionId: json["campaign_section_id"],
//     campaignSection: json["campaign_section"],
//     message: json["message"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "booking_price": bookingPrice,
//     "current_charge": currentCharge,
//     "discount_charge": discountCharge,
//     "selling_price": sellingPrice,
//     "profit": profit,
//     "is_event": isEvent,
//     "event_id": eventId,
//     "highlight": highlight,
//     "highlight_id": highlightId,
//     "groupping": groupping,
//     "groupping_id": grouppingId,
//     "campaign_section_id": campaignSectionId,
//     "campaign_section": campaignSection,
//     "message": message,
//   };
// }
//
// class Image {
//   Image({
//     required this.id,
//     required this.image,
//     required this.isPrimary,
//     required this.product,
//   });
//
//   int id;
//   String image;
//   bool isPrimary;
//   int product;
//
//   factory Image.fromJson(Map<String, dynamic> json) => Image(
//     id: json["id"],
//     image: json["image"],
//     isPrimary: json["is_primary"],
//     product: json["product"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "image": image,
//     "is_primary": isPrimary,
//     "product": product,
//   };
// }
