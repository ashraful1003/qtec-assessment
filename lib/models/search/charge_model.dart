class Charge {
  Charge({
    // required this.bookingPrice,
    required this.currentCharge,
    // this.discountCharge,
    required this.sellingPrice,
    required this.profit,
    // required this.isEvent,
    // this.eventId,
    // required this.highlight,
    // this.highlightId,
    // required this.groupping,
    // this.grouppingId,
    // this.campaignSectionId,
    // required this.campaignSection,
    // this.message,
  });

  // int bookingPrice;
  double currentCharge, sellingPrice, profit;

  // dynamic discountCharge;

  // bool isEvent;
  // dynamic eventId;
  // bool highlight;
  // dynamic highlightId;
  // bool groupping;
  // dynamic grouppingId;
  // dynamic campaignSectionId;
  // bool campaignSection;
  // dynamic message;

  factory Charge.fromJson(Map<String, dynamic> json) => Charge(
        // bookingPrice: json["booking_price"],
        currentCharge: json["current_charge"],
        // discountCharge: json["discount_charge"],
        sellingPrice: json["selling_price"],
        profit: json["profit"],
        // isEvent: json["is_event"],
        // eventId: json["event_id"],
        // highlight: json["highlight"],
        // highlightId: json["highlight_id"],
        // groupping: json["groupping"],
        // grouppingId: json["groupping_id"],
        // campaignSectionId: json["campaign_section_id"],
        // campaignSection: json["campaign_section"],
        // message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        // "booking_price": bookingPrice,
        "current_charge": currentCharge,
        // "discount_charge": discountCharge,
        "selling_price": sellingPrice,
        "profit": profit,
        // "is_event": isEvent,
        // "event_id": eventId,
        // "highlight": highlight,
        // "highlight_id": highlightId,
        // "groupping": groupping,
        // "groupping_id": grouppingId,
        // "campaign_section_id": campaignSectionId,
        // "campaign_section": campaignSection,
        // "message": message,
      };
}
