import 'package:assignment_03/screen2.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final _title = "ASSIGNMENT_03-BITF18A018";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ASSIGNMENT_03-BITF18A018"),
        backgroundColor: Colors.redAccent,
      ),
      body: const Screen1(),
    );
  }
}

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen1> {
  // ignore: unnecessary_new
  TextEditingController lnameController = new TextEditingController();
  TextEditingController fnameController = new TextEditingController();
  String _name = "";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          const Center(
            child: Text(
              "Assigment-03_BITF18A0A18",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),

          // for user firstname textfield
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: TextField(
              controller: fnameController,
              decoration: const InputDecoration(
                  hintText: "Enter your First Name : ",
                  border: OutlineInputBorder(),
                  label: Text("FirstName")),
            ),
          ),

          //for user lastname textfield

          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: TextField(
              controller: lnameController,
              decoration: const InputDecoration(
                  hintText: "Enter your Last Name : ",
                  border: OutlineInputBorder(),
                  label: Text("LastName")),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context)=>Screen1()))),
                _name = fnameController.text + " " + lnameController.text;
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Screen2(_name)));
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.redAccent, minimumSize: Size(200, 50)),
              child: const Text(
                "Submit",
                style: TextStyle(
                  fontSize: 20,
                ),
              )),
        ],
      ),
    );
  }
}
