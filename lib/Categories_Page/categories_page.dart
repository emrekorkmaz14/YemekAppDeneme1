import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Kategoriler"),
            centerTitle: true,
            backgroundColor: Colors.redAccent,
          ),
          body: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05,
                      vertical: MediaQuery.of(context).size.height * 0.018),
                  height: 70,
                  child: TextField(
                    cursorColor: const Color.fromARGB(255, 0, 0, 0),
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.05),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        hintText: "Search",
                        hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        suffixIcon: const Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 0, 0, 0),
                        )),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                const CategoryText(
                  txt: "Sağlıklı Yaşam",
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Expanded(
                  child: ListView.builder(
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: const [
                            CatergoryCard(
                              txt: "Vegan",
                              img: "assets/veganfood.png",
                            ),
                            CatergoryCard(
                              txt: "Sporcu",
                              img: "assets/sportsfood.png",
                            ),
                            CatergoryCard(
                              txt: "Vegan",
                              img: "assets/veganfood.png",
                            ),
                            CatergoryCard(
                              txt: "Vegan",
                              img: "assets/veganfood.png",
                            ),
                            CatergoryCard(
                              txt: "Vegan",
                              img: "assets/veganfood.png",
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const CategoryText(
                  txt: "Mutfaklar",
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Expanded(
                  child: ListView.builder(
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: const [
                            CatergoryCard(
                              txt: "Vegan",
                              img: "assets/veganfood.png",
                            ),
                            CatergoryCard(
                              txt: "Sporcu",
                              img: "assets/sportsfood.png",
                            ),
                            CatergoryCard(
                              txt: "Vegan",
                              img: "assets/veganfood.png",
                            ),
                            CatergoryCard(
                              txt: "Vegan",
                              img: "assets/veganfood.png",
                            ),
                            CatergoryCard(
                              txt: "Vegan",
                              img: "assets/veganfood.png",
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const Spacer(
                  flex: 2,
                )
              ],
            ),
          ),
        ));
  }
}

class CategoryText extends StatelessWidget {
  const CategoryText({
    Key? key,
    required this.txt,
  }) : super(key: key);
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.redAccent,
          ),
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height * 0.04,
          width: MediaQuery.of(context).size.width * 0.3,
          child: Text(
            txt,
            style: const TextStyle(
                fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class CatergoryCard extends StatelessWidget {
  const CatergoryCard({
    Key? key,
    required this.img,
    required this.txt,
  }) : super(key: key);
  final String img;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.035),
      child: Column(
        children: [
          GestureDetector(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage(img), fit: BoxFit.cover),
                color: const Color.fromARGB(255, 255, 255, 255),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: const Offset(0, 3))
                ],
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            onTap: () => print('tıklandı'),
          ),
          Text(
            txt,
            style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
        ],
      ),
    );
  }
}
