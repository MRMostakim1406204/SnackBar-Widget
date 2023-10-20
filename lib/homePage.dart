import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Data loaded Successful"),
              action: SnackBarAction(label: "Open", onPressed: (){
                Navigator.pop(context);
              }),
              ));
          }, 
          child: Text("Show SnackBar",style: TextStyle(
            fontSize: 20,color: Colors.black
          ),)),
      ),
    );
  }
}