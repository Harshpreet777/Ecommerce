import 'package:ecommerce/util/color_constants.dart';
import 'package:ecommerce/util/string_constants.dart';
import 'package:ecommerce/util/textstyle_constants.dart';
import 'package:flutter/material.dart';

class CommonStackClass extends StatefulWidget {
  const CommonStackClass({super.key});

  @override
  State<CommonStackClass> createState() => _ComoonStackClassState();
}

class _ComoonStackClassState extends State<CommonStackClass> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Stack(alignment: Alignment.topCenter, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                height: 200,
                decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/bgimage.png'))),
              ),
            ),
            Positioned(
              top: 30,
              left: 16,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Text(
                  StringConstant.off,
                  style: TextStyleConstant.montserrat36w700
                      .copyWith(fontSize: 22, color: Colors.white),
                ),
              ),
            ),
            Positioned(
              top: 62,
              left: 16,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Text(
                  StringConstant.stacktext1,
                  style: TextStyleConstant.montserrat12w500
                      .copyWith(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            Positioned(
              top: 82,
              left: 16,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Text(
                  StringConstant.stacktext2,
                  style: TextStyleConstant.montserrat12w500
                      .copyWith(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            Positioned(
              top: 132,
              left: 27,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: ColorConstant.white),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: [
                    Text(
                      StringConstant.shopnow,
                      style: TextStyleConstant.montserrat36w700
                          .copyWith(fontSize: 16, color: Colors.white),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: ColorConstant.white,
                    )
                  ],
                ),
              ),
            )
          ]),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Container(
            color: Colors.transparent,
            child: InkWell(child: Image.asset('assets/images/group_icon.png')),
          ),
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: ColorConstant.blue4392F9,
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
              Positioned(
                top: 30,
                left: 30,
                child: Text(
                  StringConstant.stack2text1,
                  style: TextStyleConstant.montserrat12w600
                      .copyWith(fontSize: 16, color: ColorConstant.white),
                ),
              ),
              Positioned(
                top: 60,
                left: 60,
                child: Text(
                  StringConstant.stack2text2,
                  style: TextStyleConstant.montserrat12w500
                      .copyWith(color: ColorConstant.white, fontSize: 14),
                ),
              ),
              Positioned(
                  top: 60,
                  left: 30,
                  child: Icon(
                    Icons.alarm,
                    color: ColorConstant.white,
                  )),
                  Positioned(
                    top: 30,
                    right: 30,
                    child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                      border: Border.all(color: ColorConstant.white),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                                  child: Row(
                    children: [
                      Text(
                        StringConstant.stack2text3,
                        style: TextStyleConstant.montserrat36w700
                            .copyWith(fontSize: 16, color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: ColorConstant.white,
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