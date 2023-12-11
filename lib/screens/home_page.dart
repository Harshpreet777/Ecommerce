import 'package:ecommerce/screens/login_page.dart';
import 'package:ecommerce/util/color_constants.dart';
import 'package:ecommerce/util/string_constants.dart';
import 'package:ecommerce/util/textstyle_constants.dart';
import 'package:ecommerce/widgets/common_circleavatar.dart';
import 'package:ecommerce/widgets/common_iconbutton.dart';
import 'package:ecommerce/widgets/common_stackcontainer.dart';
import 'package:ecommerce/widgets/common_star_rating.dart';
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
      drawer: Drawer(
        child: IconButton(
            onPressed: () {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPageClass(),
                    ));
              });
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 25,
          selectedLabelStyle: TextStyleConstant.montserrat12w600,
          unselectedLabelStyle: TextStyleConstant.montserrat12w600,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined), label: 'WishList'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Setting')
          ]),
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorConstant.white,
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(Icons.shopping_cart_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SingleChildScrollView(
        child: Column(
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
            const CommonStackClass(),
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
                          image: AssetImage(
                              'assets/images/women_printed_kurta.png'),
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
                        Text(
                          StringConstant.womendress,
                          style: TextStyleConstant.montserrat12w600
                              .copyWith(fontSize: 12),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          StringConstant.women1,
                          style: TextStyleConstant.montserrat12w500
                              .copyWith(fontSize: 10),
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
                        const Align(
                            alignment: Alignment.topLeft,
                            child: StarRatingClass())
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
                        Text(
                          StringConstant.shoes,
                          style: TextStyleConstant.montserrat12w600
                              .copyWith(fontSize: 12),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          StringConstant.shoes1,
                          style: TextStyleConstant.montserrat12w500
                              .copyWith(fontSize: 10),
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
                        const Align(
                            alignment: Alignment.bottomLeft,
                            child: StarRatingClass())
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
