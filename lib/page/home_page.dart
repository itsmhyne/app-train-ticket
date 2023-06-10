import 'package:flutter/material.dart';
import 'package:mhytickettrain/widgets/responsivebutton_widget.dart';
import '../config/textstyle.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> day = [
    'Tomorrow',
    '3 Days',
    '5 Days',
  ];

  final List<String> arrival = [
    'Bogor',
    'Malang',
    'Surabaya',
  ];

  final List<String> tracking = [
    'CLB - BGR',
    'BGR - MLG',
    'MLG -SBY',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              "assets/img/bg1.png",
              fit: BoxFit.contain,
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.paddingOf(context).top,
                  ),
                  const Icon(Icons.format_align_left_rounded),
                  Container(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            "Where are you going right nows?",
                            style: h2semibold(),
                          ),
                        ),
                        Image.asset(
                          "assets/img/kereta_1.png",
                          width: 125,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 245, 245, 245),
                              blurRadius: 5.0,
                              offset: Offset(0, 5)),
                        ]),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Departure",
                                  style: largetextsemibold(
                                      color: Colors.blue[500]),
                                ),
                                Text(
                                  "CLB",
                                  style: h4semibold(),
                                ),
                                Text(
                                  "Cilebut Station",
                                  style:
                                      largetextmedium(color: Colors.grey[500]),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.transfer_within_a_station_rounded,
                              color: Colors.blue[800],
                              size: 25,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Arrival",
                                  style: largetextsemibold(
                                      color: Colors.blue[500]),
                                ),
                                Text(
                                  "MGR",
                                  style: h4semibold(),
                                ),
                                Text(
                                  "Manggarai Station",
                                  style:
                                      largetextmedium(color: Colors.grey[500]),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          height: 1,
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          color: Colors.black12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Date of Departure",
                                  style:
                                      largetextmedium(color: Colors.blue[500]),
                                ),
                                Text(
                                  "Mon, 10 Sep 2023",
                                  style: h4semibold(),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Switch(
                                  value: true,
                                  onChanged: (value) {},
                                  activeColor: Colors.blue[500],
                                  activeTrackColor: Colors.lightBlueAccent,
                                  inactiveThumbColor: Colors.grey,
                                  inactiveTrackColor: Colors.grey[300],
                                ),
                                Text(
                                  "Round-Trip",
                                  style: largetextmedium(),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "Total Passenger",
                                  style:
                                      largetextmedium(color: Colors.blue[500]),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: 125,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    // mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.remove_circle_outline_rounded,
                                        color: Colors.grey[500],
                                        size: 30,
                                      ),
                                      Text(
                                        "4",
                                        style: h4semibold(),
                                      ),
                                      const Icon(
                                        Icons.add_circle_outline_rounded,
                                        color: Color(0xffFFAB67),
                                        size: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()));
                                },
                                child: ResponsivebuttonWidget(
                                  padHor: 30,
                                  padVer: 15,
                                  btnText: "FIND TICKET",
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "My Ticket",
                    style: h4semibold(),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: day.length,
                      itemBuilder: (context, index) {
                        return Container(
                            padding: const EdgeInsets.all(20),
                            margin: const EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(255, 245, 245, 245),
                                      blurRadius: 5.0,
                                      offset: Offset(0, 5)),
                                ]),
                            child: Row(
                              children: [
                                ResponsivebuttonWidget(
                                    padHor: 10,
                                    padVer: 10,
                                    btnText: day[index]),
                                const SizedBox(
                                  width: 30,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      arrival[index],
                                      style: largetextmedium(),
                                    ),
                                    Text(
                                      tracking[index],
                                      style: mediumtextregular(),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[500],
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Icon(
                                    Icons.remove_red_eye_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                )
                              ],
                            ));
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "News",
                    style: h4semibold(),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 175,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: day.length,
                      itemBuilder: (context, index) {
                        return Container(
                            padding: const EdgeInsets.all(20),
                            margin: const EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(255, 245, 245, 245),
                                      blurRadius: 5.0,
                                      offset: Offset(0, 5)),
                                ]),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ResponsivebuttonWidget(
                                        padHor: 10,
                                        padVer: 5,
                                        btnText: "Weather",
                                        color: Color(0xffFFAB67)),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "The weather for\ntoday is great\nfor trip",
                                      style: h4semibold(),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Image.asset(
                                  "assets/img/cuaca.png",
                                  width: 100,
                                )
                              ],
                            ));
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
