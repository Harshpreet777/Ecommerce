import 'package:ecommerce/screens/create_account_page.dart';
import 'package:ecommerce/screens/forget_pass_page.dart';
import 'package:ecommerce/util/color_constants.dart';
import 'package:ecommerce/util/controller.dart';
import 'package:ecommerce/util/string_constants.dart';
import 'package:ecommerce/util/textstyle_constants.dart';
import 'package:ecommerce/widgets/common_elevatedbutton.dart';
import 'package:ecommerce/widgets/common_outlinebutton.dart';
import 'package:ecommerce/widgets/common_textformfield.dart';
import 'package:flutter/material.dart';

class LoginPageClass extends StatefulWidget {
  const LoginPageClass({super.key});

  @override
  State<LoginPageClass> createState() => _LoginPageClassState();
}

class _LoginPageClassState extends State<LoginPageClass> {
  final formKey = GlobalKey<FormState>();
  String name = '';
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 32, right: 26),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(StringConstant.welcome,
                        style: TextStyleConstant.montserrat36w700),
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(StringConstant.back,
                        style: TextStyleConstant.montserrat36w700),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  TextFormFieldWidget(
                    outlinedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    iconcolor: ColorConstant.black,
                    color: ColorConstant.grey,
                    controller: ControllersClass.userNameController,
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
                    hinttext: StringConstant.usernamelhint,
                    hintstyle: TextStyleConstant.montserrat12w500
                        .copyWith(fontSize: 13),
                    obscuretext: false,
                    image: (Icons.person_rounded),
                  ),
                  const SizedBox(
                    height: 31,
                  ),
                  TextFormFieldWidget(
                    outlinedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    iconcolor: ColorConstant.black,
                    color: ColorConstant.grey,
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
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      const ForgetPassClass())));
                        },
                        child: Text(
                          StringConstant.forgetpass,
                          style: TextStyleConstant.montserrat12w400.copyWith(
                              color: ColorConstant.red,
                              fontWeight: FontWeight.w600),
                        )),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    child: ElevatedButtonWidget(
                      text: StringConstant.login,
                      onpress: () {
                        //if (name.isNotEmpty) {
                        if (formKey.currentState?.validate() ?? false) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                backgroundColor: ColorConstant.grey,
                                content: Text(
                                  StringConstant.loginsnackbar,
                                  style: TextStyleConstant.montserrat36w700
                                      .copyWith(
                                          fontSize: 15,
                                          color: ColorConstant.red),
                                )),
                          );
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CreateAccountPageClass()));
                        }
                        //}
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 75,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              StringConstant.createAnAcc,
                              style: TextStyleConstant.montserrat12w400
                                  .copyWith(fontSize: 14),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CreateAccountPageClass()));
                              },
                              child: Text(
                                StringConstant.signUp,
                                style:
                                    TextStyleConstant.montserrat12w600.copyWith(
                                  fontSize: 14,
                                  color: ColorConstant.red,
                                  decoration: TextDecoration.underline,
                                  decorationColor: ColorConstant.red,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
