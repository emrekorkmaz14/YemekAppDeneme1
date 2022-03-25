import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yemekapp/First_Page/first_page.dart';
import 'package:yemekapp/Login_Page/login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

bool isChecked = false;
bool isChecked2 = false;

class _SignupPageState extends State<SignupPage> {
  late final myController = TextEditingController();
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.amber.shade600,
          centerTitle: true,
          title: Text(
            "ÜYELİK FORMU",
            style: GoogleFonts.roboto(
                color: Colors.amber.shade800, fontWeight: FontWeight.w800),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.width * 0.07,
              horizontal: MediaQuery.of(context).size.width * 0.10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const LoginWithSocial(
                    text: "GOOGLE İLE GİRİŞ YAP", svg: "assets/google.svg"),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                const LoginWithSocial(
                    text: "iCLOUD İLE GİRİŞ YAP", svg: "assets/apple.svg"),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                Text(
                  "VEYA",
                  style: GoogleFonts.roboto(
                      color: Colors.black, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                TextField1(
                  controller: myController2,
                  htext: "Kullanıcı Adı",
                ),
                TextField1(
                  controller: myController,
                  htext: "E-posta",
                ),
                TextField1(
                  controller: myController1,
                  htext: "Şifre",
                  icon: Icon(Icons.visibility),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  children: [
                    Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          isChecked = !isChecked;
                          setState(() {});
                        }),
                    Text(
                      "Üyelik Koşulları ve Kişisel Verilerin Korunması\nsözleşmelerini kabul ediyorum.",
                      style: GoogleFonts.roboto(
                          fontSize: MediaQuery.of(context).size.width * 0.027),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: isChecked2,
                        onChanged: (value) {
                          isChecked2 = !isChecked2;
                          setState(() {});
                        }),
                    Text(
                      "İndirim ve kampanyalardan anında haberdar olabilmek \niçin Elektronik İleti almak istiyorum.",
                      style: GoogleFonts.roboto(
                          fontSize: MediaQuery.of(context).size.width * 0.027),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                LoginButtonLong(
                    text: "GİRİŞ YAP", color: Colors.amber.shade600),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Zaten Üye misin?",
                      style: GoogleFonts.roboto(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        if (myController.text != null &&
                            myController1.text != null) {
                          FirebaseAuth.instance.createUserWithEmailAndPassword(
                              email: myController.text,
                              password: myController1.text);
                        }
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                      },
                      child: Text(
                        "Giriş Yap",
                        style: GoogleFonts.roboto(
                            color: Colors.amber.shade600,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextField1 extends StatelessWidget {
  const TextField1({
    Key? key,
    this.text,
    this.htext,
    this.icon,
    required this.controller,
  }) : super(key: key);
  final String? text;
  final String? htext;
  final Icon? icon;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.01,
              vertical: MediaQuery.of(context).size.width * 0.03),
          child: TextField(
            controller: controller,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
              suffixIcon: icon,
              suffixIconColor: Colors.black,
              hintText: htext,
              hintStyle: GoogleFonts.roboto(
                  color: Colors.grey.shade500, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}