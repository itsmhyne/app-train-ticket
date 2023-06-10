import 'package:flutter/material.dart';
import 'package:mhytickettrain/page/order_page.dart';
import 'package:mhytickettrain/page/splashscreen_page.dart';
// import 'package:mhytickettrain/bloc/export.dart';
// import 'package:mhytickettrain/page/font_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // return MultiBlocProvider(providers: [
    //   BlocProvider(create: (context) => NamaBloc(repository))
    // ], child: AppView());
    return const AppView();
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mhy Ticket Train',
      color: Colors.blue[500],
      theme: ThemeData(fontFamily: 'Poppins'),
      home: OrderPage(),
    );
  }
}
