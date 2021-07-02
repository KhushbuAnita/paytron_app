import 'package:flutter/material.dart';

class send_to extends StatefulWidget {
  const send_to({Key? key}) : super(key: key);

  @override
  _send_toState createState() => _send_toState();
}

class _send_toState extends State<send_to> {
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
                                      ' 91xxxxxxxxxx \n Paytm Payments Banl LTD \n Noida Branch',
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
                              child: Row(
                                children: [
                                  SizedBox(
                                      width: 350,
                                      child: Text(
                                        ' 91xxxxxxxxxx \n Punjab National Bank \n Bodhgaya',
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
                              child: Row(
                                children: [
                                  SizedBox(
                                      width: 350,
                                      child: Text(
                                        ' 87xxxxxxxxxx \n Airtel Payments Bank LTD \n Bodhgaya',
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
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: Container(
              height: 50,
              width: 350,
              child: FloatingActionButton(
                // isExtended: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Text('Add New Bank Account'),
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
