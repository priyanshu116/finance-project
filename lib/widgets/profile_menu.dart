import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget
{
  final String text;
  final Icon icon;

  const ProfileMenu({
    super.key,
    required this.text,
    required this.icon
  });

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        /* ICON */
        Container(
          margin: const EdgeInsets.only(right: 12),
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(15))
          ),

          child: icon
        ),

        /* TEXT */
        Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          )
        )
      ]
    );
  }
}