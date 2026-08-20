import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder:OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(),



        hintText: 'Search',
        suffixIcon: IconButton(onPressed: (){},
          icon: Opacity(
            opacity: 0.3,
            child: FaIcon(FontAwesomeIcons.magnifyingGlass,size: 22,
            ),
          ),


        ),
      ),
    );
  }
  OutlineInputBorder buildOutLineBorder(){
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide:const BorderSide(
          color: Colors.white
      ),
    );


  }

}



