import 'package:flutter/material.dart';

class Settings extends StatelessWidget
{
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Center(child: Text("Settings", style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.w600))),
      ),

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            const SizedBox(height: 30.0,),
            Card(
              child: ListTile(
                onTap: (){
                  //open currency page
                },
                leading: const Icon(Icons.currency_rupee_rounded, color: Color(0xFFFFCA0E),),
                title: const Text("Currency",style: TextStyle(color:Colors.black, fontSize: 16)),
                trailing: const Icon(Icons.keyboard_arrow_right_sharp, color: Color(0xFFFFCA0E), size: 24,),
              )
            ),
            Card(
              child: ListTile(
                onTap: (){
                  //open currency page
                },
                leading: const Icon(Icons.notifications_none_rounded, color: Color(0xFFFFCA0E),),
                title: const Text("Notification",style: TextStyle(color:Colors.black, fontSize: 16)),
                trailing: const Icon(Icons.keyboard_arrow_right_sharp, color: Color(0xFFFFCA0E), size: 24),
              )
            ),
            const SizedBox(height: 50.0,),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
              margin: const EdgeInsets.all(8.0),
              color: Colors.grey[50],
              child: ListTile(
                onTap: (){
                  //open currency page
                },
                leading: const Icon(Icons.info_outline_rounded, color: Color(0xFFFFCA0E),),
                title: const Text("About",style: TextStyle(color:Colors.black, fontSize: 16)),
                trailing: const Icon(Icons.keyboard_arrow_right_sharp, color: Color(0xFFFFCA0E), size: 24),
              )
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
              margin: const EdgeInsets.all(8.0),
              color: Colors.grey[50],
              child: ListTile(
                onTap: (){
                  //open currency page
                },
                leading: const Icon(Icons.support_agent_rounded, color: Color(0xFFFFCA0E),),
                title: const Text("Help",style: TextStyle(color:Colors.black, fontSize: 16)),
                trailing: const Icon(Icons.keyboard_arrow_right_sharp, color: Color(0xFFFFCA0E), size: 24),
              )
            ),
          ]
        )
      )
    );
  }
}