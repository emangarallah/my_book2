import 'package:book/Features/home/presentaion/views/widgets/best_seller_list_view.dart';
import 'package:book/Features/home/presentaion/views/widgets/best_seller_list_view_item.dart';

import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_app_bar.dart';

import 'featured_List_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              //CustomListviewItem(),
              FeaturedBooksListView(),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text('Best Selers', style: Styles.textStyle18),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),

        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
