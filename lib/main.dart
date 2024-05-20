import 'package:flutter/material.dart';
import 'package:slicing_mhyticket/screens/home_screen.dart';
import 'package:flutter/services.dart';
import 'package:slicing_mhyticket/screens/orderingsummary_screen.dart';
import 'package:slicing_mhyticket/screens/seatchooser_screen.dart';
import 'package:slicing_mhyticket/screens/ticketlist_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark // Status bar color
        ));
    return MaterialApp(
      title: 'MhyTrain',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          fontFamily: 'PlusJakartaSans'),
      // home: const TicketListScreen(),
      // home: const OrderingSummaryScreen(),
      // home: const SeatChooser(),
      home: const HomeScreen(),
    );
  }
}
