import 'package:flutter/material.dart';

class bank extends StatefulWidget {
  const bank({Key? key}) : super(key: key);

  @override
  _bankState createState() => _bankState();
}

class _bankState extends State<bank> {
  final TextEditingController _controller = new TextEditingController();
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          //AppBar
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
                          Icon(
                            Icons.person,
                            size: 30,
                            color: Colors.white,
                          ),
                          Container(
                              height: 30,
                              child: Row(
                                children: [
                                  SizedBox(
                                      width: 220,
                                      child: Text(
                                        'Bank of Maharastra',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )),
                                  SizedBox(
                                    width: 70,
                                    child: Text('hello'),
                                  ),
                                ],
                              ))
                        ]))))
          ])),
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          floatingActionButton: FloatingActionButton(
            // isExtended: true,
            child: Icon(Icons.add),
            backgroundColor: Colors.blueAccent,
            onPressed: () {
              setState(() {
                i++;
              });
            },
          ),
        ));
  }
}
