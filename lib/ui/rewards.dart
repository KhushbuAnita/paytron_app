import 'dart:html';

import 'package:flutter/material.dart';

class rewards extends StatefulWidget {
  const rewards({Key? key}) : super(key: key);

  @override
  _rewardsState createState() => _rewardsState();
}

class _rewardsState extends State<rewards> {
  final TextEditingController _controller = new TextEditingController();
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Rewards'),
              leading: new IconButton(
                icon: new Icon(Icons.arrow_back),
                onPressed: () => Navigator.of(context).pop(),
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.help),
                  onPressed: () {
                    // do something
                  },
                )
              ],
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 40, top: 15, bottom: 15),
                          child: Column(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.lightBlue,
                                          blurRadius: 1.0,
                                        ),
                                      ]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.money,
                                        size: 30, color: Colors.white),
                                  )),
                              Text(" Cashback \n    RS100 ")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Container(
                              height: 80,
                              child: VerticalDivider(color: Colors.grey)),
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
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.lightBlue,
                                            blurRadius: 1.0,
                                          ),
                                        ]),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.local_offer,
                                          size: 30, color: Colors.white),
                                    )),
                                Text(" Cashback \n    RS100")
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Container(
                              height: 80,
                              child: VerticalDivider(color: Colors.grey)),
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
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.lightBlue,
                                          blurRadius: 1.0,
                                        ),
                                      ]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('%',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 35)),
                                  ),
                                ),
                                Text(" Coupons \n     100")
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 250,
                      height: 220,
                      padding: new EdgeInsets.all(10.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.blueAccent,
                        elevation: 10,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              title: Center(
                                child: Text('Tap to Scratch',
                                    style: TextStyle(fontSize: 13.0)),
                              ),
                            ),
                            Image.asset(
                              "bank1.png",
                              width: 60,
                              height: 60,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: FlatButton(
                                child: Text(
                                  'Open',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                  ),
                                ),
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.black)),
                                textColor: Colors.grey,
                                onPressed: () {},
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text('Expires in 3 days',
                                    style: TextStyle(
                                        fontSize: 13.0, color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 220,
                      padding: new EdgeInsets.all(10.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.blueAccent,
                        elevation: 10,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              title: Center(
                                child: Text('Tap to Scratch',
                                    style: TextStyle(fontSize: 13.0)),
                              ),
                            ),
                            Image.asset(
                              "bank1.png",
                              width: 60,
                              height: 60,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: FlatButton(
                                child: Text(
                                  'Open',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                  ),
                                ),
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.black)),
                                textColor: Colors.grey,
                                onPressed: () {},
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text('Expires in 2 days',
                                    style: TextStyle(
                                        fontSize: 13.0, color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }
}
