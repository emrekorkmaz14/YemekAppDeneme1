import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class DailyPage extends StatefulWidget {
  const DailyPage({Key? key}) : super(key: key);

  @override
  State<DailyPage> createState() => _DailyPageState();
}

class _DailyPageState extends State<DailyPage> {
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
                  order: false,
                ),
                DeliveryCard(
                  img: "assets/lahmacun.png",
                  timetext: "60 Dk",
                  pricetext: "10 TL",
                  startext: "3,9",
                  free: false,
                  order: false,
                ),
                DeliveryCard(
                  img: "assets/hamburger.png",
                  timetext: "25 Dk",
                  pricetext: "15 TL",
                  startext: "4,8",
                  free: false,
                  order: false,
                ),
              ],
            ),
          )),
    );
  }
}

class DeliveryCard extends StatelessWidget {
  const DeliveryCard({
    Key? key,
    required this.img,
    required this.pricetext,
    required this.timetext,
    this.free,
    required this.startext,
    this.order,
  }) : super(key: key);
  final String img;
  final String pricetext;
  final String timetext;
  final String startext;
  final bool? free;
  final bool? order;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        margin:
            EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.03),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Image.asset(
                img,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            free == false
                ? Row(
                    children: [
                      const Text("Fiyat : "),
                      Text(pricetext),
                      const Spacer(),
                      TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.shopping_basket,
                            color: Colors.redAccent,
                          ),
                          label: const Text(
                            "Sepete Ekle",
                            style: TextStyle(color: Colors.redAccent),
                          )),
                    ],
                  )
                : free == true
                    ? Row(
                        children: [
                          const Text("Ücretsiz"),
                          const Spacer(),
                          TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.shopping_basket,
                                color: Colors.redAccent,
                              ),
                              label: const Text(
                                "Sepete Ekle",
                                style: TextStyle(color: Colors.redAccent),
                              )),
                        ],
                      )
                    : const SizedBox(),
            order == false
                ? Row(
                    children: [
                      const Text("Tahmini Varış Süresi : "),
                      Text(timetext),
                      const Spacer(),
                      const Icon(
                        Icons.star,
                        color: Colors.redAccent,
                      ),
                      Text(startext),
                    ],
                  )
                : order == true
                    ? Row(
                        children: [
                          TextButton(
                              onPressed: () {
                                DatePicker.showDatePicker(context,
                                    showTitleActions: true,
                                    minTime: DateTime(2022, 3, 27),
                                    maxTime: DateTime(2022, 12, 30),
                                    onChanged: (date) {
                                  print('change $date');
                                }, onConfirm: (date) {
                                  print('confirm $date');
                                },
                                    currentTime: DateTime.now(),
                                    locale: LocaleType.tr);
                              },
                              child: const Text(
                                'Zaman Dilimini Seçiniz',
                                style: TextStyle(color: Colors.redAccent),
                              )),
                          const Spacer(),
                          const Icon(
                            Icons.star,
                            color: Colors.redAccent,
                          ),
                          Text(startext),
                        ],
                      )
                    : Row(
                        children: [
                          const Spacer(),
                          const Icon(
                            Icons.star,
                            color: Colors.redAccent,
                          ),
                          Text(startext),
                        ],
                      ),
            const Divider(
              thickness: 6,
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }
}
