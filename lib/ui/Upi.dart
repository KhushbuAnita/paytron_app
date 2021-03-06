import 'package:flutter/material.dart';

class Upi extends StatefulWidget {
  const Upi({Key? key}) : super(key: key);

  @override
  _UpiState createState() => _UpiState();
}

class _UpiState extends State<Upi> {
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
