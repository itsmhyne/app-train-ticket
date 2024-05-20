import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slicing_mhyticket/custom/constant.dart';
import 'package:slicing_mhyticket/custom/data.dart';
import 'package:slicing_mhyticket/custom/textstyle.dart';
import 'package:slicing_mhyticket/screens/orderingsummary_screen.dart';

class TicketListScreen extends StatelessWidget {
  const TicketListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/bg2.png",
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          ListView(
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
                    // SizedBox(
                    //   height: MediaQuery.paddingOf(context).top,
                    // ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(Icons.arrow_back_rounded)),
                          const SizedBox(
                            width: 25,
                          ),
                          Text(
                            "Cilebut - Manggarai",
                            style: heading5(),
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
                                  gradient: index == 3
                                      ? secondaryLinear
                                      : whiteLinear,
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
                                    style: heading6(
                                        color: index == 3
                                            ? Colors.white
                                            : primaryColor),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    allDay[index],
                                    style: bodyM(
                                        fontWeight: FontWeight.bold,
                                        color: index == 3
                                            ? Colors.white
                                            : primaryColor),
                                  ),
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
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
                                style: bodyXL(fontWeight: FontWeight.bold),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Rp.25.000",
                                    style: bodyM(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "1 Remains",
                                    style: bodyM(
                                        color: Colors.red,
                                        fontWeight: FontWeight.w600),
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
                                    "KSB",
                                    style: bodyM(
                                        color: Colors.grey[500],
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "12:00 PM",
                                    style: bodyM(
                                        color: Colors.grey[500],
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.circle_outlined,
                                      size: 10,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    DottedLine(
                                      direction: Axis.horizontal,
                                      dashLength: 5,
                                      lineLength: 50,
                                      dashColor: Colors.grey.withOpacity(0.5),
                                      lineThickness: 2,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Icon(
                                      Icons.circle_rounded,
                                      size: 10,
                                      color: secondaryColor,
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    stationShort[index],
                                    style: bodyM(
                                        color: Colors.grey[500],
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "12:35 PM",
                                    style: bodyM(
                                        color: Colors.grey[500],
                                        fontWeight: FontWeight.bold),
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
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                decoration: BoxDecoration(
                                    color: orangeColor.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text(
                                  'Commuter Line-A',
                                  style: bodyM(
                                      color: orangeColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "35 minutes",
                                style: bodyM(
                                    color: Colors.grey[500],
                                    fontWeight: FontWeight.w600),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              OrderingSummaryScreen()));
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      color: secondaryColor,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: SvgPicture.asset(
                                    'assets/icons/eye_search.svg',
                                    colorFilter: const ColorFilter.mode(
                                        Colors.white, BlendMode.srcIn),
                                  ),
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
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(255, 245, 245, 245),
                            blurRadius: 5.0,
                            offset: Offset(0, 5)),
                      ]),
                  child: Center(
                      child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                    decoration: BoxDecoration(
                        color: orangeColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
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
                          style: bodyM(color: Colors.white),
                        ),
                      ],
                    ),
                  )))
            ],
          )
        ],
      ),
    );
  }
}
