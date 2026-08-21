import 'package:flutter/material.dart';

class CustomBookDetailsAppbar extends StatelessWidget {
  const CustomBookDetailsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(icon: Icon(Icons.close), onPressed: () {}),
        IconButton(
          icon: const Icon(Icons.shopping_cart_outlined),
          onPressed: () {},
        ),
      ],
    );
  }
}
