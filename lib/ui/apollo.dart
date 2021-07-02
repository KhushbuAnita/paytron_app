import 'package:flutter/material.dart';
import 'package:paytron_app/main.dart';

class flipkart extends StatefulWidget {
  const flipkart({Key? key}) : super(key: key);

  @override
  _flipkartState createState() => _flipkartState();
}

class _flipkartState extends State<flipkart> {
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
                          'flipkart.png',
                          height: 65,
                          width: 35,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                              width: 220,
                              child: Text(
                                'Flipkart E-Vouchers',
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
                Divider(),
                Container(
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 350),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Choose Amount',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22.0, right: 22.0),
                  child: Center(
                    child: Container(
                      height: 40.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            child: Center(child: Text("100")),
                            width: 100.0,
                            color: Colors.red,
                          ),
                          Container(
                            child: Center(child: Text("500")),
                            width: 100.0,
                            color: Colors.blue,
                          ),
                          Container(
                            child: Center(child: Text("1000")),
                            width: 100.0,
                            color: Colors.green,
                          ),
                          Container(
                            child: Center(child: Text("2000")),
                            width: 100.0,
                            color: Colors.yellow,
                          ),
                          Container(
                            width: 100.0,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(),
                Container(
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 350.0),
                  child: Text(
                    'Debit From',
                  ),
                ),
                Container(
                  child: TabScreen(),
                  height: 70,
                ),
              ]),
            )));
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
                // add tabbar pages
              ],
            ),
          ),
        ),
      ),
    );
  }
}
