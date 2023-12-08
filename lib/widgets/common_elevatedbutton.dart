import 'package:ecommerce/util/color_constants.dart';
import 'package:ecommerce/util/textstyle_constants.dart';
import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatefulWidget {
  final String text;
  final VoidCallback? onpress;

  const ElevatedButtonWidget({super.key, required this.text, this.onpress});

  @override
  State<ElevatedButtonWidget> createState() => _ElevatedButtonWidgetState();
}

class _ElevatedButtonWidgetState extends State<ElevatedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onpress,
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(ColorConstant.red),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)))),
      child: Text(
        widget.text,
        style: TextStyleConstant.montserrat12w600.copyWith(
          color: ColorConstant.white,
          fontSize: 20,
        ),
      ),
    );
  }
}
