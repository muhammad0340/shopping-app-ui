import 'package:flutter/material.dart';

class ItemDetailScreen extends StatefulWidget {
  final String imageName;
  final String coffeName;
  final String coffeewith;
  final double pricetwo;

  ItemDetailScreen({
    required this.imageName,
    required this.coffeName,
    required this.coffeewith,
    required this.pricetwo,
  });

  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: screenHight,
            width: screenWidth,
            color: Colors.black,
          ),
          Hero(
            tag: widget.imageName,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Container(
                height: (screenHight / 2) + 70,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(widget.imageName),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 20,
            right: 10,
            child: Container(
              //color: Colors.teal,
              height: 50,
              width: screenWidth - 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    child: Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xFF525559),
                        )),
                    decoration: BoxDecoration(
                      color: Color(0xFF14181D),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    child: Icon(
                      Icons.favorite,
                      color: Color(0xFF525559),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFF14181D),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: (screenHight / 2) + 10,
            width: screenWidth,
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0, left: 10),
              child: Container(
                height: 120,
                width: 50,

                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                ),
                // color: Colors.grey.withOpacity(2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 170,
                      //color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 8.0,
                          top: 8,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.coffeName,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 6,),
                            Text(
                              widget.coffeewith,
                              style:
                              TextStyle(color: Colors.grey, fontSize: 17),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "4.5",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      // color: Colors.blue,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 20, top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFF4D4F52),
                                  ),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.coffee,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        "coffee",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFF4D4F52),
                                  ),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.water_drop,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        "Water",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 115,
                            height: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFF4D4F52),
                            ),
                            //  color: Color(0xFF4D4F52),
                            child: Center(
                              child: Text(
                                "Medium Roasted",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 530,
            child: Container(
              height: 300,
              width: screenWidth,
              //  color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18, top: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Discription",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "A cappuccino is coffee-based drink made"
                          " primarily for espresso and milk",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Size",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            // color: Color(0xFF4D4F52),
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "S",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFF4D4F52),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "M",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFF4D4F52),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "L",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 18.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Price",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                '\$' + widget.pricetwo.toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                            ],
                          ),
                          Container(
                              height: 50,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  "Buy Now",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
