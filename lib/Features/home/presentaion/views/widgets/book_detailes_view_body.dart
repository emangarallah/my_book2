import 'package:book/Features/home/presentaion/views/widgets/slimilar_bookslist_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'booking_rating.dart';
import 'books_action.dart';
import 'custom_book_detalies.dart';
import 'custom_book_item.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomaBookDetaliesAppbar(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: width * .2),
                  child: Center(child: const CustomBookImage()),
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
                const SizedBox(height: 18),
                const BookRating(mainAxisAlignment: MainAxisAlignment.center),
                const SizedBox(height: 37),
                const BooksAction(),
                Expanded(child: const SizedBox(height: 50)),
                Align(
                  alignment: AlignmentGeometry.centerLeft,
                  child: Text(
                    'Yuo can also like',
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SlimilarBooksListview(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
