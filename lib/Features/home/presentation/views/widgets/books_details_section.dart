import 'package:book/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'booking_rating.dart';
import 'books_action.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: CustomBookImage(),
        ),


        SizedBox(height: 10),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 18,),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 37),
        const BooksAction(),



      ],
    );
  }
}