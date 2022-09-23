class Brand {
  Brand({
    required this.name,
    required this.image,
    // required this.headerImage,
    // required this.slug,
  });

  String name;
  String image;
  // String headerImage;
  // String slug;

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        name: json["name"],
        image: json["image"],
        // headerImage: json["header_image"],
        // slug: json["slug"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        // "header_image": headerImage,
        // "slug": slug,
      };
}
