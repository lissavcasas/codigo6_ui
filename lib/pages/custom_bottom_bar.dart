import 'package:codigo6_ui/widgets/bottom_bar_item.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int currentIndex = 0;

  setBottomBarIndex(selectedIndex) {
    setState(() => currentIndex = selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 40.0,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomBarItem(
              isSelected: currentIndex == 0,
              icon: Icons.home,
              onTap: () => setBottomBarIndex(0),
            ),
            BottomBarItem(
              isSelected: currentIndex == 1,
              icon: Icons.shopping_cart,
              onTap: () => setBottomBarIndex(1),
            ),
            BottomBarItem(
              isSelected: currentIndex == 2,
              icon: Icons.bookmark,
              onTap: () => setBottomBarIndex(2),
            ),
            BottomBarItem(
              isSelected: currentIndex == 3,
              icon: Icons.person,
              onTap: () => setBottomBarIndex(3),
            ),
          ],
        ),
      ),
    );
  }
}
