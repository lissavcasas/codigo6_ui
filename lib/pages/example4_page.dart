import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Example4Page extends StatelessWidget {
  const Example4Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.amber,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            "https://images.pexels.com/photos/1639556/pexels-photo-1639556.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          ),
        ),
        gradient: LinearGradient(
          colors: [
            Colors.indigo,
            Colors.pinkAccent,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //custom
              children: [
                Center(
                  child: Text(
                    "Burger \nQueen",
                    style: GoogleFonts.fredokaOne(
                      color: Colors.white,
                      fontSize: 30.0,
                      height: 1,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Expanded(child: SizedBox()),
                Text(
                  "Good Food",
                  style: GoogleFonts.fredokaOne(
                    color: Colors.white,
                    fontSize: 36.0,
                    fontWeight: FontWeight.w800,
                    decoration: TextDecoration.underline,
                    decorationColor: const Color(0xffFF8D07).withOpacity(0.5),
                    decorationThickness: 2.5,
                  ),
                ),
                Text(
                  "Tasty Food *",
                  style: GoogleFonts.fredokaOne(
                    color: Colors.white,
                    fontSize: 36.0,
                    fontWeight: FontWeight.w800,
                    decoration: TextDecoration.underline,
                    decorationColor: const Color(0xffFF8D07).withOpacity(0.5),
                    decorationThickness: 2.5,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 54.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFF8D07),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                    ),
                    child: const Text(
                      "Sign in",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
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

    //return Scaffold(
    // body: Container(
    //   width: double.infinity,
    //   decoration: BoxDecoration(
    //     color: Colors.amber,
    //     image: DecorationImage(
    //       fit: BoxFit.cover,
    //       image: NetworkImage(
    //         "https://images.pexels.com/photos/1639556/pexels-photo-1639556.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    //       ),
    //     ),
    //   ),
    //   child: Column(
    //     children: [
    //       Text(
    //         "Burger",
    //       ),
    //       TextField(),
    //     ],
    //   ),
    // ),

    // body: Stack(
    //   children: [
    //     Container(
    //       decoration: BoxDecoration(
    //         image: DecorationImage(
    //           fit: BoxFit.cover,
    //           image: NetworkImage(
    //             "https://images.pexels.com/photos/1639556/pexels-photo-1639556.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    //           ),
    //         ),
    //       ),
    //     ),
    //     Column(
    //       children: [
    //         TextField(),
    //       ],
    //     ),
    //   ],
    // ),
    //);
  }
}
