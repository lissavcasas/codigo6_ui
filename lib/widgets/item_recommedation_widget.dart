import 'package:flutter/material.dart';

class ItemRecommendationWidget extends StatelessWidget {
  const ItemRecommendationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.only(
        right: 12.0,
        bottom: 16.0,
        top: 4.0,
      ),
      padding: const EdgeInsets.all(14.0),
      constraints: BoxConstraints(
        maxWidth: width * 0.6,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          //Imagen principal
          Container(
            width: width * 0.6,
            height: height * 0.17,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                ),
              ),
            ),
          ),

          //Título y puntuación
          const SizedBox(
            height: 14.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child: Text(
                  "Minimalist House",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                  ),
                ),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    size: 16.0,
                    color: Colors.amber,
                  ),
                  Text(
                    "4.5",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),

          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: const [
                        Text(
                          "\$734",
                          style: TextStyle(
                            color: Color(0xff349DFD),
                            fontSize: 17.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "/Month",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 14.0,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.location_on,
                          size: 14.0,
                          color: Colors.black45,
                        ),
                        Expanded(
                          child: Text(
                            "Padamara, Jawa Tengah",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black45,
                              height: 1.1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: const Color(0xffF8F8F8),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Icon(
                  Icons.bookmark_rounded,
                  color: Color(0xff89909A),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
