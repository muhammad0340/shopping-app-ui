import 'package:flutter/material.dart';

class BottemBar extends StatefulWidget {
  const BottemBar({Key? key}) : super(key: key);

  @override
  State<BottemBar> createState() => _BottemBarState();
}

class _BottemBarState extends State<BottemBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: 25,
        left: 25,
      ),
      decoration: BoxDecoration(


        color: Color(0xFF1A1819),
      ),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Icon(
              Icons.home,
              color: Color(0xFFD17742),
            ),
          ),
          Icon(
            Icons.shopping_bag,
            color: Color(0xFF4E4D53),
          ),
          Icon(
            Icons.favorite,
            color: Color(0xFF4E4D53),
          ),
          Container(
            child: Icon(
              Icons.notifications,
              color: Color(0xFF4E4D53),
            ),
          ),
        ],
      ),
    );
  }
}
