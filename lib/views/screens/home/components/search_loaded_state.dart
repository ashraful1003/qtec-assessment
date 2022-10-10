import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qtec_asssessment/constants.dart';
import 'package:qtec_asssessment/models/search/search_model.dart';
import 'package:qtec_asssessment/views/utils/text_formatting.dart';

import '../../../../bloc/navigation/nav_bloc.dart';

class SearchLoadedState extends StatelessWidget {
  const SearchLoadedState({Key? key, required this.model}) : super(key: key);

  final SearchModel model;

  @override
  Widget build(BuildContext context) {
    var value = model.data.products.results;
    bool isStock = false;
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 320, crossAxisCount: 2),
        itemCount: value.length,
        itemBuilder: (itemContext, index) {
          isStock = value[index].stock > 0 ? true : false;
          return InkWell(
            onTap: () {
              BlocProvider.of<NavBloc>(context)
                  .add(ProductEvent(value[index].slug));
            },
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(7, 7, 7, 20),
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 151,
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              height: 20,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: isStock
                                    ? Colors.transparent
                                    : hexToColor('#FFCCCC'),
                              ),
                              child: Visibility(
                                visible: !isStock,
                                child: Text(
                                  notStock,
                                  style: TextStyle(color: hexToColor(color1)),
                                ),
                              ),
                            ),
                            Container(
                              height: 115,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(value[index].image)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        value[index].productName,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      Row(
                        children: [
                          TextFormatting(data: buy),
                          Text(
                            ' ৳ ${value[index].charge.currentCharge.toString()}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: hexToColor(color1),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              TextFormatting(data: sell),
                              Text(
                                  ' ৳ ${value[index].charge.sellingPrice.toString()}',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: hexToColor(color2),
                                  )),
                            ],
                          ),
                          Row(
                            children: [
                              TextFormatting(data: profit),
                              Text(
                                ' ৳ ${value[index].charge.profit.toString()}',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: hexToColor(color2),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                    left: MediaQuery.of(itemContext).size.width / 5,
                    top: 275,
                    child: Visibility(
                      visible: isStock,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    hexToColor(gradient1),
                                    hexToColor(gradient2),
                                  ]),
                              borderRadius: BorderRadius.circular(90)),
                          child: const Icon(Icons.add, color: Colors.white),
                        ),
                      ),
                    ))
              ],
            ),
          );
        });
  }
}
