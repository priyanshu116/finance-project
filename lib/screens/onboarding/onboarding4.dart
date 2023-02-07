import 'package:flutter/material.dart';
import 'package:app/screens/Onboarding/onboarding5.dart';

class Onboarding4 extends StatelessWidget
{
  const Onboarding4({super.key});

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
                  'assets/images/pic3.png',
                  width: 350.0,
                  height: 350.0
                ),

                Container(
                  padding: const EdgeInsets.all(30.0),
                  child: const Text("Cut down all unnecessary expenses",
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
          ),

          /* Function to change screen */
          onTap: () => {
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => const Onboarding5())
             )
           }
        )
      )
    );
  }
}