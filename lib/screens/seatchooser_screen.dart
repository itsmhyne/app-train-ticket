import 'package:flutter/material.dart';
import 'package:slicing_mhyticket/custom/constant.dart';
import 'package:slicing_mhyticket/custom/textstyle.dart';

class SeatChooser extends StatelessWidget {
  const SeatChooser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg4.png',
            fit: BoxFit.cover,
          ),
          Column(children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Select Your\nSeat",
                        style: heading4(),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Commuter Line (A)",
                            style: heading7(),
                          ),
                          Text(
                            "Wagon 1 -3A",
                            style: heading6(color: secondaryColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    // padding: const EdgeInsets.symmetric(horizontal: 25),
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ItemStatusOrder(
                            status: "Available", statusColor: Colors.white),
                        ItemStatusOrder(
                            status: "Filled", statusColor: orangeColor),
                        ItemStatusOrder(
                            status: "Selected", statusColor: secondaryColor),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 60,
                            child: Text(
                              "Wagon",
                              style: heading7(),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SeatPositionWidget(seatText: "A"),
                                  SeatPositionWidget(seatText: "B"),
                                  SeatPositionWidget(seatText: "C"),
                                  SeatPositionWidget(seatText: "D"),
                                  SeatPositionWidget(seatText: "E"),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 50,
                              child: SingleChildScrollView(
                                child: Column(
                                    children: List.generate(
                                  6,
                                  (index) => Container(
                                    height: 150,
                                    margin: const EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                        color: index == 0
                                            ? secondaryColor
                                            : Colors.white,
                                        border:
                                            Border.all(color: Colors.black26),
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Center(
                                        child: Text(
                                      "${index + 1}",
                                      style: heading7(
                                          color: index == 0
                                              ? Colors.white
                                              : Colors.black),
                                    )),
                                  ),
                                )),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: GridView.count(
                              crossAxisCount: 5,
                              padding: const EdgeInsets.all(10),
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              children: List.generate(
                                  75,
                                  (index) => Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: Colors.black26),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                      )),
                            ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
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
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  decoration: BoxDecoration(
                      color: orangeColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    "SELECT YOUR SEAT",
                    textAlign: TextAlign.center,
                    style: heading7(color: Colors.white),
                  ),
                ))
          ])
        ],
      ),
    );
  }
}

class SeatPositionWidget extends StatelessWidget {
  SeatPositionWidget({
    super.key,
    required this.seatText,
  });

  String seatText;

  @override
  Widget build(BuildContext context) {
    return Text(
      seatText,
      style: heading7(),
    );
  }
}

class ItemStatusOrder extends StatelessWidget {
  const ItemStatusOrder({
    super.key,
    required this.status,
    required this.statusColor,
  });

  final String status;
  final Color statusColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
              color: statusColor, borderRadius: BorderRadius.circular(5)),
        ),
        const SizedBox(
          width: 7,
        ),
        Text(
          status,
          style: bodyL(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
