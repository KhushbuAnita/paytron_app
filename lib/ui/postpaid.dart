import 'package:flutter/material.dart';

class postpaid extends StatefulWidget {
  const postpaid({Key? key}) : super(key: key);

  @override
  _postpaidState createState() => _postpaidState();
}

class _postpaidState extends State<postpaid> {
  final TextEditingController _controller = new TextEditingController();
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Postpaid Recharge'),
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
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(50),
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
                Padding(
                  padding: const EdgeInsets.only(right: 350),
                  child: Text(
                    'All Contact',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
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
                                    width: 350,
                                    child: Text(
                                      ' Nazia \n xxxxxxxxxx',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )),
                                SizedBox(
                                    width: 50,
                                    height: 20,
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
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
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.person,
                            size: 30,
                            color: Colors.white,
                          ),
                          Container(
                            height: 30,
                            child: Row(children: [
                              SizedBox(
                                  width: 350,
                                  child: Text(
                                    ' Nazia \n xxxxxxxxxx',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )),
                              SizedBox(
                                  width: 50,
                                  height: 20,
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  )),
                            ]),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
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
                                    width: 350,
                                    child: Text(
                                      ' Nazia 2 \n xxxxxxxxxx',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )),
                                SizedBox(
                                    width: 50,
                                    height: 20,
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
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
