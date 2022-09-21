enum Name { RICE }

final nameValues = EnumValues({"Rice": Name.RICE});

enum Slug { RICE }

final slugValues = EnumValues({"rice": Slug.RICE});

enum CommissionType { PERCENT }

final commissionTypeValues = EnumValues({"Percent": CommissionType.PERCENT});

enum CreatedBy { QTECSL }

final createdByValues = EnumValues({"qtecsl": CreatedBy.QTECSL});

enum Seller { SUPPLY_LINE }

final sellerValues = EnumValues({"SupplyLine": Seller.SUPPLY_LINE});

enum Specification { EMPTY }

final specificationValues = EnumValues({"<|>": Specification.EMPTY});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap!;
  }
}