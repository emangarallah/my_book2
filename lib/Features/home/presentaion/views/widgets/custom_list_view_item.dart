

import 'package:flutter/material.dart';

import '../../../../../core/utils/asset.dart';

class CustomListviewItem extends StatelessWidget {
  const  CustomListviewItem ({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:2.7/4,
      child: Container(

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),

            image: const  DecorationImage(image: AssetImage(AssetsData.testImage),fit: BoxFit.fill )

        ),
      ),

    );
  }
}