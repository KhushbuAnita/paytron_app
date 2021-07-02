import 'package:flutter/material.dart';

class DebitCard extends StatefulWidget {
  const DebitCard({Key? key}) : super(key: key);

  @override
  _DebitCardState createState() => _DebitCardState();
}

class _DebitCardState extends State<DebitCard> {
  final TextEditingController _controller = new TextEditingController();
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Column(
          children: [
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
              ],
            ),
          ],
        )));
  }
}
