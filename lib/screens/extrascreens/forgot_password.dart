import 'package:flutter/material.dart';

import '../../widgets/extrawidgets/customized_button.dart';
import '../../widgets/extrawidgets/customized_text.dart';
import './login_screen.dart';


class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_sharp),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("Forgot password?",
                    style:
                        TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30)),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Dont worry it occurs to us all,we will send \nyou a link to reset your password ",
                  style: TextStyle(color: Color(0xff8391A1), fontSize: 20),
                ),
              ),
              CustomizedText(
                myController: _emailController,
                hintText: "Email",
                isPassword: false,
              ),
              CustomisedButton(
                buttonText: "Send code",
                buttonColor: const Color.fromARGB(255, 255, 205, 41),
                textColor: Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Remember Password?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (_) => const LoginScreen()));
                      },
                      child: const Text(
                        "  Login ",
                        style: TextStyle(
                          color: Color(0xff35C2C1),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
