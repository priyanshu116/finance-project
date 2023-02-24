import 'package:flutter/material.dart';
import '../../../widgets/button.dart';

class Expense extends StatefulWidget
{
  const Expense({Key? key}) : super(key: key);

  @override
  State<Expense> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color.fromARGB(223, 243, 86, 78),
      ),

      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          // padding: EdgeInsets.all(20),

          child: ListView(
            children: [

              Column(
                children: [

                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/5,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(223, 243, 86, 78),
                          Color.fromARGB(255, 252, 252, 252)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),

                    child: Text(
                      "Expense",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 40, right: 40),

                    child: TextField(
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                      decoration: const InputDecoration(
                        labelText: "₹",
                        labelStyle: TextStyle(color: Colors.black),
                        contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 40, right: 40),

                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Description",
                        filled: true,
                        fillColor: Color(0xffF1F1F1),
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(10),
                      ),
                      style: TextStyle(fontSize: 18),
                      maxLines: 6,
                    ),
                  ),

                  Container(
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.only(top: 200),
                      child: Button(text: "Continue", onPressed: () {}),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}