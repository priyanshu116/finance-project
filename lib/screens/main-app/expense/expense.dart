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
  // String dropdownValue = 'Category';
  // bool _isEditingText = true;
  // late TextEditingController _editingController;
  // String initialText = "initial Text";

  // @override
  // void initState() {
  //   super.initState();
  //   _editingController = TextEditingController(text: initialText);
  // }

  // @override
  // void dispose() {
  //   _editingController.dispose();
  //   super.dispose();
  // }

  // Widget _editTitleTextField() {
  //   if (_isEditingText)
  //     return Center(
  //       child: TextField(
  //         onSubmitted: (newValue) {
  //           setState(() {
  //             initialText = newValue;
  //             _isEditingText = false;
  //           });
  //         },
  //         autofocus: true,
  //         controller: _editingController,
  //       ),
  //     );

  //   return InkWell(
  //     onTap: () {
  //       setState(() {
  //         _isEditingText = true;
  //       });
  //     },
  //     child: Text(
  //       initialText,
  //       style: TextStyle(
  //         color: Colors.black,
  //         fontSize: 18.0,
  //       ),
  //     ),
  //   );
  // }

  // @override
  // Widget build(BuildContext context){
  //   return DropdownButton<String>(
  //     value: dropdownValue,
  //     icon: Icon(Icons.arrow_downward),
  //     iconSize: 24,
  //     elevation: 16,
  //     style: TextStyle(color: Colors.deepPurple),
  //     underline: Container(
  //       height: 2,
  //       color: Colors.redAccent,
  //     ),
  //     onChanged: (String? newValue){
  //       setState(() {
  //         dropdownValue = newValue!;
  //       });
  //     },
  //     items: <String>['Food', 'Home','A', 'B'].map<DropdownMenuItem<String>>((String value){
  //       return DropdownMenuItem<String>(
  //         value: value,
  //         child: Row(children: [

  //           IconButton(
  //             icon: Icon(Icons.home),
  //             color: Colors.redAccent,
  //             onPressed: () {  },),
  //           Text(value),
  //         ]),
  //       );
  //     }).toList(),
  //   );
  // }

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
              child: Text("Expense",
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

//             // Container(
//             //   padding: EdgeInsets.all(8.0),
//             //   SizedBox(
//             //     height: 50,
//             //   ),
//             //   DropdownButton<String>{
//             //     value: dropdownValue,

//             //     items: <String>['Category', 'A', 'B', 'C'].map<DropdownMenuItem<String>>((String value){
//             //     })
//             //   }
//             // )

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
            Color.fromARGB(224, 221, 111, 111),
            Color.fromARGB(255, 248, 248, 248)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
      ),
    );
  }
}