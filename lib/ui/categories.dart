import 'package:flutter/material.dart';

class categories extends StatefulWidget {
  const categories({Key? key}) : super(key: key);

  @override
  _categoriesState createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
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
                        Icons.local_grocery_store,
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
                                  ' Grocery \n 10 offers',
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
                        Icons.movie_sharp,
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
                                  ' Movie \n 2 offers',
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
                        Icons.party_mode,
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
                                  ' Entertenment \n 10 Offers',
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
                        Icons.food_bank,
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
                                  ' Foods \n 20 offers',
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
