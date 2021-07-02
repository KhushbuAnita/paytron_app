import 'package:flutter/material.dart';
import 'package:paytron_app/ui/Topoffer.dart';
import 'package:paytron_app/ui/categories.dart';

class offers extends StatefulWidget {
  const offers({Key? key}) : super(key: key);

  @override
  _offersState createState() => _offersState();
}

class _offersState extends State<offers> {
  final TextEditingController _controller = new TextEditingController();
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('All Offers'),
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
              tabs: [Tab(text: "TOP OFFERS"), Tab(text: "CATEGORIES")],
            ),
          ),
          body: TabBarView(
            children: [
              Topoffer(),
              categories(),
            ],
          ),
        ),
      ),
    );
  }
}
