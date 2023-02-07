import 'package:flutter/material.dart';
import '../../widgets/button.dart';
import '../../widgets/user_input.dart';

class ForgotPassword extends StatelessWidget
{
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SafeArea(
        child: ListView(

          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,

              child: Column(
                children: [

                  /* CONTAINER 1 */
                  Container(
                    margin: const EdgeInsets.only(top: 30, bottom: 280),

                    child: Column(
                      children: [
                        /* Forgot Password */
                        const Text("Forgot Password",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'OpenSans'
                          )
                        ),

                        /* Text */
                        Container(
                          padding: const EdgeInsets.all(35),
                          margin: const EdgeInsets.only(top: 40),

                          child: const Text("Don’t worry. \nEnter your email and we’ll send you a link to reset your password.",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'OpenSans'
                            )
                          )
                        )
                      ]
                    )
                  ),


                  /* CONTAINER 2 */
                  SizedBox(
                    child: Column(
                      children: [
                        /* Enter Email */
                        Container(
                          margin: const EdgeInsets.only(bottom: 70),
                          child: const UserInput(hint: "Email")
                        ),

                        /* Button */
                        Button(
                          text: "Continue",
                          onPressed: (){}
                        )
                      ]
                    )
                  )

                ]
              ),
            )
          ]
        )
      )
    );
  }
}