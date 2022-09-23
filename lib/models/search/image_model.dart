class Image {
  Image({
    required this.id,
    required this.image,
    required this.isPrimary,
    required this.product,
  });

  int id;
  String image;
  bool isPrimary;
  int product;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    id: json["id"],
    image: json["image"],
    isPrimary: json["is_primary"],
    product: json["product"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "is_primary": isPrimary,
    "product": product,
  };
}
