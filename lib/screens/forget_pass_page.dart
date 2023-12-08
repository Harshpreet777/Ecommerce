import 'package:ecommerce/util/color_constants.dart';
import 'package:ecommerce/util/string_constants.dart';
import 'package:ecommerce/util/textstyle_constants.dart';
import 'package:ecommerce/widgets/common_elevatedbutton.dart';
import 'package:ecommerce/widgets/common_textformfield.dart';
import 'package:flutter/material.dart';

class ForgetPassClass extends StatefulWidget {
  const ForgetPassClass({super.key});

  @override
  State<ForgetPassClass> createState() => _ForgetPassClassState();
}

class _ForgetPassClassState extends State<ForgetPassClass> {
  TextEditingController emailController = TextEditingController();
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.only(left: 29, right: 26),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                StringConstant.forgetpasstext,
                style: TextStyleConstant.montserrat36w700,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            TextFormFieldWidget(
              outlinedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              iconcolor: ColorConstant.black,
              color: ColorConstant.grey,
              controller: emailController,
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
              hinttext: StringConstant.emailhint,
              hintstyle:
                  TextStyleConstant.montserrat12w500.copyWith(fontSize: 13),
              obscuretext: false,
              image: (Icons.mail_rounded),
            ),
            const SizedBox(
              height: 26,
            ),
            Text(
              StringConstant.forgetpassmessage,
              style: TextStyleConstant.montserrat12w500
                  .copyWith(fontSize: 14, color: ColorConstant.grey676767),
            ),
            const SizedBox(
              height: 38,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 55,
              child: const ElevatedButtonWidget(
                text: StringConstant.submit,
                onpress: null,
              ),
            )
          ],
        ),
      ),
    );
  }
}
