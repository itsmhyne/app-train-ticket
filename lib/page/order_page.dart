import 'package:flutter/material.dart';
import 'package:mhytickettrain/bloc/export.dart';
import 'package:mhytickettrain/widgets/responsivebutton_widget.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/img/bg4.png"),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.paddingOf(context).top,
              ),
              Container(
                height: 100,
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Select Your\nSeat",
                      style: h2semibold(),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Commuter Line (A)",
                          style: mediumtextmedium(),
                        ),
                        Text(
                          "Wagon 1 -3A",
                          style: largetextsemibold(color: Colors.blue[500]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                height: 50,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ItemStatusOrder(
                        status: "Available", statusColor: Colors.white),
                    ItemStatusOrder(
                        status: "Filled", statusColor: Colors.orange),
                    ItemStatusOrder(
                        status: "Selected", statusColor: Colors.blue),
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
                                style: largetextsemibold(),
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
                                              ? Colors.blue[500]
                                              : Colors.white,
                                          border:
                                              Border.all(color: Colors.black26),
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Center(
                                          child: Text(
                                        "${index + 1}",
                                        style: largetextbold(
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
              SizedBox(
                height: 75,
                child: Center(
                    child: ResponsivebuttonWidget(
                        padHor: 30, padVer: 15, btnText: "SELECT YOUR SEAT")),
              )
            ],
          )
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
    return Container(
      child: Text(
        seatText,
        style: largetextsemibold(),
      ),
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
          style: mediumtextmedium(),
        )
      ],
    );
  }
}
