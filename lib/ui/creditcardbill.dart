import 'package:flutter/material.dart';

class creditcardbill extends StatefulWidget {
  const creditcardbill({Key? key}) : super(key: key);

  @override
  _creditcardbillState createState() => _creditcardbillState();
}

class _creditcardbillState extends State<creditcardbill> {
  final TextEditingController _controller = new TextEditingController();
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Send To'),
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
                    padding: const EdgeInsets.only(right: 380),
                    child: Text(
                      'Saved Card',
                    ),
                  ),
                  const Divider(
                    height: 20,
                    thickness: 3,
                    indent: 20,
                    endIndent: 20,
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
                              Icons.account_balance,
                              size: 30,
                              color: Colors.white,
                            ),
                            Container(
                              height: 50,
                              child: Row(children: [
                                SizedBox(
                                    width: 350,
                                    child: Text(
                                      ' Paytm Payments Bank LTD \n 91xxxxxxx20',
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
                ],
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: Container(
              height: 50,
              width: 350,
              child: FloatingActionButton(
                // isExtended: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Text('Add New Credit Card'),
                backgroundColor: Colors.blueAccent,
                onPressed: () {
                  setState(() {
                    i++;
                  });
                },
              ),
            )));
  }
}
