import 'package:codigo6_ui/widgets/circle_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Example3Page extends StatelessWidget {
  const Example3Page({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          //Fondo
          Stack(
            children: [
              Positioned(
                top: -height * 0.3,
                left: -height * 0.05,
                child: CircleWidget(
                  color: const Color(0xff35969D),
                  radius: height * 0.2,
                ),
              ),
              Positioned(
                top: -height * 0.30,
                right: -height * 0.17,
                child: CircleWidget(
                  color: const Color(0xff8AEC9E),
                  radius: height * 0.28,
                ),
              ),
            ],
          ),

          //Formulario
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(26.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.13,
                    ),
                    Text(
                      "reisup",
                      style: GoogleFonts.montserrat(
                        color: const Color(0xff3EA2A8),
                        fontSize: 32.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Text(
                      "You have goals.",
                      style: GoogleFonts.montserrat(
                        color: const Color(0xff2E303E),
                        fontSize: 24.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.9,
                      ),
                    ),
                    Text(
                      "Invest to achive them.",
                      style: GoogleFonts.montserrat(
                        color: const Color(0xff2E303E),
                        fontSize: 24.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.9,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    TextField(
                      cursorColor: const Color(0xff3EA2A8),
                      decoration: InputDecoration(
                        hintText: "Email*",
                        hintStyle: GoogleFonts.montserrat(
                          color: Colors.black38,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color(0xff3EA2A8).withOpacity(0.50),
                            width: 2.5,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color(0xff3EA2A8).withOpacity(0.50),
                            width: 2.5,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    TextField(
                      cursorColor: const Color(0xff3EA2A8),
                      decoration: InputDecoration(
                        hintText: "Password*",
                        hintStyle: GoogleFonts.montserrat(
                          color: Colors.black38,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color(0xff3EA2A8).withOpacity(0.50),
                            width: 2.5,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color(0xff3EA2A8).withOpacity(0.50),
                            width: 2.5,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.06,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 56.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff2E303E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                        ),
                        child: const Text("Log in"),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 56.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff3EA2A8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                        ),
                        child: const Text("Sign in"),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Center(
                      child: Text(
                        "Forgot username or password?",
                        style: GoogleFonts.montserrat(
                          fontSize: 15.0,
                          color: const Color(0xff2E303E),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Center(
                      child: Text(
                        "By proceding you also agree to the Terms of Service and Privacy Policy",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          fontSize: 14.0,
                          color: const Color(0xff2E303E).withOpacity(0.6),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
