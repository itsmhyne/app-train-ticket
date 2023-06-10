import 'package:flutter/material.dart';
import 'package:mhytickettrain/bloc/export.dart';
import 'package:mhytickettrain/data/model/item_model.dart';
import 'package:mhytickettrain/widgets/responsivebutton_widget.dart';
import 'package:mhytickettrain/widgets/roundedbutton_widget.dart';

class OrderingSummaryPage extends StatefulWidget {
  OrderingSummaryPage({super.key});

  @override
  State<OrderingSummaryPage> createState() => _OrderingSummaryPageState();
}

class _OrderingSummaryPageState extends State<OrderingSummaryPage> {
  final List<String> people = [
    "M. Hamdan Yusuf",
    "Isna Mufidah",
    "Isti Ulin Nuha"
  ];

  final List<String> email = [
    "hamdan@gmail.com",
    "isna@gmail.com",
    "ulin@gmail.com",
  ];

  List<ItemModel> _data = generateItems(5); // Contoh data untuk item ekspansi

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/img/bg3.png",
              fit: BoxFit.contain,
            ),
          ),
          Column(
            children: [
              Container(
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
                            "Ordering Summary",
                            style: h4semibold(),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
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
                                "Bogor Station",
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
                                    "BGR",
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
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.bookmark,
                          color: Color(0xffFFAB67),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Saved Passenger",
                          style: h4semibold(),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: people.length,
                          itemBuilder: (context, index) {
                            return Container(
                              width: MediaQuery.of(context).size.width - 50,
                              padding: const EdgeInsets.all(20),
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                        color:
                                            Color.fromARGB(255, 245, 245, 245),
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
                                              style: h4bold(),
                                            ),
                                            Text(
                                              email[index],
                                              style: mediumtextregular(),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 25,
                                        ),
                                        ResponsivebuttonWidget(
                                            padHor: 10,
                                            padVer: 10,
                                            btnText: "Add Passenger"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.people,
                              color: Color(0xffFFAB67),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Passenger Detail",
                              style: h4semibold(),
                            ),
                          ],
                        ),
                        Text(
                          "+ Add Passenger",
                          style: largetextmedium(color: Colors.blue[500]),
                        )
                      ],
                    ),
                    // Expanded(
                    //   child:
                    ListView(
                      // physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: _data.map<Widget>((ItemModel item) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: ExpansionPanelList(
                            elevation: 1,
                            expandedHeaderPadding: EdgeInsets.all(0),
                            children: [
                              ExpansionPanel(
                                headerBuilder:
                                    (BuildContext context, bool isExpanded) {
                                  return ListTile(
                                    title: Text("1"),
                                  );
                                },
                                body: ListTile(
                                  title: Text("2"),
                                ),
                                isExpanded: false,
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                    // )
                  ],
                ),
              ),
              // Container(
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              //   width: MediaQuery.of(context).size.width,
              //   decoration: const BoxDecoration(
              //       // color: Colors.white,
              //       borderRadius: BorderRadius.only(
              //           topLeft: Radius.circular(15),
              //           topRight: Radius.circular(15)),
              //       boxShadow: [
              //         BoxShadow(
              //             color: Color.fromARGB(255, 245, 245, 245),
              //             blurRadius: 5.0,
              //             offset: Offset(0, 5)),
              //       ]),
              //   child: Center(
              //       child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       RoundedbuttonWidget(
              //         padHor: 50,
              //         padVer: 15,
              //         widget: Text(
              //           "PILIH KURSI",
              //           style: largetextsemibold(color: Colors.grey[500]),
              //         ),
              //         color: Colors.white,
              //       ),
              //       const SizedBox(
              //         width: 20,
              //       ),
              //       RoundedbuttonWidget(
              //           padHor: 50,
              //           padVer: 15,
              //           widget: Text(
              //             "LANJUT",
              //             style: largetextsemibold(color: Colors.white),
              //           )),
              //     ],
              //   )),
              // )
            ],
          )
        ],
      ),
    );
  }
}
