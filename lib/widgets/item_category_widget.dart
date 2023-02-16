import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemCategoryWidget extends StatelessWidget {
  final String icon;
  final String text;
  final bool isSelected;

  const ItemCategoryWidget({
    Key? key,
    required this.icon,
    required this.text,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 14.0),
      padding: const EdgeInsets.symmetric(
        horizontal: 14.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        color: isSelected
            ? const Color(0xff349DFD).withOpacity(0.12)
            : const Color(0xffeeeeee).withOpacity(0.5),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            "assets/icons/$icon.svg",
            color: const Color(0xff349DFD),
            height: 20.0,
          ),
          const SizedBox(
            width: 6.0,
          ),
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: isSelected ? Colors.black : Colors.black26,
            ),
          ),
        ],
      ),
    );
  }
}
