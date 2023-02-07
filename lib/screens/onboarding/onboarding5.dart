import 'package:flutter/material.dart';

class Onboarding5 extends StatelessWidget
{
  const Onboarding5({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Container(
        color: Colors.white70,

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Image.asset(
                'assets/images/pic4.png',
                width: 350.0,
                height: 350.0
              ),

              Container(
                padding: const EdgeInsets.all(30.0),
                child: const Text("Keep your all personal information private",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontFamily: 'OpenSans',
                  ),
                  textAlign: TextAlign.center,
                )
              )
            ]
          )
        )
      )
    );
  }
}