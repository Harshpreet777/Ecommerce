import 'package:ecommerce/util/color_constants.dart';
import 'package:flutter/material.dart';

class OutlinedButtonWidget extends StatefulWidget {
  final String iconImage;
  final VoidCallback? onpress;
  const OutlinedButtonWidget({super.key, required this.iconImage, this.onpress});

  @override
  State<OutlinedButtonWidget> createState() => _OutlinedButtonWidgetState();
}

class _OutlinedButtonWidgetState extends State<OutlinedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            backgroundColor: Colors.grey.shade100,
            shape: const CircleBorder(side: BorderSide(color: Colors.white24)),
            side: BorderSide(color: ColorConstant.red, width: 1),
            fixedSize: const Size(70, 60)),
        onPressed: (){
          widget.onpress;
        },
        child: Image.asset(
          widget.iconImage,
          fit: BoxFit.cover,
        ));
  }
}
