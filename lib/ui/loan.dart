import 'package:flutter/material.dart';

class loan extends StatefulWidget {
  const loan({Key? key}) : super(key: key);

  @override
  _loanState createState() => _loanState();
}

class _loanState extends State<loan> {
  final TextEditingController _controller = new TextEditingController();
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
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
                hintText: "Type Your Lender Name",
                prefixIcon: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () => _controller.clear(),
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.help),
                  onPressed: () => _controller.clear(),
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
                      child: Row(children: [
                        SizedBox(
                            width: 50,
                            child: Icon(
                              Icons.power,
                              color: Colors.white,
                            )),
                        Container(
                            height: 30,
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 250,
                                    child: Text(
                                      'Bajaj Finance LTD',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
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
                              Icons.power,
                              color: Colors.white,
                            )),
                        Container(
                            height: 30,
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 250,
                                    child: Text(
                                      'Shree Ram Finance',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
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
                              Icons.power,
                              color: Colors.white,
                            )),
                        Container(
                            height: 30,
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 250,
                                    child: Text(
                                      'Manapuram Gold Loan',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )),
                              ],
                            ))
                      ])))),
        ]))));
  }
}
