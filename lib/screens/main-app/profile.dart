import 'package:app/screens/main-app/expense/budget.dart';
import 'package:app/screens/main-app/expense/expense.dart';
import 'package:flutter/material.dart';
import 'package:app/widgets/profile_menu.dart';
import 'package:app/widgets/bottom_navbar.dart';
import 'package:app/screens/main-app/settings.dart';
import 'package:app/screens/main-app/expense/income.dart';

class Profile extends StatelessWidget
{
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      bottomNavigationBar: const Navbar(),

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

            /* CONTAINER 1 */
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                /* PROFILE PIC */
                Image.asset("assets/images/profile.png",
                  width: 90,
                  height: 90
                ),

                /* TEXT */
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: const [
                    Text("Welcome,",
                      style: TextStyle(
                        fontSize: 18
                      )
                    ),

                    Text("Jon Snow",
                      style: TextStyle(
                        fontSize: 24
                      )
                    )
                  ]
                )
              ]
            ),


            /* CONTAINER 2 */
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width/1.3,
              padding: const EdgeInsets.fromLTRB(20, 5, 0, 5),

              decoration: const BoxDecoration(
                color: Color(0xffDEDEDE),
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children:  [
                  /* ACCOUNT */
                  InkWell(
                    child: ProfileMenu(
                    text: "Income",
                    icon: Icon(Icons.savings_outlined, size: 30)
                  ),
                  onTap: (() => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Income()))
                  }),
                  ),
                  

                  /* SETTINGS */
                  InkWell(
                    child: ProfileMenu(
                      text: "Settings",
                      icon: Icon(Icons.settings, size: 30)
                    ),
                    onTap: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()))
                    },
                  ),

                  /* EXPORT DATA */
                  InkWell(
                    child: ProfileMenu(
                    text: "Expense",
                    icon: Icon(Icons.arrow_upward, size: 30)
                  ),
                  onTap: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Expense()))
                  },
                  ),
                  

                  /* LOG OUT */
                  InkWell(
                    child: ProfileMenu(
                    text: "Budget",
                    icon: Icon(Icons.pie_chart_outline, size: 30)
                  ),
                  onTap: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Budget()))
                  },
                  ),
                ]
              )
            )

          ]
        )
      )
    );
  }
}