import 'package:flutter/material.dart';

class ItemRecommnedation2Widget extends StatelessWidget {
  const ItemRecommnedation2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14.0),
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 8.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 12,
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(
              "https://images.pexels.com/photos/323775/pexels-photo-323775.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              height: 76,
              width: 68,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 12.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Padanaran House",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                    5,
                    (index) => const Icon(
                      Icons.star,
                      size: 14,
                      color: Colors.amber,
                    ),
                  ),
                  const Text(
                    "5.0",
                  ),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.location_on,
                    size: 14.0,
                    color: Colors.black45,
                  ),
                  Text(
                    "Padamara, Jawa Tengah",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black45,
                      height: 1.1,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
