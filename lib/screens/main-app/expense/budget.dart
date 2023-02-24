import 'package:flutter/material.dart';
import '../../../widgets/button.dart';

class Budget extends StatefulWidget
{
  const Budget({Key? key}) : super(key: key);

  @override
  State<Budget> createState() => _BudgetState();
}

class _BudgetState extends State<Budget>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color.fromARGB(223, 186, 118, 235),
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
                          Color.fromARGB(223, 186, 118, 235),
                          Color.fromARGB(255, 252, 252, 252)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),

                    child: Text(
                      "Budget",
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