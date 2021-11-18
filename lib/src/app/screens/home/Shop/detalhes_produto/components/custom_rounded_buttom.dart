import 'package:flutter/material.dart';

class RoundedButtom extends StatelessWidget {
  final Color color;
  final IconData icon;
  final Function() onPress;
  const RoundedButtom(
      {Key? key,
      required this.color,
      required this.icon,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: SizedBox(
        child: Icon(icon),
        height: 50,
      ),
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: const CircleBorder(),
      ),
    );
  }
}
