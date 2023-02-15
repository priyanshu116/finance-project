import 'package:flutter/material.dart';
import '../../../widgets/button.dart';

class Income extends StatefulWidget
{
  const Income({Key? key}) : super(key: key);

  @override
  State<Income> createState() => _IncomeState();
}

class _IncomeState extends State<Income>
{
  @override
  Widget build(BuildContext context)
  {
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
              child: Text("Income",
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
            Color.fromARGB(223, 78, 243, 130),
            Color.fromARGB(255, 252, 252, 252)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
      ),
    );
  }
}