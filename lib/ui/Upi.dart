import 'package:flutter/material.dart';

class Upi extends StatefulWidget {
  const Upi({ Key? key }) : super(key: key);

  @override
  _UpiState createState() => _UpiState();
}

class _UpiState extends State<Upi> {

  final TextEditingController  _controller= new TextEditingController();
  int i=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

    home: Scaffold(
      appBar: AppBar(
        title: Text('Send Money'),
      ),
        //AppBar
      body: Container(
       
        child: Column(
          
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
  controller: _controller,
  decoration: InputDecoration(
    border: new OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          const Radius.circular(12.0),
        ),
      ),
    hintText: "Enter a message",
    
    suffixIcon: IconButton(
              onPressed: () => _controller.clear(),
              icon: Icon(Icons.clear),

    ),
   
  ),
),
            ),

          ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        // isExtended: true,
        child: Text('ADDD UPI ID'),
        backgroundColor: Colors.blueAccent,
        onPressed: () {
          setState(() {
            i++;
          });
        },
      ),
    )
     
      );
   
  }
}