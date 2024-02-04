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

                    ///TODO TOPICS TOP BRAND
                    allmore(
                      topic: "Top brand",
                    ),
                    Row(
                      children: [
                        //TODO BRAND IMAGES
                        BrandContainer(
                          imagepath: "images/BMW.png",
                        ),
                        BrandContainer(
                          imagepath: "images/mercedes.png",
                        ),
                        BrandContainer(
                          imagepath: "images/lamborghini.png",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                    ///TODO TOPICS RECOMMENDATION
                    allmore(
                      topic: "Recommendations",
                    ),
                    SizedBox(
                      height: 30.0,
                    ),

                    Row(
                      children: [
                        recommendationcondition(
                          image_path: "images/lampo.png",
                          cont_leftmarging: 10.0,
                          cont_rightmargin: 22.0,
                          image_position_left: 20.0,
                          width: 150.0,
                          height: 130.0,
                          text_position_left: 35.0,
                          text_position_bottom: 10.0,
                          title: "tesla cyber truck",
                          subtitle: "\$520/day",
                        ),
                        recommendationcondition(
                          image_path: "images/cybertruck1.png",
                          cont_leftmarging: 0.0,
                          cont_rightmargin: 25.0,
                          image_position_left: -30,
                          width: 190.0,
                          height: 100.0,
                          text_position_left: 15.0,
                          text_position_bottom: 10.0,
                          title: "lamborghini urus",
                          subtitle: "\$520/day",
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

class recommendationcondition extends StatelessWidget {
  recommendationcondition(
      {this.cont_rightmargin,
      this.cont_leftmarging,
      this.height,
      this.image_path,
      this.image_position_left,
      this.subtitle,
      this.text_position_left,
      this.text_position_bottom,
      this.title,
      this.width});
  double? cont_rightmargin;
  double? cont_leftmarging;
  double? image_position_left;
  double? text_position_bottom;
  double? text_position_left;
  double? width;
  double? height;
  String? image_path;
  String? title;
  String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
              margin: EdgeInsets.only(
                  right: cont_rightmargin!, left: cont_leftmarging!),
              height: 110.0,
              decoration: BoxDecoration(
                color: Color(0xff282F36),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            Positioned(
              top: -50,
              left: image_position_left,
              child: Container(
                width: width,
                height: height,
                child: Image.asset(image_path!),
              ),
            ),
            Positioned(
              bottom: text_position_bottom,
              left: text_position_left,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
    );
  }
}

class BrandContainer extends StatelessWidget {
  BrandContainer({@required this.imagepath});
  String? imagepath;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 10.0, right: 25.0, top: 20.0),
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xff282F36),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Image.asset(imagepath!),
      ),
    );
  }
}

class allmore extends StatelessWidget {
  allmore({@required this.topic});
  String? topic;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            topic!,
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
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
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
    );
  }
}
