import 'package:flutter/material.dart';

class IconButtonClass extends StatefulWidget {
  final VoidCallback? onpress;
  // final IconData images;
  final String images;
  final double? size;
  const IconButtonClass(
      {super.key, this.onpress, required this.images, this.size});

  @override
  State<IconButtonClass> createState() => _IconButtonClassState();
}

class _IconButtonClassState extends State<IconButtonClass> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: widget.size,
      style: IconButton.styleFrom(shape: const CircleBorder()),
      onPressed: widget.onpress,
      icon: Image.asset(widget.images),
    );
  }
}
