import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:matcher/matcher.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'groceryDescription.dart';

class GrocerySubCat extends StatefulWidget {
  const GrocerySubCat({super.key});

  @override
  State<GrocerySubCat> createState() => _GrocerySubCatState();
}

class _GrocerySubCatState extends State<GrocerySubCat> {
  int currentIndex = 0;
  List imageList = [
    {"id": 1, "image_path": "assets/banner/b1.jpeg"},
    {"id": 2, "image_path": "assets/banner/b2.jpeg"},
    {"id": 3, "image_path": "assets/banner/b3.jpeg"},
    {"id": 4, "image_path": "assets/banner/b4.jpeg"},
    {"id": 5, "image_path": "assets/banner/b5.jpeg"},
    {"id": 6, "image_path": "assets/banner/Banner7.jpg"},
    {"id": 7, "image_path": "assets/banner/b6.webp"},
    {"id": 8, "image_path": "assets/banner/Banner3.jpg"},
    {"id": 9, "image_path": "assets/banner/Banner5.png"},
    {"id": 10, "image_path": "assets/banner/Banner8.jpg"},
  ];
  final List<Map<String, dynamic>> CatItem = [
    {
      "title": "View All",
      "images": "assets/banner/grocery-removebg-preview.png"
    },
    {"title": "Atta", "images": "assets/banner/ata.png"},
    {
      "title": "Basmati Rice",
      "images": "assets/banner/basmati-removebg-preview.png"
    },
    {
      "title": "Besan, Maida & other Flour",
      "images": "assets/banner/besan-removebg-preview.png"
    },
    {
      "title": "Regional & other rice varieties",
      "images": "assets/banner/regional-removebg-preview.png"
    },
    {
      "title": "Toor, Urad & Other Dals",
      "images": "assets/banner/toor-removebg-preview.png"
    },
    {
      "title": "Masoor, Rajma",
      "images": "assets/banner/masoor-removebg-preview.png"
    },
    {
      "title": "Poha & Puffed Rice",
      "images": "assets/banner/poha-removebg-preview.png"
    },
    // {
    //   "title": "Soya Chunks",
    //   "images":
    //       "/Users/skkalamuddin/StudioProjects/grocery/assets/innercat/soya-removebg-preview.png"
    // },
  ];

  final CarouselController carouselController = CarouselController();
  int currentSlider = 0;

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/banner/con.png",
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(children: [
              Stack(
                children: [
                  InkWell(
                    onTap: () {
                      print(currentSlider);
                    },
                    child: CarouselSlider(
                      items: imageList
                          .map(
                            (item) => Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(
                                    item["image_path"],
                                  ),
                                  fit: BoxFit.fill,
                                  //width: double.infinity,
                                ),
                              ),
                              /* child: Image.asset(
                                        item["image_path"],
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      ),*/
                            ),
                          )
                          .toList(),
                      carouselController: carouselController,
                      options: CarouselOptions(
                        scrollPhysics: const BouncingScrollPhysics(),
                        autoPlay: true,
                        aspectRatio: 2,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentSlider = index;
                          });
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imageList.asMap().entries.map(
                        (entry) {
                          print(entry);
                          print(entry.key);
                          return GestureDetector(
                            onTap: () =>
                                carouselController.animateToPage(entry.key),
                            child: Container(
                              width: currentSlider == entry.key ? 17 : 7,
                              height: 7.0,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 3.0,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: currentSlider == entry.key
                                      ? Colors.red
                                      : Colors.teal),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "SHOP BY CATEGORY",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 140,
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
                            builder: (context) => GroceryDescription(),
                          ));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      shadowColor: Colors.black,
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 5, right: 5, bottom: 8, top: 8),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "${CatItem.elementAt(index)["images"]}",
                                width: 150,
                                height: 100,
                              ),
                              Center(
                                child: Text(
                                  "${CatItem.elementAt(index)["title"]}",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
