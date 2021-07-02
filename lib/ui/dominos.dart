import 'package:flutter/material.dart';
import 'package:paytron_app/ui/Upi.dart';
import 'package:paytron_app/ui/upi1.dart';

class dominos extends StatefulWidget {
  const dominos({Key? key}) : super(key: key);

  @override
  _dominosState createState() => _dominosState();
}

class _dominosState extends State<dominos> {
  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async => false,
        child: new Scaffold(
            appBar: new AppBar(
              title: new Text("Buy Brand Voucher"),
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
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Container(
                    height: 30,
                    child: Row(children: [
                      Image.asset(
                        'dominos.png',
                        height: 65,
                        width: 35,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                            width: 220,
                            child: Text(
                              'Dominos E-Gift Card',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Center(
                            child: Text('VIEW DETAILS'),
                          ),
                        ),
                      ),
                    ]),
                  )
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(5.0),
                      ),
                    ),
                    hintText: "Enter Amount",
                    prefixIcon: IconButton(
                      icon: Icon(Icons.money_rounded),
                      onPressed: () => _controller.clear(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 345.0),
                child: Text(
                  'Min Rs 100 to Rs 1000',
                ),
              ),
              Divider(),
              Container(
                color: Colors.grey,
              ),
              Divider(),
              Container(
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Container(
                    height: 45,
                    child: Row(children: [
                      Image.asset(
                        'giftcardd.png',
                        height: 65,
                        width: 35,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                            width: 220,
                            child: Text(
                              'Pay Using Thorough Wallet \n total balance 0',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )),
                      ),
                    ]),
                  )
                ]),
              ),
              Divider(),
              Container(
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 417.0, top: 15),
                child: Text(
                  'Debit From',
                ),
              ),
              Container(
                child: TabScreen(),
                height: 70,
              ),
            ]))));
  }
}

class TabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Tab(text: "Upi"),
                  Tab(text: "Debit Card"),
                  Tab(text: "Creedit card"),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Container(
                  child: upi1(),
                ),
                Container(),
                Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
