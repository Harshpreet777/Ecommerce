import 'package:ecommerce/util/color_constants.dart';
import 'package:ecommerce/util/string_constants.dart';
import 'package:ecommerce/util/textstyle_constants.dart';
import 'package:ecommerce/widgets/common_elevatedbutton.dart';
import 'package:ecommerce/widgets/common_outlinebutton.dart';
import 'package:ecommerce/widgets/common_textformfield.dart';
import 'package:flutter/material.dart';

class CreateAccountPageClass extends StatefulWidget {
  const CreateAccountPageClass({super.key});

  @override
  State<CreateAccountPageClass> createState() => _CreateAccountPageClassState();
}

class _CreateAccountPageClassState extends State<CreateAccountPageClass> {
  final formkey = GlobalKey();
  bool isVisible = true;
  bool isConfirmPassVisible = true;
  String name = '';
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Container(
              padding: const EdgeInsets.only(left: 29, right: 26),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      StringConstant.accountcreate,
                      style: TextStyleConstant.montserrat36w700,
                    ),
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  TextFormFieldWidget(
                    outlinedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    iconcolor: ColorConstant.black,
                    color: ColorConstant.grey,
                    hinttext: StringConstant.usernamelhint,
                    obscuretext: false,
                    image: (Icons.person_rounded),
                    hintstyle: TextStyleConstant.montserrat12w500
                        .copyWith(fontSize: 13),
                    validator: (value) {
                      String namePattern = r'^[a-z A-Z,.\-]+$';
                      RegExp regExp = RegExp(namePattern);
                      if (value.isEmpty) {
                        return StringConstant.emptymessage;
                      } else if (!regExp.hasMatch(value)) {
                        return StringConstant.usernamemessage;
                      }
                      return null;
                    },
                    onchange: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 31,
                  ),
                  TextFormFieldWidget(
                    outlinedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    iconcolor: ColorConstant.black,
                    color: ColorConstant.grey,
                    controller: passController,
                    hinttext: StringConstant.passhint,
                    hintstyle: TextStyleConstant.montserrat12w500
                        .copyWith(fontSize: 13),
                    obscuretext: isVisible,
                    image: (Icons.lock_rounded),
                    iconimage: isVisible == true
                        ? (Icons.visibility_off_outlined)
                        : (Icons.visibility_outlined),
                    validator: (value) {
                      String pattern =
                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                      RegExp regExp = RegExp(pattern);
                      if (value.isEmpty) {
                        return StringConstant.emptymessage;
                      } else if (!regExp.hasMatch(value)) {
                        return StringConstant.passwordmessage;
                      }

                      return null;
                    },
                    onshowhide: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                  ),
                  const SizedBox(height: 31),
                  TextFormFieldWidget(
                    outlinedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    iconcolor: ColorConstant.black,
                    color: ColorConstant.grey,
                    controller: confirmPassController,
                    hinttext: StringConstant.confirmpasshint,
                    hintstyle: TextStyleConstant.montserrat12w500
                        .copyWith(fontSize: 13),
                    obscuretext: isConfirmPassVisible,
                    image: (Icons.lock_rounded),
                    iconimage: isConfirmPassVisible == true
                        ? (Icons.visibility_off_outlined)
                        : (Icons.visibility_outlined),
                    validator: (value) {
                      // if(value!.isEmpty){
                      //   return StringConstant.emptymessage;
                      // }
                      if (confirmPassController.text != passController.text) {
                        return StringConstant.confirmpassmessage;
                      }
                      return null;
                    },
                    onshowhide: () {
                      setState(() {
                        isConfirmPassVisible = !isConfirmPassVisible;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  Row(
                    children: [
                      Text(
                        StringConstant.byclicking,
                        style: TextStyleConstant.montserrat12w400
                            .copyWith(fontSize: 14),
                      ),
                      GestureDetector(
                        child: Text(
                          StringConstant.register,
                          style: TextStyleConstant.montserrat12w400
                              .copyWith(color: ColorConstant.red, fontSize: 14),
                        ),
                      ),
                      Text(
                        StringConstant.terms,
                        style: TextStyleConstant.montserrat12w400
                            .copyWith(fontSize: 14),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      StringConstant.terms2,
                      style: TextStyleConstant.montserrat12w400
                          .copyWith(fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    child: const ElevatedButtonWidget(
                      text: StringConstant.createaccount,
                      onpress: null,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    StringConstant.continuewith,
                    style: TextStyleConstant.montserrat12w500,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutlinedButtonWidget(
                          iconImage: ('assets/images/google.png')),
                      OutlinedButtonWidget(
                          iconImage: ('assets/images/apple.png')),
                      OutlinedButtonWidget(
                          iconImage: ('assets/images/facebook.png'))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        StringConstant.haveaccount,
                        style: TextStyleConstant.montserrat12w400
                            .copyWith(fontSize: 14),
                      ),
                      GestureDetector(
                        child: Text(
                          StringConstant.login,
                          style: TextStyleConstant.montserrat12w600.copyWith(
                              fontSize: 14,
                              color: ColorConstant.red,
                              decoration: TextDecoration.underline,
                              decorationColor: ColorConstant.red),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
