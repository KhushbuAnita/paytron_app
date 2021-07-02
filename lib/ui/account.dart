import 'package:flutter/material.dart';

import 'bank.dart';
import 'Upi.dart';

class account extends StatefulWidget {
  const account({Key? key}) : super(key: key);

  @override
  _accountState createState() => _accountState();
}

class _accountState extends State<account> {
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
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                      icon: Icon(Icons.search),
                      onPressed: () => _controller.clear(),
                    ),
                  ),
                ),
              ),
              Container(
                child: TabScreen(),
                height: 500,
              ),
            ]),
          ),
        ));
  }
}

class TabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [Tab(text: "Bank"), Tab(text: "Upi")],
            ),
          ),
          body: TabBarView(
            children: [
              bank(),
              Upi(),
            ],
          ),
        ),
      ),
    );
  }
}
