import 'package:flutter/material.dart';

class Topoffer extends StatefulWidget {
  const Topoffer({Key? key}) : super(key: key);

  @override
  _TopofferState createState() => _TopofferState();
}

class _TopofferState extends State<Topoffer> {
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
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(100.0))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.local_offer,
                        size: 25,
                        color: Colors.white,
                      ),
                      Container(
                        height: 50,
                        child: Row(
                          children: [
                            SizedBox(
                                width: 350,
                                child: Text(
                                  ' Airtel \n Get Cashback of RS 50 \n 20.6M Claimed        Ens In 12 hours',
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
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(100.0))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.local_offer,
                        size: 25,
                        color: Colors.white,
                      ),
                      Container(
                        height: 50,
                        child: Row(
                          children: [
                            SizedBox(
                                width: 350,
                                child: Text(
                                  ' Airtel \n Get Cashback of RS 50 \n 20.6M Claimed        Ens In 12 hours',
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
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.local_offer,
                        size: 25,
                        color: Colors.white,
                      ),
                      Container(
                        height: 50,
                        child: Row(
                          children: [
                            SizedBox(
                                width: 350,
                                child: Text(
                                  ' Airtel \n Get Cashback of RS 50 \n 20.6M Claimed        Ens In 12 hours',
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
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.local_offer,
                        size: 25,
                        color: Colors.white,
                      ),
                      Container(
                        height: 50,
                        child: Row(
                          children: [
                            SizedBox(
                                width: 350,
                                child: Text(
                                  ' Airtel \n Get Cashback of RS 50 \n 20.6M Claimed        Ens In 12 hours',
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
          ])),
        ));
  }
}
