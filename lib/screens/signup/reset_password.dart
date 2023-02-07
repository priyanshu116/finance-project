import 'package:flutter/material.dart';
import '../../widgets/button.dart';
import '../../widgets/user_input.dart';

class ResetPassword extends StatelessWidget
{
  const ResetPassword({Key? key}) : super(key: key);

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

                  /* CONTAINER */
                  Column(
                    children: [
                      /* Reset Password */
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text("Reset Password",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'OpenSans'
                          )
                        )
                      ),

                      /* New Password */
                      Container(
                        margin: const EdgeInsets.only(top: 50, bottom: 10),
                        child: const UserInput(hint: "New Password"),
                      ),

                      /* Reset Password */
                      Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 476),
                        child: const UserInput(hint: "Retype New Password"),
                      )
                    ]
                  ),

                  /* Button */
                  Button(
                    text: "Continue",
                    onPressed: (){}
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