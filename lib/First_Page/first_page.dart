import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yemekapp/Login_Page/login_page.dart';
import 'package:yemekapp/SignUp_Page/signup_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.width * 0.06,
              horizontal: MediaQuery.of(context).size.width * 0.08),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "ATLA",
                        style: GoogleFonts.roboto(
                            color: Colors.black, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset("assets/lottiefood.json",
                        height: MediaQuery.of(context).size.height * 0.4),
                  ],
                ),
                Text(
                  "Sat,\nKesfet,\nYenilen!",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.033),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                const LoginWithSocial(
                    text: "GOOGLE İLE GİRİŞ YAP", svg: "assets/google.svg"),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                const LoginWithSocial(
                    text: "iCLOUD İLE GİRİŞ YAP", svg: "assets/apple.svg"),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    LoginButton(
                      text: "GİRİŞ YAP",
                      color: Colors.redAccent,
                      func: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                      },
                    ),
                    LoginButton(
                      text: "ÜYE OL",
                      color: Colors.amber,
                      func: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupPage()));
                      },
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

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
    required this.text,
    required this.color,
    required this.func,
  }) : super(key: key);
  final String text;
  final Color color;
  final Function func;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.35,
      height: MediaQuery.of(context).size.width * 0.13,
      child: ElevatedButton(
        onPressed: () {
          func();
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

class LoginWithSocial extends StatelessWidget {
  const LoginWithSocial({
    Key? key,
    required this.text,
    required this.svg,
  }) : super(key: key);
  final String text;
  final String svg;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
      height: MediaQuery.of(context).size.width * 0.13,
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.09,
              width: MediaQuery.of(context).size.width * 0.1,
              child: SvgPicture.asset(svg),
            ),
            Text(
              text,
              style: GoogleFonts.roboto(
                  color: Colors.black, fontWeight: FontWeight.w800),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }
}
