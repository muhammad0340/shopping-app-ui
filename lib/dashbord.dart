
import 'package:flutter/material.dart';
import 'package:new_shopping_desing_2_try/search_bar.dart';

import 'bottem_bar.dart';
import 'coffee_item.dart';
import 'color_plate.dart';
import 'item_detail_screen.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final List<String> CoffeeType = [
    'Cappuccion',
    'Esperosso',
    'Latte',
    'Flat White',
  ];

  String selectedItem = 'Cappuccion';

  int counter = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottemBar(),
      backgroundColor: ColorPlate().scaffoldbg,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(15, 25, 15, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(7),
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: Color(0xFF1F242C),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.grid_view_rounded,
                        size: 20,
                        color: Color(0xFF4D4F52),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(7),
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        image: DecorationImage(
                          image: AssetImage("images/aa.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              //color: Colors.red,
              padding: EdgeInsets.only(left: 15, top: 15),
              width: (MediaQuery.of(context).size.width / 3) * 3 - 25,
              child: Text(
                "Find The Best Coffee For You",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 42,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SearchBar(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                      begin: Alignment(
                        0.7,
                        -1.0,
                      ),
                      end: Alignment(1.0, -1.0),
                      colors: <Color>[Colors.black, Colors.transparent])
                      .createShader(bounds);
                },
                blendMode: BlendMode.dstATop,
                child: Container(
                  color: Color(0xFF0D0F14),
                  height: 40,
                  width: MediaQuery.of(context).size.width - 20,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ...CoffeeType.map((e) {
                        counter++;
                        if (counter <= 3)
                          return _buildTypes(e, counter);
                        else {
                          counter = 0;
                          return _buildTypes(e, counter);
                        }
                      }).toList()
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: (MediaQuery.of(context).size.width / 2) + 50,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(top: 5),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18),
                    child: Container(
                      //color: Color(0xFF0D0F14),
                      //color: Colors.red,
                      height: 350,
                      width: MediaQuery.of(context).size.width - 10,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CoffeeItem('images/coffee_third.jpg', 'Cappuccino',
                              'With Oat Milk', 2.45),
                          CoffeeItem('images/coffee_second.jpg', 'Cappuccino',
                              'With Chocolate', 4.05),
                          CoffeeItem('images/coffee_one.jpg', 'cuppcion',
                              'With Dark Chocolate', 3.00),
                        ],
                      ),
                    ),
                  ),
                  // Text("arsaland",style: TextStyle(color: Colors.white,fontSize: 25),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 18.0,
                top: 6,
                bottom: 5,
              ),
              child: Text(
                "Special For You",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15, top: 5),
              child: Container(
                height: 125,
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF525559),
                      Color(0xFF141921),
                    ],
                  ),
                  //color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 110,
                        width: 125,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage("images/coffee_forth.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                          height: 110,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "5 Coffee Beans You ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Should Try!",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTypes(coffee, counter) {
    return Padding(
      padding: counter != 0
          ? EdgeInsets.only(
        left: 25,
      )
          : EdgeInsets.only(left: 7.0),
      child: Container(
        height: 50,
        color: Color(0xFF0D0F14),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedItem = coffee;
                });
              },
              child: Text(
                coffee,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: coffee == selectedItem
                      ? ColorPlate().coffeeselected
                      : ColorPlate().coffeeunselected,
                  fontSize: 17,
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: coffee == selectedItem
                    ? ColorPlate().coffeeselected
                    : ColorPlate().coffeeunselected,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget CoffeeItem(
      String imagepath, String firstName, secondName, double price) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => ItemDetailScreen(
                    imageName: imagepath,
                    coffeName: firstName,
                    coffeewith: secondName,
                    pricetwo: price,
                  ),
                ),
              );
            },
            child: Container(
              height: 240,
              width: 180,
              decoration: BoxDecoration(
                // color: Color(0xFF141921),

                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF525559),
                      Color(0xFF141921),
                    ]),
                borderRadius: BorderRadius.circular(25),
                // image: DecorationImage(
                //   image: AssetImage('images/aa.jpg'),
                //   fit: BoxFit.cover,
                // ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                            height: 100,
                            width: 150,
                            decoration: BoxDecoration(
                              //color: Colors.indigo,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(imagepath),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Text(
                      firstName,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      secondName,
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$' + price.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (BuildContext context) =>
                            //           ItemDetailScreen(),
                            //     ));
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return ItemDetailScreen(
                                imageName: imagepath,
                                coffeName: firstName,
                                coffeewith: secondName,
                                pricetwo:price,
                              );
                            }));
                          },
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Icon(Icons.add),
                            ),
                          ),
                        ),
                      ],
                    )
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
