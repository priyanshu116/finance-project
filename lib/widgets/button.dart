import 'package:flutter/material.dart';

class Button extends StatelessWidget
{
  final String text;
  final Function onPressed;

  const Button({
    super.key,
    required this.text,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context)
  {
    return ElevatedButton(
      style: const ButtonStyle(
        textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 17)),
        foregroundColor: MaterialStatePropertyAll(Colors.white),
        backgroundColor: MaterialStatePropertyAll(Color(0xffFFCA0E)),
        padding: MaterialStatePropertyAll(EdgeInsets.fromLTRB(122, 16, 122, 16))
      ),

      onPressed: onPressed(),

      child: Text(text,
        style: const TextStyle(
          fontSize: 17
        )
      )
    );
  }
}