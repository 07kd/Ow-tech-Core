import 'package:flutter/material.dart';


import '../category/my_order.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Account"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width,
              height: 150,
              color: Colors.deepPurple,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          minRadius: 40,
                          maxRadius: 40,
                          child: ClipOval(
                            child: Image.asset(
                              "assets/profile.png",
                            ),
                          ),
                        ),
                      ),
                      Column(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Padma Lochan Mohant",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Padmalochan@gmail.com",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "8794567890",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Row(
                  children: [
                    Icon(
                      Icons.history,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "My Orders",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyOrder(),
                    ),
                  );
                },
              ),
            ),
            Divider(
              thickness: 2,
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     children: [
            //       Icon(
            //         Icons.credit_card,
            //         size: 30,
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Text(
            //         "My Payments",
            //         style: TextStyle(fontSize: 17),
            //       ),
            //     ],
            //   ),
            // ),
            // Divider(
            //   thickness: 2,
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     children: [
            //       Icon(
            //         Icons.notifications,
            //         size: 30,
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Text(
            //         "Notification",
            //         style: TextStyle(fontSize: 17),
            //       )
            //     ],
            //   ),
            // ),
            // Divider(
            //   thickness: 2,
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     children: [
            //       Icon(
            //         Icons.reviews,
            //         size: 30,
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Text(
            //         "My Ratings & Reviews",
            //         style: TextStyle(fontSize: 17),
            //       )
            //     ],
            //   ),
            // ),
            // Divider(
            //   thickness: 2,
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     children: [
            //       Icon(
            //         Icons.headphones,
            //         size: 30,
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Text(
            //         "Customer Service",
            //         style: TextStyle(fontSize: 17),
            //       )
            //     ],
            //   ),
            // ),
            // Divider(
            //   thickness: 2,
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     children: [
            //       Icon(
            //         Icons.card_giftcard,
            //         size: 30,
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Text(
            //         "My Gift Card",
            //         style: TextStyle(fontSize: 17),
            //       )
            //     ],
            //   ),
            // ),
            // Divider(
            //   thickness: 2,
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     children: [
            //       Icon(
            //         Icons.location_on_outlined,
            //         size: 30,
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Text(
            //         "My Delivery Address",
            //         style: TextStyle(fontSize: 17),
            //       )
            //     ],
            //   ),
            // ),
            // Divider(
            //   thickness: 2,
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.logout,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Logout",
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
