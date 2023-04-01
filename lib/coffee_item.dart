import 'package:flutter/material.dart';

class CoffeeCard extends StatefulWidget {
  final String image;
  String coffeeName;
  CoffeeCard({required this.image,required this.coffeeName});
  @override
  State<CoffeeCard> createState() => _CoffeeCardState();
}

class _CoffeeCardState extends State<CoffeeCard> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            height: 210,
            width: 180,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(25),
              // image: DecorationImage(
              //   image: AssetImage('images/aa.jpg'),
              //   fit: BoxFit.cover,
              // ),

            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 150,

                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage('images/aa.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Text('arsalan'),
                Text("arsaln"),
                Text("muhamad "),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
