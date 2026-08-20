import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide:const BorderSide(
              color: Colors.white
          ),
        ),


        hintText: 'Search',
        suffixIcon: IconButton(onPressed: (){},
          icon: Opacity(
            opacity: 8,
            child: FaIcon(FontAwesomeIcons.magnifyingGlass,size: 22,
            ),
          ),


        ),
      ),
    );
  }

}
