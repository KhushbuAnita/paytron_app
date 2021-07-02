import 'package:flutter/material.dart';

class checkbalance extends StatefulWidget {
  const checkbalance({Key? key}) : super(key: key);

  @override
  _checkbalanceState createState() => _checkbalanceState();
}

class _checkbalanceState extends State<checkbalance> {
  final TextEditingController _controller = new TextEditingController();
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Check Balance'),
              ),
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
            body: Container(
                child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 340),
                child: Text(
                  'Upi Bank Accounts',
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
                          child: Row(children: [
                            SizedBox(
                                width: 50,
                                child: Icon(
                                  Icons.account_balance,
                                  color: Colors.white,
                                )),
                            Container(
                                height: 30,
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 250,
                                        child: Text(
                                          'Airtel Payments Bank Limited-xxxx123\n',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        )),
                                    SizedBox(
                                        width: 120,
                                        height: 20,
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                        )),
                                  ],
                                ))
                          ])))),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(children: [
                            SizedBox(
                                width: 50,
                                child: Icon(
                                  Icons.account_balance,
                                  color: Colors.white,
                                )),
                            Container(
                                height: 30,
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 250,
                                        child: Text(
                                          'Paytm Payments Bank-xxxx123\n',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        )),
                                    SizedBox(
                                        width: 120,
                                        height: 20,
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                        )),
                                  ],
                                ))
                          ])))),
              Padding(
                padding: const EdgeInsets.only(right: 400),
                child: Text(
                  'Wallets',
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
                          child: Row(children: [
                            SizedBox(
                                width: 50,
                                child: Icon(
                                  Icons.wallet_giftcard,
                                  color: Colors.white,
                                )),
                            Container(
                                height: 30,
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 250,
                                        child: Text(
                                          'Paytron Wallet',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        )),
                                    SizedBox(
                                        width: 120,
                                        height: 20,
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                        )),
                                  ],
                                ))
                          ])))),
            ]))));
  }
}
