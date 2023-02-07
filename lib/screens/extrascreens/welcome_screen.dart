import 'package:flutter/material.dart';

import '../../widgets/extrawidgets/customized_button.dart';
import 'login_screen.dart';
import 'signup_screen.dart';



class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/whitebg.png"),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: Image.asset('assets/images/logo.png'),
              // child: Image(image: AssetImage('assets/images/pic1.png'), fit: BoxFit.cover),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomisedButton(
              buttonText: "Login",
              buttonColor: const Color.fromARGB(255, 255, 205, 41),
              textColor: Colors.black,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginScreen()),
                );
              },
            ),
            CustomisedButton(
              buttonText: "SignUp",
              buttonColor: Colors.white,
              textColor: Colors.black,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SignUpScreen()),
                );
              },
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Continue as a Guest",
                style: TextStyle(color: Colors.blueAccent, fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}