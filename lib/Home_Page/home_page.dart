import 'package:flutter/material.dart';
import 'package:yemekapp/Home_Page/daily.dart';
import 'package:yemekapp/Home_Page/order.dart';
import 'package:yemekapp/Home_Page/pendent.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: MaterialApp(
        theme: ThemeData(backgroundColor: Colors.white),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: "Günlük",
                ),
                Tab(
                  text: "Sipariş",
                ),
                Tab(
                  text: "Askıda",
                ),
              ],
            ),
            title: const Text('Adres'),
          ),
          body: const TabBarView(
            children: [
              DailyPage(),
              OrderPage(),
              PendentPage(),
            ],
          ),
        ),
      ),
    );
  }
}
