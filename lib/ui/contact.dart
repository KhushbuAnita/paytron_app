import 'package:flutter/material.dart';

class contact extends StatefulWidget {
  const contact({Key? key}) : super(key: key);

  @override
  _contactState createState() => _contactState();
}

class _contactState extends State<contact> {
  final TextEditingController _controller = new TextEditingController();
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Send Money'),
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
                  padding: const EdgeInsets.all(5.0),
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
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
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
                                    width: 220,
                                    child: Text(
                                      'Nazia \n You:\$20-Paid',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )),
                                SizedBox(
                                    width: 70,
                                    child: Text(
                                      '25/03/2021',
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
                )
              ],
            ),
          ),
        ));
  }
}
