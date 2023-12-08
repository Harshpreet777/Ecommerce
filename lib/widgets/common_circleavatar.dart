import 'package:ecommerce/util/color_constants.dart';
import 'package:ecommerce/util/string_constants.dart';
import 'package:ecommerce/util/textstyle_constants.dart';
import 'package:flutter/material.dart';

class CircleAvatarClass extends StatefulWidget {
  const CircleAvatarClass({super.key});

  @override
  State<CircleAvatarClass> createState() => _CircleAvatarClassState();
}

class _CircleAvatarClassState extends State<CircleAvatarClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8, right: 8),
      decoration: BoxDecoration(
          color: ColorConstant.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const CircleAvatar(
                  maxRadius: 32,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/makeup.png'),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.009,
                ),
                Text(
                  StringConstant.beauty,
                  style:
                      TextStyleConstant.montserrat12w500.copyWith(fontSize: 12),
                )
              ],
            ),
            Column(
              children: [
                const CircleAvatar(
                  maxRadius: 32,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/fashion.png'),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.009,
                ),
                Text(
                  StringConstant.fashion,
                  style:
                      TextStyleConstant.montserrat12w500.copyWith(fontSize: 12),
                )
              ],
            ),
            Column(
              children: [
                const CircleAvatar(
                  maxRadius: 32,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/kids.png'),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.009,
                ),
                Text(
                  StringConstant.kids,
                  style:
                      TextStyleConstant.montserrat12w500.copyWith(fontSize: 12),
                )
              ],
            ),
            Column(
              children: [
                const CircleAvatar(
                  maxRadius: 32,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/mens.png'),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.009,
                ),
                Text(
                  StringConstant.mens,
                  style:
                      TextStyleConstant.montserrat12w500.copyWith(fontSize: 12),
                )
              ],
            ),
            Column(
              children: [
                const CircleAvatar(
                  maxRadius: 32,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/womens.png'),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.009,
                ),
                Text(
                  StringConstant.womens,
                  style:
                      TextStyleConstant.montserrat12w500.copyWith(fontSize: 12),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
