import 'package:flutter/material.dart';

import 'color_plate.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15,
        right: 15,
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 50,
        width: MediaQuery.of(context).size.width-30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorPlate().searchbarfill,
        ),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            hintText: 'Find your Coffee.......',
            hintStyle: TextStyle(color: Color(0xFF525559),),
            contentPadding: EdgeInsets.fromLTRB(10, 2, 5, 12,),
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search,color: Color(0xFF525559),),
          ),
        ),
      ),
    );
  }
}
