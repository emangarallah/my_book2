import 'package:book/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FaIcon(FontAwesomeIcons.solidStar, color: Colors.amber, size: 15),
        SizedBox(width: 6.3),
        Text(
          '4.8',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 5),

        Text(
          '(2.3k)',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w500,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
