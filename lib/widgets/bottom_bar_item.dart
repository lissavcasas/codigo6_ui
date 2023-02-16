import 'package:flutter/material.dart';

class BottomBarItem extends StatelessWidget {
  final void Function()? onTap;
  final bool isSelected;
  final IconData? icon;

  const BottomBarItem({
    Key? key,
    this.onTap,
    this.isSelected = false,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap,
      elevation: 0.0,
      constraints: const BoxConstraints(),
      shape: const CircleBorder(),
      splashColor: const Color(0xff8EC5FA),
      padding: const EdgeInsets.all(10.0),
      child: Icon(
        icon,
        color: isSelected ? Colors.white : const Color(0xff8EC5FA),
      ),
    );
  }
}
