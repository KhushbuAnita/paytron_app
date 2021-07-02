import 'package:flutter/material.dart';

class upi1 extends StatefulWidget {
  const upi1({Key? key}) : super(key: key);

  @override
  _upi1State createState() => _upi1State();
}

class _upi1State extends State<upi1> {
  final TextEditingController _controller = new TextEditingController();
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
                child: Column(children: [
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(children: [
                            Container(
                                height: 30,
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 220,
                                        child: Text(
                                          'Add Bank Using UPI ID',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        )),
                                  ],
                                ))
                          ]))))
            ])),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: FloatingActionButton(
              // isExtended: true,
              child: Text('ADD UPI ID'),
              backgroundColor: Colors.blueAccent,
              onPressed: () {
                setState(() {
                  i++;
                });
              },
            )));
  }
}
