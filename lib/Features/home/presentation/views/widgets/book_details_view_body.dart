import 'package:book/Features/home/presentation/views/widgets/similar_boks_section.dart';

import 'package:flutter/material.dart';

import 'books_details_section.dart';
import 'custom_book_detalis.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: const [
                CustomBookDetailsAppbar(),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: BookDetailsSection(),
                ),

                Expanded(child: SizedBox(height: 50)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SimilarBooksSection(),
                ),

                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
