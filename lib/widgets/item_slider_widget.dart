import 'package:flutter/material.dart';

class ItemSliderWidget extends StatelessWidget {
  const ItemSliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      // color: Colors.amber,
      margin: const EdgeInsets.only(right: 16.0),
      constraints: BoxConstraints(
        maxWidth: width * 0.38,
      ),
      child: Column(
        children: [
          Container(
            width: width * 0.38,
            height: height * 0.16,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              image: const DecorationImage(
                image: NetworkImage(
                  "https://www.google.com/maps/d/u/0/thumbnail?mid=1hOd-ZE40lXimkmQ-Ywb3CBHmgSU&hl=en_US",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: Column(
              children: [
                const Text(
                  "Blok C Benyamin dfdf lorem asdsad ",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xff2A4055),
                    fontWeight: FontWeight.w700,
                    fontSize: 15.0,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Av. Lima 123 - Cayma - Arequipa",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: const Color(0xff2A4055).withOpacity(0.7),
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Text(
                      "Open ",
                      style: TextStyle(
                        color: Color(0xff43B995),
                        fontWeight: FontWeight.w700,
                        fontSize: 15.0,
                      ),
                    ),
                    Text(
                      "07:00 - 22:00",
                      style: TextStyle(
                        color: const Color(0xff2A4055).withOpacity(0.7),
                        fontWeight: FontWeight.w600,
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
