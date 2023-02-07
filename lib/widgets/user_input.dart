import 'package:flutter/material.dart';

class UserInput extends StatelessWidget
{
  final String hint;

  const UserInput({
    super.key,
    required this.hint
  });

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 50,
      color: const Color(0xffE8E8E8),
      width: MediaQuery.of(context).size.width/1.3,

      child: TextField(
        decoration: InputDecoration(
          hintText: hint,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(10)
        ),

        style: const TextStyle(
          fontSize: 18,
          fontFamily: 'OpenSans'
        )
      )
    );
  }
}