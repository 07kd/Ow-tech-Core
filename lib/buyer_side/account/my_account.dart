// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // String foodProviderName = "";
  // String mobileNumber = "";
  // void getsDetails() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     foodProviderName = prefs.getString("foodProviderName").toString();
  //     mobileNumber = prefs.getString("mobileNumber").toString();
  //   });

  //   print(prefs.getString("foodProviderName").toString());
  //   print(prefs.getString("mobileNumber").toString());
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color(0xFFdbf8e5),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                height: deviceHeight,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(""),
                )),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: deviceHeight * 0.1,
                      ),
                      CircleAvatar(
                        radius: 55,
                        backgroundColor: Colors.grey.shade200,
                        child: CircleAvatar(
                          radius: 80,
                          //    backgroundImage: NetworkImage( webbaseurl+profilePhoto),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "qqq",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                      Text(
                        "123",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Card(
                          color: Colors.white,
                          child: ListTile(
                            leading: Icon(
                              Icons.perm_identity_sharp,
                              color: Colors.green,
                            ),
                            title: Text(
                              'Edit Profile',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Card(
                          color: Colors.white,
                          child: ListTile(
                            leading: Icon(
                              Icons.privacy_tip_outlined,
                              color: Colors.green,
                            ),
                            title: Text(
                              'Privacy',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Card(
                          color: Colors.white,
                          child: ListTile(
                            leading: Icon(
                              Icons.help_outline,
                              color: Colors.green,
                            ),
                            title: Text(
                              'Terms & Condition',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Card(
                          color: Colors.white,
                          child: ListTile(
                            leading: Icon(
                              Icons.settings,
                              color: Colors.green,
                            ),
                            title: Text(
                              'Setting',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          setState(() {
                            isLoading =
                                true; // Set loading to true before async operation
                          });

                          // SharedPreferences prefs =
                          //     await SharedPreferences.getInstance();
                          // await prefs.clear();

                          // Simulate a delay to see the loading indicator (you can remove this)
                          await Future.delayed(Duration(seconds: 10));

                          setState(() {
                            isLoading =
                                false; // Set loading to false after async operation
                          });

                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (builder) => Login_screen()),
                          // );
                        },
                        child: Container(
                          child: Card(
                            color: Colors.white,
                            child: ListTile(
                              leading: Icon(
                                Icons.login_outlined,
                                color: Colors.green,
                              ),
                              title: Text(
                                'Log Out',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (isLoading)
              Center(
                child: Container(
                  color: Colors.black.withOpacity(0),
                  child: SpinKitFadingCircle(
                    color: Colors.red,
                    size: 60.0,
                  ),
                ),
              ),
          ],
        ));
  }

  bool isLoading = false;
}
