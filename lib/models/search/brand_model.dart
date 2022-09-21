import 'package:qtec_asssessment/models/search/values_model.dart';

class Brand {
  Brand({
    required this.name,
    required this.image,
    required this.headerImage,
    required this.slug,
  });

  Name name;
  String image;
  dynamic headerImage;
  Slug slug;

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
    name: nameValues.map[json["name"]]!,
    image: json["image"],
    headerImage: json["header_image"],
    slug: slugValues.map[json["slug"]]!,
  );

  Map<String, dynamic> toJson() => {
    "name": nameValues.reverse[name],
    "image": image,
    "header_image": headerImage,
    "slug": slugValues.reverse[slug],
  };
}