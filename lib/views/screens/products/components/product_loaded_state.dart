import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:qtec_asssessment/constants.dart';
import 'package:qtec_asssessment/models/products/products_details_model.dart';

class ProductLoadedState extends StatelessWidget {
  const ProductLoadedState({Key? key, required this.detailsModel})
      : super(key: key);

  final ProductDetailsModel detailsModel;

  @override
  Widget build(BuildContext context) {
    var value = detailsModel.data;
    return Column(
      children: [
        Container(
          height: 300,
          width: 300,
          child: PageView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Image.network(value.image);
              }),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value.productName,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text(
                    '$brandName ',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: hexToColor(color2)),
                  ),
                  Text(
                    value.brand.name,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Container(
                    height: 6,
                    width: 6,
                    margin: const EdgeInsets.symmetric(horizontal: 8.5),
                    decoration: BoxDecoration(
                      color: hexToColor(color1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  Text(
                    '$distributor ',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: hexToColor(color2)),
                  ),
                  Text(
                    value.seller,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Container(
                height: 115,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 16),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextOne(buyPrice),
                        TextOne(' ৳ ${value.charge.currentCharge.toString()}'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextTwo(sellPrice),
                        TextTwo(' ৳ ${value.charge.sellingPrice.toString()}'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextTwo('$profitঃ'),
                        TextTwo(' ৳ ${value.charge.profit.toString()}'),
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                'বিস্তারিত',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Html(data: value.description.toString()),
            ],
          ),
        ),
      ],
    );
  }

  TextOne(String value) {
    return Text(
      value,
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w600, color: hexToColor(color1)),
    );
  }

  TextTwo(String value) {
    return Text(
      value,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    );
  }
}
