import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slicing_mhyticket/custom/constant.dart';
import 'package:slicing_mhyticket/custom/data.dart';
import 'package:slicing_mhyticket/custom/textstyle.dart';
import 'package:slicing_mhyticket/screens/ticketlist_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg1.png',
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: SvgPicture.asset(
                    'assets/icons/menu.svg',
                    width: 40,
                    height: 40,
                    colorFilter:
                        const ColorFilter.mode(primaryColor, BlendMode.srcIn),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Where are you\ngoing right now?',
                      style: heading4(),
                    ),
                    Image.asset('assets/images/train.png')
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(255, 245, 245, 245),
                            blurRadius: 5.0,
                            offset: Offset(0, 10)),
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
                                'Departure',
                                style: bodyXL(
                                    color: secondaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'KSB',
                                style: heading5(),
                              ),
                              Text(
                                'Kesamben Station',
                                style: bodyM(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SvgPicture.asset(
                            'assets/icons/data_transfer.svg',
                            width: 24,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Destination',
                                style: bodyXL(
                                    color: secondaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'SBY',
                                style: heading5(),
                              ),
                              Text(
                                'Surabaya Station',
                                style: bodyM(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: const Divider(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Date of Departure',
                                style: bodyXL(
                                    color: secondaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'FRI, 02 Nov 2023',
                                style: heading5(),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Switch(
                                value: false,
                                onChanged: (value) {},
                                activeColor: Colors.blue[500],
                                activeTrackColor: Colors.lightBlueAccent,
                                inactiveThumbColor: Colors.grey,
                                inactiveTrackColor: Colors.grey[100],
                              ),
                              Text(
                                "Round-Trip",
                                style: heading7(),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Total Passenger',
                                style: bodyXL(
                                    color: secondaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  SvgPicture.asset(
                                      'assets/icons/min_circle.svg'),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Text(
                                      '2',
                                      style: heading7(),
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/plus_circle.svg',
                                    colorFilter: const ColorFilter.mode(
                                        orangeColor, BlendMode.srcIn),
                                  ),
                                ],
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TicketListScreen()));
                            },
                            child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 20),
                                decoration: BoxDecoration(
                                    color: orangeColor,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Text(
                                  'Find Ticket',
                                  style: heading7(color: Colors.white),
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'My Ticket',
                  style: heading5(),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: day.length,
                    itemBuilder: (context, index) {
                      return Container(
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.only(right: 15),
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
                              Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  decoration: BoxDecoration(
                                      color: orangeColor,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Text(
                                    day[index],
                                    style: bodyM(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                              const SizedBox(
                                width: 30,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    arrival[index],
                                    style: bodyXL(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    tracking[index],
                                    style: bodyM(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Container(
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    color: secondaryColor,
                                    borderRadius: BorderRadius.circular(5)),
                                child: SvgPicture.asset(
                                  'assets/icons/eye_search.svg',
                                  colorFilter: const ColorFilter.mode(
                                      Colors.white, BlendMode.srcIn),
                                ),
                              )
                            ],
                          ));
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'News',
                  style: heading5(),
                ),
                const SizedBox(
                  height: 20,
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
                                  Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 10),
                                      decoration: BoxDecoration(
                                          color:
                                              secondaryColor.withOpacity(0.1),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Text(
                                        'Weather',
                                        style: bodyM(
                                            color: secondaryColor,
                                            fontWeight: FontWeight.w500),
                                      )),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "The weather for\ntoday is great\nfor trip",
                                    style: bodyXL(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              SvgPicture.asset(
                                "assets/images/cuaca.svg",
                              )
                            ],
                          ));
                    },
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
