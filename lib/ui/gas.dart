import 'package:flutter/material.dart';

class gas extends StatefulWidget {
  const gas({Key? key}) : super(key: key);

  @override
  _gasState createState() => _gasState();
}

class _gasState extends State<gas> {
  final TextEditingController _controller = new TextEditingController();
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Select Your Gas Provider'),
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
          //AppBar
          body: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.cable,
                            size: 30,
                            color: Colors.white,
                          ),
                          Container(
                            height: 30,
                            child: Row(children: [
                              SizedBox(
                                  width: 350,
                                  child: Text(
                                    ' Bharat Gas',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )),
                            ]),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.cable,
                            size: 30,
                            color: Colors.white,
                          ),
                          Container(
                            height: 30,
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 350,
                                    child: Text(
                                      ' Indian Oil',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.cable,
                            size: 30,
                            color: Colors.white,
                          ),
                          Container(
                            height: 30,
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 350,
                                    child: Text(
                                      ' HP GAs',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.cable,
                            size: 30,
                            color: Colors.white,
                          ),
                          Container(
                            height: 30,
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 350,
                                    child: Text(
                                      ' Reliance Oil',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
