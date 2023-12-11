import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class StarRatingClass extends StatefulWidget {
  const StarRatingClass({super.key});

  @override
  State<StarRatingClass> createState() => _StarRatingClassState();
}

class _StarRatingClassState extends State<StarRatingClass> {
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
    initialRating: 4.5,
      maxRating: 5,
      itemSize: 20,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemPadding: const EdgeInsets.symmetric(horizontal: 1),
        itemBuilder: (context, index) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
        onRatingUpdate: (value) {
          log('rating');
        },);
  }
}
