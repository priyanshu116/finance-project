import 'package:flutter/material.dart';

class Currency extends StatelessWidget {
  const Currency({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black
        ), 
        title: Text("Currency", style: TextStyle( 
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      
      body: SafeArea(  
        child: Column(children: [
          SizedBox(height: 50.0,),
           MyStatefulWidget(), 
        ],
        )   
        ),  
    );
  }
}

enum Pet { INR, USD, JPY, RUB, EUR, WON }

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Pet _pet = Pet.INR;

  @override
  Widget build(BuildContext context) {

    return Column(

      children: <Widget>[
        ListTile(
          title: const Text('India (INR)'),
          leading: Icon(Icons.currency_rupee_outlined, color: Color(0xFFFFCA0E)),
          trailing: Radio<Pet>(
            fillColor: MaterialStateColor.resolveWith((states) => Color(0xFFFFCA0E)),
            focusColor: MaterialStateColor.resolveWith((states) => Color(0xFFFFCA0E)),
            value: Pet.INR,
            groupValue: _pet,
            onChanged: (Pet? value) {
              setState(() {
                _pet = value!;
              });
            },
          ),
        ),
        SizedBox(height: 30.0,),
        ListTile(
          title: const Text('United States (USD)'),
          leading: Icon(Icons.currency_exchange_rounded, color: Color(0xFFFFCA0E)),
          trailing: Radio<Pet>(
            fillColor: MaterialStateColor.resolveWith((states) => Color(0xFFFFCA0E)),
            focusColor: MaterialStateColor.resolveWith((states) => Color(0xFFFFCA0E)),
            value: Pet.USD,
            groupValue: _pet,
            onChanged: (Pet? value) {
              setState(() {
                _pet = value!;
              });
            },
          ),
        ),
        SizedBox(height: 30.0,),
        ListTile(
          title: const Text('Japan (JPY)'),
          leading: Icon(Icons.currency_yen_rounded, color: Color(0xFFFFCA0E)),
          trailing: Radio<Pet>(
            fillColor: MaterialStateColor.resolveWith((states) => Color(0xFFFFCA0E)),
            focusColor: MaterialStateColor.resolveWith((states) => Color(0xFFFFCA0E)),
            value: Pet.JPY,
            groupValue: _pet,
            onChanged: (Pet? value) {
              setState(() {
                _pet = value!;
              });
            },
          ),
        ),
        SizedBox(height: 30.0,),
        ListTile(
          title: const Text('Russia (RUB)'),
          leading: Icon(Icons.currency_ruble_rounded, color: Color(0xFFFFCA0E)),
          trailing: Radio<Pet>(
            fillColor: MaterialStateColor.resolveWith((states) => Color(0xFFFFCA0E)),
            focusColor: MaterialStateColor.resolveWith((states) => Color(0xFFFFCA0E)),
            value: Pet.RUB,
            groupValue: _pet,
            onChanged: (Pet? value) {
              setState(() {
                _pet = value!;
              });
            },
          ),
        ),
        SizedBox(height: 30.0,),
        ListTile(
          title: const Text('Germany (EUR)'),
          leading: Icon(Icons.euro_rounded, color: Color(0xFFFFCA0E)),
          trailing: Radio<Pet>(
            fillColor: MaterialStateColor.resolveWith((states) => Color(0xFFFFCA0E)),
            focusColor: MaterialStateColor.resolveWith((states) => Color(0xFFFFCA0E)),
            value: Pet.EUR,
            groupValue: _pet,
            onChanged: (Pet? value) {
              setState(() {
                _pet = value!;
              });
            },
          ),
        ),
        SizedBox(height: 30.0,),
        ListTile(
          title: const Text('Korea (WON)'),
          trailing: Radio<Pet>(
            fillColor: MaterialStateColor.resolveWith((states) => Color(0xFFFFCA0E)),
            focusColor: MaterialStateColor.resolveWith((states) => Color(0xFFFFCA0E)),
            value: Pet.WON,
            groupValue: _pet,
            onChanged: (Pet? value) {
              setState(() {
                _pet = value!;
              });
            },
          ),
        ),
      ],
    );
  }
}