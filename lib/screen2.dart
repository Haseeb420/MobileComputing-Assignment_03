import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  String fullname = "";
  Screen2(name) {
    this.fullname = name;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ASSIGNMENT_03-BITF18A018"),
          backgroundColor: Colors.redAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              const Center(
                child: Text(
                  "Assigment-03_BITF18A0A18\n            Screen2\n\n",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Welcome : $fullname",
                  style: TextStyle(fontSize: 25),
                ),
              )
            ],
          ),
        ));
  }
}

// class Screen2 extends StatefulWidget {
//   const Screen2({Key? key}) : super(key: key);

//   @override
//   _Screen2State createState() => _Screen2State();
// }

// class _Screen2State extends State<Screen2> {
//   // ignore: unnecessary_new
//   TextEditingController lnameController = new TextEditingController();
//   TextEditingController fnameController = new TextEditingController();
//   String _name = "";
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: Column(
//         children: <Widget>[
//           const Center(
//             child: Text(
//               "Assigment-03_BITF18A0A18",
//               style: TextStyle(
//                 fontSize: 25,
//               ),
//             ),
//           ),

//           // for user firstname textfield
//           Container(
//             margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
//             child: TextField(
//               controller: fnameController,
//               decoration: const InputDecoration(
//                   hintText: "Enter your First Name : ",
//                   border: OutlineInputBorder(),
//                   label: Text("FirstName")),
//             ),
//           ),

//           //for user lastname textfield

//           Container(
//             margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
//             child: TextField(
//               controller: lnameController,
//               decoration: const InputDecoration(
//                   hintText: "Enter your Last Name : ",
//                   border: OutlineInputBorder(),
//                   label: Text("LastName")),
//             ),
//           ),
//           ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   _name = fnameController.text + lnameController.text;
//                 });
//               },
//               style: ElevatedButton.styleFrom(
//                   primary: Colors.redAccent, minimumSize: Size(200, 50)),
//               child: const Text(
//                 "Submit",
//                 style: TextStyle(
//                   fontSize: 20,
//                 ),
//               )),
//           Center(
//             child: Text(_name),
//           )
//         ],
//       ),
//     );
//   }
// }
