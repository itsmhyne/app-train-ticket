import 'package:flutter/material.dart';
import 'package:mhytickettrain/bloc/export.dart';
import 'package:mhytickettrain/widgets/responsivebutton_widget.dart';
import 'package:mhytickettrain/widgets/roundedbutton_widget.dart';

class MytticketPage extends StatelessWidget {
  MytticketPage({super.key});

  final List<String> date = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
  ];

  final List<String> day = [
    "SUN",
    "MON",
    "TUE",
    "WED",
    "THR",
    "FRI",
    "SAT",
    "SUN",
    "MON",
    "TUE",
    "WED",
  ];

  final List<String> station = [
    "Bogor Station",
    "Jakarta Kota Station",
    "Depok Station",
    "Tangerang Station"
  ];

  final List<String> _station = ["BGR", "JKT", "DPK", "TGR"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/img/bg2.png",
              fit: BoxFit.contain,
            ),
          ),
          Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 245, 245, 245),
                          blurRadius: 1.0,
                          offset: Offset(0, 1)),
                    ]),
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.paddingOf(context).top,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          const Icon(Icons.arrow_back_rounded),
                          const SizedBox(
                            width: 25,
                          ),
                          Text(
                            "Cilebut - Manggarai",
                            style: h4semibold(),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: date.length,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 75,
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: index == 3
                                      ? Colors.blue[500]
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                        color:
                                            Color.fromARGB(255, 245, 245, 245),
                                        blurRadius: 5.0,
                                        offset: Offset(0, 5)),
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    date[index],
                                    style: largetextbold(
                                        color: index == 3
                                            ? Colors.white
                                            : Colors.grey[500]),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    day[index],
                                    style: largetextbold(
                                        color: index == 3
                                            ? Colors.white
                                            : Colors.grey[500]),
                                  ),
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: station.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(
                          bottom: 20, left: 20, right: 20),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white70,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                station[index],
                                style: largetextbold(),
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Rp.25.000",
                                    style: largetextsemibold(),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "1 Remains",
                                    style: mediumtextmedium(color: Colors.red),
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "CLB",
                                    style: largetextsemibold(
                                        color: Colors.grey[500]),
                                  ),
                                  Text(
                                    "12:00 PM",
                                    style: largetextsemibold(
                                        color: Colors.grey[500]),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  " - - - - - - - ",
                                  style: largetextsemibold(
                                      color: Colors.grey[500]),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _station[index],
                                    style: largetextsemibold(
                                        color: Colors.grey[500]),
                                  ),
                                  Text(
                                    "12:35 PM",
                                    style: largetextsemibold(
                                        color: Colors.grey[500]),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ResponsivebuttonWidget(
                                btnText: "Commuter Line-A",
                                padHor: 10,
                                padVer: 5,
                                color: const Color(0xffFFAB67).withOpacity(0.3),
                                textColor: const Color(0xffFFAB67),
                              ),
                              Text(
                                "35 minutes",
                                style:
                                    mediumtextmedium(color: Colors.grey[500]),
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
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    // color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 245, 245, 245),
                          blurRadius: 5.0,
                          offset: Offset(0, 5)),
                    ]),
                child: Center(
                    child: RoundedbuttonWidget(
                        padHor: 50,
                        padVer: 15,
                        widget: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.filter_alt_rounded,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "FILTER",
                              style: largetextsemibold(color: Colors.white),
                            ),
                          ],
                        ))),
              )
            ],
          )
        ],
      ),
    );
  }
}
