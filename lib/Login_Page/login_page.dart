import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yemekapp/First_Page/first_page.dart';
import 'package:yemekapp/Home_Page/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

bool isChecked = false;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.redAccent,
          centerTitle: true,
          title: Text(
            "ÜYE GİRİŞİ",
            style: GoogleFonts.roboto(
                color: Colors.redAccent, fontWeight: FontWeight.w800),
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
                const TextField1(
                  htext: "Kullanıcı Adı veya E-posta",
                ),
                const TextField1(
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
                      "Beni hatırla",
                      style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.08,
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Parolamı unuttum",
                          style: GoogleFonts.roboto(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                LoginButtonLong(text: "GİRİŞ YAP", color: Colors.redAccent)
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
  }) : super(key: key);
  final String? text;
  final String? htext;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.01,
              vertical: MediaQuery.of(context).size.width * 0.03),
          child: TextField(
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

class LoginButtonLong extends StatelessWidget {
  const LoginButtonLong({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
      height: MediaQuery.of(context).size.width * 0.13,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        },
        child: Text(
          text,
          style: GoogleFonts.roboto(
              color: Colors.black, fontWeight: FontWeight.w800),
        ),
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
      ),
    );
  }
}
