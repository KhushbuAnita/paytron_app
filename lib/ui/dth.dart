import 'package:flutter/material.dart';

class dth extends StatefulWidget {
  const dth({Key? key}) : super(key: key);

  @override
  _dthState createState() => _dthState();
}

class _dthState extends State<dth> {
  final TextEditingController _controller = new TextEditingController();
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Select Provider'),
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
                                    ' Airtel Tv',
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
                                      ' Tata Sky',
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
                                      ' Dish Tv',
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
                                      ' VideoCon Tv',
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
