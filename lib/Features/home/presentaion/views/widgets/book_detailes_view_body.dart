import 'package:book/Features/home/presentaion/views/widgets/booking_rating.dart';
import 'package:book/Features/home/presentaion/views/widgets/books_action.dart';
import 'package:book/Features/home/presentaion/views/widgets/custom_book_detalies.dart';
import 'package:book/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomaBookDetaliesAppbar(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: width * .07),
            child: const CustomBookImage(),
          ),

          Text(
            'The Jungle Book',
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
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
          const SizedBox(height: 18),
          const BookRating(mainAxisAlignment: MainAxisAlignment.center),
          const SizedBox(height: 37),
          const BooksAction(),
        ],
      ),
    );
  }
}


