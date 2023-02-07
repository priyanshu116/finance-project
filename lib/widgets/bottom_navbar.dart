import 'package:flutter/material.dart';

class Navbar extends StatefulWidget
{
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar>
{
  //Variable to change current navbar item
  int current = 0;

  @override
  Widget build(BuildContext context)
  {
    return BottomNavigationBar(
        currentIndex: current,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color(0xff7E7E7E),
        backgroundColor: const Color(0xffFFF1BF),

        items: const [
          /* HOME */
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 35),
            label: "Home"
          ),

          /* TRANSACTIONS */
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance, size: 35),
            label: "Activity"
          ),

          /* ADD BUTTON */
          BottomNavigationBarItem(
            icon: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black),
                shape: MaterialStatePropertyAll(CircleBorder()),
                padding: MaterialStatePropertyAll(EdgeInsets.all(5))
              ),

              onPressed: null,

              child: Icon(
                Icons.add,
                size: 40,
                color: Colors.white
              )
            ),
            label: ""
          ),

          /* BUDGET */
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart, size: 35),
            label: "Budget"
          ),

          /* PROFILE */
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 35),
            label: "Profile"
          )
        ],

        /* Function to change navbar item */
        onTap: (index) => {
          setState((){
            current = index;
          })
        },
    );
  }
}