import 'package:flutter/material.dart';
import 'package:app/screens/Onboarding/onboarding3.dart';

class Onboarding2 extends StatelessWidget
{
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.white70,

        child: InkWell(

          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Container(
                  padding: const EdgeInsets.all(66.5),
                  child: const Text(
                    "Together we’ll reach your financial goals",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  )
                ),

                Container(
                  padding: const EdgeInsets.all(60.0),
                  child: const Text(
                    "BeeWiser will help you on tracking your expenses, so you can keep your savings grow every month",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'OpenSans',
                    ),
                    textAlign: TextAlign.center,
                  )
                ),

                Image.asset(
                  'assets/images/pic1.png',
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                )
              ]
            )
          ),

          /* Function to change screen */
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Onboarding3())
            )
          }
        )
      )
    );
  }
}