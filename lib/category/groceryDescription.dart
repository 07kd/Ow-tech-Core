import 'package:flutter/material.dart';
import 'package:grocery/category/product_description.dart';

import 'demo.dart';

class GroceryDescription extends StatefulWidget {
  const GroceryDescription({super.key});

  @override
  State<GroceryDescription> createState() => _GroceryDescriptionState();
}

class _GroceryDescriptionState extends State<GroceryDescription> {
  final List<Map<String, dynamic>> CatItem = [
    {
      "title": "Atta",
      "images": "assets/banner/ata.png",
      "price": "₹ 120",
      "kg": "1kg"
    },
    {
      "title": "Besan",
      "images": "assets/banner/besan-removebg-preview.png",
      "price": "₹ 120",
      "kg": "1kg"
    },
    {
      "title": "Rice",
      "images": "assets/banner/basmati-removebg-preview.png",
      "price": "₹ 120",
      "kg": "1kg"
    },
    {
      "title": "Toor",
      "images": "assets/banner/toor-removebg-preview.png",
      "price": "₹ 120",
      "kg": "1kg"
    },
    {
      "title": "Masoor",
      "images": "assets/banner/masoor-removebg-preview.png",
      "price": "₹ 120",
      "kg": "1kg"
    },
    {
      "title": "poha",
      "images": "assets/banner/poha-removebg-preview.png",
      "price": "₹ 120",
      "kg": "1kg"
    },
    {
      "title": "Soya",
      "images": "assets/banner/soya-removebg-preview.png",
      "price": "₹ 120",
      "kg": "1kg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Grocery"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 200,
                crossAxisCount: 2,
              ),
              itemCount: CatItem.length,
              itemBuilder: (_, index) {
                //view all
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDescription(),
                          //ProductDescription()
                        ));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    shadowColor: Colors.black,
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 4,
                        right: 4,
                      ),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "${CatItem.elementAt(index)["images"]}",
                                width: 150,
                                height: 100,
                              ),
                            ),
                            Center(
                              child: Text(
                                "${CatItem.elementAt(index)["title"]}",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "${CatItem.elementAt(index)["price"]}",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "${CatItem.elementAt(index)["kg"]}",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
