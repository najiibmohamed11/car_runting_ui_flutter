import 'package:flutter/material.dart';

class Rentingdetails extends StatefulWidget {
  const Rentingdetails({super.key});

  @override
  State<Rentingdetails> createState() => _RentingdetailsState();
}

class _RentingdetailsState extends State<Rentingdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/lampolocation.png"),
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
                decoration: BoxDecoration(color: Colors.black),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rent details",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "\$4570",
                          style: TextStyle(
                              color: Color(0xffE9AB37),
                              fontSize: 25.0,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      padding: EdgeInsets.only(left: 20.0, top: 5.0),
                      height: 70.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xff282F36),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_disabled_outlined,
                            color: Color(0xffE9AB37),
                          ),
                          Image.asset("images/line.png"),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "pick up location",
                                style: TextStyle(color: Colors.white60),
                              ),
                              Text(
                                "mirimar,sandiago",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15.0),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 180,
                          padding: EdgeInsets.only(top: 5.0),
                          height: 70.0,
                          decoration: BoxDecoration(
                              color: Color(0xff282F36),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Icon(
                                  Icons.date_range,
                                  color: Color(0xffE9AB37),
                                ),
                              ),
                              Image.asset("images/line.png"),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "pick-Up Date",
                                    style: TextStyle(color: Colors.white60),
                                  ),
                                  Text(
                                    "firi 17 jan",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15.0),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5.0),
                          width: 180,
                          height: 70.0,
                          decoration: BoxDecoration(
                              color: Color(0xff282F36),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Icon(
                                  Icons.access_alarm_rounded,
                                  color: Color(0xffE9AB37),
                                ),
                              ),
                              Image.asset("images/line.png"),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Time",
                                    style: TextStyle(color: Colors.white60),
                                  ),
                                  Text(
                                    "02:45PM",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15.0),
                                  ),
                                ],
                              )
                            ],
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
                        Container(
                          width: 180,
                          padding: EdgeInsets.only(top: 5.0),
                          height: 70.0,
                          decoration: BoxDecoration(
                              color: Color(0xff282F36),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Icon(
                                  Icons.date_range,
                                  color: Color(0xffE9AB37),
                                ),
                              ),
                              Image.asset("images/line.png"),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "pick-Up Date",
                                    style: TextStyle(color: Colors.white60),
                                  ),
                                  Text(
                                    "firi 17 jan",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15.0),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5.0),
                          width: 180,
                          height: 70.0,
                          decoration: BoxDecoration(
                              color: Color(0xff282F36),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Icon(
                                  Icons.access_alarm_rounded,
                                  color: Color(0xffE9AB37),
                                ),
                              ),
                              Image.asset("images/line.png"),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Time",
                                    style: TextStyle(color: Colors.white60),
                                  ),
                                  Text(
                                    "02:45PM",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15.0),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30.0),
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
                            "process to payment",
                            style: TextStyle(
                                fontSize: 20.0,
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
              bottom: 300.0,
              child: Container(
                width: 400,
                height: 380,
                child: Image.asset("images/ful lambo.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
