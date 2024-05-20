import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slicing_mhyticket/custom/constant.dart';
import 'package:slicing_mhyticket/custom/data.dart';
import 'package:slicing_mhyticket/custom/textstyle.dart';

class OrderingSummaryScreen extends StatelessWidget {
  const OrderingSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg3.png',
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
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
                        "Ordering Summary",
                        style: heading5(),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
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
                            'Kesamben',
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
                                    color: fontColorSecondary,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "12:00 PM",
                                style: bodyM(
                                    color: fontColorSecondary,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                                'SBY',
                                style: bodyM(
                                    color: fontColorSecondary,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "12:35 PM",
                                style: bodyM(
                                    color: fontColorSecondary,
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
                                color: fontColorSecondary,
                                fontWeight: FontWeight.w600),
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
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  leading: SvgPicture.asset(
                    'assets/icons/bookmark.svg',
                    width: 24,
                    colorFilter:
                        const ColorFilter.mode(orangeColor, BlendMode.srcIn),
                  ),
                  title: Text(
                    'Saved Passenger',
                    style: heading6(),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: people.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromARGB(255, 245, 245, 245),
                                    blurRadius: 5.0,
                                    offset: Offset(0, 5)),
                              ]),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          people[index],
                                          style: heading6(),
                                        ),
                                        Text(
                                          email[index],
                                          style:
                                              bodyM(color: fontColorSecondary),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: orangeColor),
                                        child: Text(
                                          "Add Passenger",
                                          style: bodyM(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  leading: SvgPicture.asset(
                    'assets/icons/member.svg',
                    width: 24,
                    colorFilter:
                        const ColorFilter.mode(orangeColor, BlendMode.srcIn),
                  ),
                  title: Text(
                    'Passenger Details',
                    style: heading6(),
                  ),
                  trailing: Text(
                    '+ Add Passenger',
                    style: bodyM(color: secondaryColor),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
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
                      ListTile(
                        // contentPadding: EdgeInsets.all(0),
                        leading: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: orangeColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: SvgPicture.asset(
                            'assets/icons/happy.svg',
                            width: 24,
                            colorFilter: const ColorFilter.mode(
                                Colors.white, BlendMode.srcIn),
                          ),
                        ),
                        title: Text(
                          'Passenger 1',
                          style: heading7(),
                        ),
                        trailing: SvgPicture.asset(
                          'assets/icons/slide_up.svg',
                          width: 24,
                          colorFilter: const ColorFilter.mode(
                              fontColorSecondary, BlendMode.srcIn),
                        ),
                      ),
                      const DottedLine(
                        dashLength: 10,
                        dashColor: fontColorSecondary,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 4,
                              child: TextField(
                                decoration: InputDecoration(
                                    label: Text(
                                  'Type of Identity',
                                  style: bodyM(
                                      color: fontColorSecondary,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    label: Text(
                                  'Identity Number',
                                  style: bodyM(
                                      color: fontColorSecondary,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              label: Text(
                            'Full Name',
                            style: bodyM(
                                color: fontColorSecondary,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Infant passengers do not get their own seat. Passengers under 18 years old can fill in the family card number or date of birth (ddmmyyyy)',
                          style: bodySM(color: fontColorSecondary),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Text(
                          'Pilih Kursi',
                          textAlign: TextAlign.center,
                          style: heading7(color: fontColorSecondary),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: orangeColor,
                        ),
                        child: Text(
                          'Lanjut',
                          textAlign: TextAlign.center,
                          style: heading7(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
