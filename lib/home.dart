import 'package:car_renting_ui/bookingpage.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        activeColor: Color(0xffE9AB37),
        backgroundColor: Color(0xff282F36),
        padding:
            EdgeInsets.only(top: 20.0, bottom: 10.0, left: 45.0, right: 25.0),
        color: Color(0xff758389),
        tabs: const [
          GButton(
            icon: Icons.home,
            iconSize: 30.0,
          ),
          GButton(
            icon: Icons.bookmark_added_sharp,
            iconSize: 30.0,
          ),
          GButton(
            icon: Icons.notifications,
            iconSize: 30.0,
          ),
          GButton(
            icon: Icons.supervised_user_circle_sharp,
            iconSize: 30.0,
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //TODO1: header row
            Container(
              margin: EdgeInsets.all(25.0),
              child: Row(
                children: [
                  //TODO2: location icon
                  Icon(
                    Icons.location_on,
                    color: Color(0xffE9AB37),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  //TODO3: location text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Your Location"),
                      Text(
                        "mirimar,sandiago",
                        style: TextStyle(
                          letterSpacing: 0.6,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  //TODO 4 rounded image
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(
                        color: const Color.fromARGB(
                            255, 77, 75, 75), // Set your border color here
                        width: 2, // Set the width of the border
                      ),
                    ),
                    width: 50,
                    height: 50,
                    child: ClipOval(
                      child: Image.asset("images/user.png"),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
              ),
              child: Text(
                "Search Your Dream \nCar To Ride",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    margin: EdgeInsets.only(left: 25.0, right: 18.0),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 18.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                              15.0), // Adjust the border radius as needed
                        ),
                        hintText: "Search...",
                        prefixIcon: Icon(Icons.search),
                        // Add the search icon here
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.only(right: 20.0),
                    width: 30.0,
                    height: 65.0,
                    decoration: BoxDecoration(
                      color: Color(0xffE9AB37),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Image.asset("images/filter.png"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    )),
                child: Column(
                  children: [
                    Container(
                      height: 50.0,
                      width: 50.0,
                      child: Image.asset("images/dash.png"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Top Brands",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 25.0),
                          width: 80.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Color(0xff282F36),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "More",
                                  style: TextStyle(
                                    color: Color(0xffE9AB37),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Color(0xffE9AB37),
                                )
                              ]),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 10.0, right: 25.0, top: 20.0),
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xff282F36),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Image.asset("images/BMW.png"),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 10.0, right: 25.0, top: 20.0),
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xff282F36),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Image.asset("images/mercedes.png"),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 10.0, right: 25.0, top: 20.0),
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xff282F36),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Image.asset("images/lamborghini.png"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Recommendations",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 25.0),
                          width: 80.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Color(0xff282F36),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "More",
                                  style: TextStyle(
                                    color: Color(0xffE9AB37),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Color(0xffE9AB37),
                                )
                              ]),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return Bookpage();
                                }),
                              );
                            },
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.only(right: 10.0, left: 22.0),
                                  height: 110.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xff282F36),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                Positioned(
                                  top: -50,
                                  left: 20.0,
                                  child: Container(
                                    width: 150.0,
                                    height: 130.0,
                                    child: Image.asset("images/lampo.png"),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10.0,
                                  left: 35.0,
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lamborghini urus",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          "\$520/day",
                                          style: TextStyle(
                                            color: Color(0xffE9AB37),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 25.0),
                                  height: 110.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xff282F36),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                Positioned(
                                  top: -50,
                                  left: -30,
                                  child: Container(
                                    width: 190.0,
                                    height: 100.0,
                                    child:
                                        Image.asset("images/cybertruck1.png"),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10.0,
                                  left: 15.0,
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Cyber Truck",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          "\$500/day",
                                          style: TextStyle(
                                            color: Color(0xffE9AB37),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    //big place
                  ],
                  //
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
