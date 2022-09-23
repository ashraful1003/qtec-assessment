import 'package:carousel_slider/carousel_slider.dart';
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
        CarouselSlider.builder(
          options: CarouselOptions(
              viewportFraction: 0.75, enlargeCenterPage: true, height: 300),
          itemCount: 3,
          itemBuilder: (context, index, realIndex) {
            return buildSlider(value.image);
          },
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.fromLTRB(15, 32, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value.productName,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
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
                margin: const EdgeInsets.only(top: 16),
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
                        textOne(buyPrice),
                        textOne(' ৳ ${value.charge.currentCharge.toString()}'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        textTwo(sellPrice),
                        textTwo(' ৳ ${value.charge.sellingPrice.toString()}'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        textTwo('$profitঃ'),
                        textTwo(' ৳ ${value.charge.profit.toString()}'),
                      ],
                    ),
                  ],
                ),
              ),
              const Text(
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

  textOne(String value) {
    return Text(
      value,
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w600, color: hexToColor(color1)),
    );
  }

  textTwo(String value) {
    return Text(
      value,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    );
  }

  buildSlider(String url) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(image: NetworkImage(url)),
      ),
    );
  }
}
