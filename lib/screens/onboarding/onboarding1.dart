import 'package:flutter/material.dart';
import 'package:app/screens/Onboarding/onboarding2.dart';

class Onboarding1 extends StatelessWidget
{
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Container(
        color: Colors.white70,

         child: InkWell(

           child: Center(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,

               children: [
                 Container(
                   margin: const EdgeInsets.only(top: 50),
                   child: const Text("Hello!",
                     style: TextStyle(
                       color: Colors.redAccent,
                       fontSize: 60,
                       fontFamily: 'Chewy',
                       fontWeight: FontWeight.bold,
                     ),
                     textAlign: TextAlign.center,
                   )
                 ),

                 Container(
                   padding: const EdgeInsets.all(50.0),
                   child: const Text("I am BeeWiser,\n your new finance tracker",
                     style: TextStyle(
                       color: Colors.black,
                       fontSize: 24,
                       fontFamily: 'OpenSans',
                       fontWeight: FontWeight.bold,
                     ),
                     textAlign: TextAlign.center,
                   )
                 ),

                 Container(
                   padding: const EdgeInsets.all(50),
                   child: const Text("You're amazing for taking this first step towards getting better control over your money",
                     style: TextStyle(
                       color: Colors.black,
                       fontSize: 20,
                       fontFamily: 'OpenSans',
                     ),
                    textAlign: TextAlign.center,
                   )
                 ),

                 Image.asset(
                   'assets/images/logo.png',
                   width: 140,
                   height: 150,
                 ),
               ]
             )
           ),

           /* Function to change screen */
           onTap: () => {
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => const Onboarding2())
             )
           }
         )
      )
    );
  }
}