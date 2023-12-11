import 'package:ecommerce/util/color_constants.dart';
import 'package:ecommerce/util/string_constants.dart';
import 'package:ecommerce/util/textstyle_constants.dart';
import 'package:ecommerce/widgets/common_star_rating.dart';
import 'package:flutter/material.dart';

class CommonConatinerClass extends StatefulWidget {
  const CommonConatinerClass({super.key});

  @override
  State<CommonConatinerClass> createState() => _CommonConatinerClassState();
}

class _CommonConatinerClassState extends State<CommonConatinerClass> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.43,
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  image: const DecorationImage(
                      image:
                          AssetImage('assets/images/women_printed_kurta.png'),
                      fit: BoxFit.cover)),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/hrx_shoes.png'),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                color: ColorConstant.white,
                width: MediaQuery.of(context).size.width * 0.43,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 5),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          StringConstant.womendress,
                          style: TextStyleConstant.montserrat12w600
                              .copyWith(fontSize: 12),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        StringConstant.women1,
                        style: TextStyleConstant.montserrat12w500
                            .copyWith(fontSize: 10),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          StringConstant.womendresscost,
                          style: TextStyleConstant.montserrat12w600
                              .copyWith(fontSize: 17),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(StringConstant.womendresscost,
                            style: TextStyle(
                                fontSize: 17,
                                color: ColorConstant.greyBBBBBB,
                                decoration: TextDecoration.lineThrough)),
                      ),
                    ),
                    Row(
                      children: [
                        const Align(
                            alignment: Alignment.topLeft,
                            child: StarRatingClass()),
                        Text(
                          '56890',
                          style: TextStyle(color: ColorConstant.greyBBBBBB),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 16),
              child: Container(
                color: ColorConstant.white,
                width: MediaQuery.of(context).size.width * 0.43,
                // padding: const EdgeInsets.all(4),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 5),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          StringConstant.shoes,
                          style: TextStyleConstant.montserrat12w600
                              .copyWith(fontSize: 12),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Text(
                        StringConstant.shoes1,
                        style: TextStyleConstant.montserrat12w500
                            .copyWith(fontSize: 11),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          StringConstant.shoescost,
                          style: TextStyleConstant.montserrat12w600
                              .copyWith(fontSize: 17),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          StringConstant.shoesogcost,
                          style: TextStyle(
                              color: ColorConstant.greyBBBBBB,
                              decoration: TextDecoration.lineThrough,
                              fontSize: 17),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Align(
                            alignment: Alignment.bottomLeft,
                            child: StarRatingClass()),
                        Text(
                          '344567',
                          style: TextStyle(color: ColorConstant.greyBBBBBB),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
