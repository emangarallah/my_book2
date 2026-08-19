import 'package:book/Features/home/presentaion/views/widgets/book_detailes_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailesView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: BookDetailesViewBody()));
  }
}
