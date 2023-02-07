import 'package:flutter/material.dart';
import 'package:app/widgets/profile_menu.dart';
import 'package:app/widgets/bottom_navbar.dart';

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

                children: const [
                  /* ACCOUNT */
                  ProfileMenu(
                    text: "Account",
                    icon: Icon(Icons.wallet_membership, size: 30)
                  ),

                  /* SETTINGS */
                  ProfileMenu(
                    text: "Settings",
                    icon: Icon(Icons.settings, size: 30)
                  ),

                  /* EXPORT DATA */
                  ProfileMenu(
                    text: "Export Data",
                    icon: Icon(Icons.arrow_upward, size: 30)
                  ),

                  /* LOG OUT */
                  ProfileMenu(
                    text: "Logout",
                    icon: Icon(Icons.logout, size: 30)
                  )
                ]
              )
            )

          ]
        )
      )
    );
  }
}