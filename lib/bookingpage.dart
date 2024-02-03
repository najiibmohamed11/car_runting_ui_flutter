import 'package:car_renting_ui/rentingdetails.dart';
import 'package:flutter/material.dart';

class Bookpage extends StatefulWidget {
  const Bookpage({Key? key}) : super(key: key);

  @override
  State<Bookpage> createState() => _BookpageState();
}

class _BookpageState extends State<Bookpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/maaap.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      // Handle back butto
                      //n press
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    "car details",
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(top: 75.0, left: 20.0, right: 20.0),
                height: MediaQuery.of(context).size.height /
                    1.8, // Take one-third of the screen height
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 90, // specify the width as needed
                          height: 30, // specify the height as needed
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                15), // set the border radius
                            border: Border.all(
                                color: const Color.fromRGBO(233, 171, 55,
                                    1)), // add a border (optional)
                            color: Colors
                                .transparent, // set the fill color as transparent
                          ),
                          child: Center(
                            child: Text(
                              "SUV Car",
                              style: TextStyle(
                                  color: Color.fromRGBO(233, 171, 55, 1)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          width: 90, // specify the width as needed
                          height: 30, // specify the height as needed
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                15), // set the border radius
                            border: Border.all(
                                color: const Color.fromRGBO(233, 171, 55,
                                    1)), // add a border (optional)
                            color: Colors
                                .transparent, // set the fill color as transparent
                          ),
                          child: Center(
                            child: Text(
                              "off road",
                              style: TextStyle(
                                  color: Color.fromRGBO(233, 171, 55, 1)),
                            ),
                          ),
                        ),
                        Spacer(),
                        Image.asset("images/lamborghini.png")
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "lamborghini urus(2022)",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "520\$/day",
                      style:
                          TextStyle(fontSize: 20.0, color: Color(0xffE9AB37)),
                    ),
                    SizedBox(
                      height: 55.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: 120.0,
                              height: 120.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Color(0xff282F36),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25.0, left: 15.0),
                                    child: Text(
                                      "capacity",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18.0),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text(
                                      "4 Site",
                                      style: TextStyle(
                                        color: Color(0xffE9AB37),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: -50,
                              left: 8,
                              child: Container(
                                width: 100.0,
                                height: 100.0,
                                child: Image.asset("images/chairs.png"),
                              ),
                            )
                          ],
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: 120.0,
                              height: 120.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Color(0xff282F36)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25.0, left: 15.0),
                                    child: Text(
                                      "Max Speed",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18.0),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text(
                                      "265 KM/h",
                                      style: TextStyle(
                                        color: Color(0xffE9AB37),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: -50,
                              left: 8,
                              child: Container(
                                width: 100.0,
                                height: 100.0,
                                child: Image.asset("images/mator.png"),
                              ),
                            )
                          ],
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: 120.0,
                              height: 120.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Color(0xff282F36),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25.0, left: 15.0),
                                    child: Text(
                                      "engin power",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18.0),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text(
                                      "580 HP",
                                      style: TextStyle(
                                        color: Color(0xffE9AB37),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: -50,
                              left: 8,
                              child: Container(
                                width: 100.0,
                                height: 100.0,
                                child:
                                    Image.asset("images/powr of the motor.png"),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      height: 50.0,
                      width: double
                          .infinity, // set the width as per your requirement
                      decoration: BoxDecoration(
                        color: Color(0xffE9AB37),

                        borderRadius: BorderRadius.circular(
                            10), // set the border radius as per your requirement
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Rentingdetails();
                            }),
                          );
                        },
                        child: Center(
                          child: Text(
                            "Book car",
                            style: TextStyle(
                                fontSize: 24.0,
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 370.0,
              child: Container(
                width: 420,
                height: 400,
                child: Image.asset("images/sidelapo.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
