import 'package:book/Features/home/presentaion/views/widgets/custom_book_detalies.dart';
import 'package:book/core/utils/styles.dart';

import 'package:flutter/material.dart';

import 'booking_rating.dart';
import 'custom_lbook_item.dart';

class BookDetailesViewBody extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomaBookDetaliesAppbar(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: width * .2),
            child: const CustomBookImage()
          ),
            const SizedBox(height: 43,),
            Text('The jungle Book',style: Styles.textStyle30.copyWith(
              fontWeight: FontWeight.bold
            )),
      const SizedBox(height: 6),
              Opacity(
                opacity: .7,
                child: Text('RUdyard kioing',style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500
                )),
              ),
      const SizedBox(height: 6),
                BookRating(),



        ],
      ),
    );
  }
}
