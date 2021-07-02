import 'package:flutter/material.dart';

class electricity extends StatefulWidget {
  const electricity({Key? key}) : super(key: key);

  @override
  _electricityState createState() => _electricityState();
}

class _electricityState extends State<electricity> {
  final TextEditingController _controller = new TextEditingController();
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Bijli Bill'),
            ),
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
                    hintText: "Type your Provider Name",
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
                padding: const EdgeInsets.only(right: 340),
                child: Text(
                  'Billers In Bihar',
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
                                          'North Bihar Power Distribution LTD\n',
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
                                          'South Bihar Power Distribution LTD',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        )),
                                  ],
                                ))
                          ])))),
              Padding(
                padding: const EdgeInsets.only(right: 400),
                child: Text(
                  'All India',
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
                                          'ABC Power Distribution LTD',
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
