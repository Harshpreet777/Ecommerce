import 'package:ecommerce/util/color_constants.dart';
import 'package:ecommerce/util/string_constants.dart';
import 'package:ecommerce/util/textstyle_constants.dart';
import 'package:ecommerce/widgets/common_circleavatar.dart';
import 'package:ecommerce/widgets/common_iconbutton.dart';
import 'package:ecommerce/widgets/common_textformfield.dart';
import 'package:flutter/material.dart';

class HomePageClass extends StatefulWidget {
  const HomePageClass({super.key});

  @override
  State<HomePageClass> createState() => _HomePageClassState();
}

class _HomePageClassState extends State<HomePageClass> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.whiteF9F9F9,
      key: scaffoldKey,
      drawer: const Drawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButtonClass(
            onpress: () {
              scaffoldKey.currentState?.openDrawer();
            },
            images: ('assets/images/3hori_lines_icon.png')),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/appicon.png'),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.02,
            ),
            const Text(
              StringConstant.stylish,
              style: TextStyleConstant.librecalson20w700,
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child:
                IconButtonClass(size: 20, images: ('assets/images/avatar.png')),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Card(
                  elevation: 2,
                  shadowColor: Colors.transparent,
                  child: TextFormFieldWidget(
                      outLineInputBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Color(0xFFFFFFFF))),
                      outlinedBorder: const OutlineInputBorder(),
                      iconcolor: ColorConstant.greyBBBBBB,
                      suffixiconcolor: ColorConstant.greyBBBBBB,
                      color: ColorConstant.white,
                      hinttext: StringConstant.search,
                      obscuretext: false,
                      image: (Icons.search),
                      hintstyle: TextStyleConstant.montserrat12w400
                          .copyWith(fontSize: 16)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      StringConstant.featured,
                      style: TextStyleConstant.montserrat12w600
                          .copyWith(fontSize: 20),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.09,
                    ),
                    Material(
                      elevation: 2,
                      color: ColorConstant.white,
                      shadowColor: Colors.transparent,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(9))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              StringConstant.sort,
                              style: TextStyleConstant.montserrat12w500
                                  .copyWith(fontSize: 14),
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            InkWell(
                                child: Image.asset(
                                    'assets/images/updown_arrow_icon.png'))
                          ],
                        ),
                      ),
                    ),
                    Material(
                      elevation: 2,
                      color: ColorConstant.white,
                      shadowColor: Colors.transparent,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(9))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              StringConstant.filter,
                              style: TextStyleConstant.montserrat12w500
                                  .copyWith(fontSize: 14),
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            InkWell(
                                child: Image.asset(
                                    'assets/images/filter_icon.png'))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.only(left: 16),
              child: const CircleAvatarClass()),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
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
                  height: 100,
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
      ),
    );
  }
}
