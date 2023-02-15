import 'package:flutter/material.dart';
import '../../widgets/button.dart';

class budget extends StatefulWidget {
  const budget({Key? key}) : super(key: key);

  @override
  State<budget> createState() => _budgetState();
}

class _budgetState extends State<budget> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: Icon(Icons.keyboard_backspace_rounded),
                onPressed: () {},
              ),
            ),

            Container(
              child: Text("Budget",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  )),
            ),

            TextFormField(
             decoration: const InputDecoration(
             border: UnderlineInputBorder(),
             labelText: 'Rs ',
             contentPadding: EdgeInsets.all(10),
  ),
),

           TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(255, 209, 204, 204),
              contentPadding: EdgeInsets.all(50),
              border: OutlineInputBorder(),
              hintText: 'Description  ',
            ),
           ),

            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(top: 250),
              child: Button(
                text: "Continue",
                onPressed: () {},
              ),
            )
          ],
        ),

        /*background color */
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(223, 161, 105, 233),
            Color.fromARGB(255, 248, 248, 248)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
      ),
    );
  }
}
