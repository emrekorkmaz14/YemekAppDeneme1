import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ProfilePage"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.25),
                    spreadRadius: 5,
                    blurRadius: 3,
                    
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: const [
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.person,
                        size: 65,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Emre Korkmaz",
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey.shade700,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.mail,
                        size: 35,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "emrekorkmz14@gmail.com",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
