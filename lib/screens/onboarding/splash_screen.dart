import 'package:flutter/material.dart';
import 'package:app/screens/Onboarding/onboarding1.dart';

class SplashScreen extends StatelessWidget
{
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Container(
        color: Colors.white70,

        child: InkWell(

          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 300.0,
                  height: 300.0
                ),

                Container(
                  padding: const EdgeInsets.all(30.0),
                  child: const Text("BeeWiser",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  )
                )
              ]
            )
          ),

          /* Function to change screen */
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Onboarding1())
            )
          }
        )
      )
    );
  }
}