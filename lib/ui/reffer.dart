import 'package:flutter/material.dart';

class reffer extends StatefulWidget {
  const reffer({Key? key}) : super(key: key);

  @override
  _refferState createState() => _refferState();
}

class _refferState extends State<reffer> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  late VoidCallback _showPersistantBottomSheetCallBack;

  @override
  void initState() {
    super.initState();
    _showPersistantBottomSheetCallBack = _showBottomSheet;
  }

  void _showBottomSheet() {
    setState(() {
      _showPersistantBottomSheetCallBack = (_showPersistantBottomSheetCallBack);
    });

    _scaffoldKey.currentState!
        .showBottomSheet((context) {
          var _controller;
          return new Container(
              height: 1000.0,
              color: Colors.teal[100],
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 15, bottom: 15),
                              child: Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.asset(
                                        'whatsapp.png',
                                        height: 65,
                                        width: 65,
                                      )),
                                  Text(" Whatsapp ")
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 60, top: 15, bottom: 15),
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          'facebook.png',
                                          height: 65,
                                          width: 65,
                                        )),
                                    Text(" Facebook ")
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 60, top: 15, bottom: 20),
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          'message.png',
                                          height: 65,
                                          width: 35,
                                        )),
                                    Text(" Message ")
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 60, top: 15, bottom: 20),
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          'more.png',
                                          height: 65,
                                          width: 35,
                                        )),
                                    Text(" More ")
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: TextField(
                              controller: _controller,
                              decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(16.0),
                                  ),
                                ),
                                hintText: "Enter a message",
                                prefixIcon: IconButton(
                                  icon: Icon(Icons.search),
                                  onPressed: () => _controller.clear(),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              child: Row(
                                children: [
                                  SizedBox(
                                      width: 220,
                                      child: Text(
                                        '      Nazia \n      91xxxxxxx',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 150.0),
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.blue,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Center(
                                        child: Text('invite'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              child: Row(
                                children: [
                                  SizedBox(
                                      width: 220,
                                      child: Text(
                                        '      Rohit \n      91xxxxxxx',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 150.0),
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.blue,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Center(
                                        child: Text('invite'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              child: Row(
                                children: [
                                  SizedBox(
                                      width: 220,
                                      child: Text(
                                        '      Rohit \n      91xxxxxxx',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 150.0),
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.blue,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Center(
                                        child: Text('invite'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )));
        })
        .closed
        .whenComplete(() {
          if (mounted) {
            setState(() {
              _showPersistantBottomSheetCallBack = _showBottomSheet;
            });
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[200],
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.cyan[200],
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 200, right: 300),
        child: Center(
            child: RaisedButton(
          color: Colors.teal[100],
          onPressed: _showPersistantBottomSheetCallBack,
          child: Text(
            " Earn RS 100 \n Invite Your Friend on \n 1Touch and get \n Rs 100 On first Transaction ",
            style: TextStyle(color: Colors.black),
          ),
        )),
      ),
    );
  }
}
