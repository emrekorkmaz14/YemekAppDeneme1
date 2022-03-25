import 'package:flutter/material.dart';

import 'daily.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: const [
                DeliveryCard(
                  img: "assets/cigerrbg.png",
                  timetext: "35 Dk",
                  pricetext: "25 TL",
                  startext: "4,3",
                  free: false,
                  order: true,
                  
                ),
                DeliveryCard(
                  img: "assets/lahmacun.png",
                  timetext: "60 Dk",
                  pricetext: "10 TL",
                  startext: "3,9",
                  free: false,
                  order: true,

                ),
                DeliveryCard(
                  img: "assets/hamburger.png",
                  timetext: "25 Dk",
                  pricetext: "15 TL",
                  startext: "4,8",
                  free: false,
                  order: true,

                ),
              ],
            ),
          )),
    );
  }
}

