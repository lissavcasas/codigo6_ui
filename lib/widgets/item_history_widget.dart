import 'package:flutter/material.dart';

class ItemHistoryWidget extends StatelessWidget {
  const ItemHistoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      margin: const EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 12.0,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/car.png",
            height: 62.0,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  height: 10,
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
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "05 Sep 2023",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: const Color(0xff2A4055).withOpacity(0.7),
                  fontWeight: FontWeight.w500,
                  fontSize: 13.0,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "\$30.00",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color(0xff39B090),
                  fontWeight: FontWeight.w700,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
