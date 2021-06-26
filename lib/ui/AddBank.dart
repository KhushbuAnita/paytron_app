import 'package:flutter/material.dart';

class AddBank extends StatefulWidget {
  const AddBank({ Key? key }) : super(key: key);

  @override
  _AddBankState createState() => _AddBankState();
}

class _AddBankState extends State<AddBank> {

    List<String> images = [  
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",  
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",  
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",  
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",  
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"   
  ];
final TextEditingController  _controller= new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(  
      home: Scaffold(  
        appBar: AppBar(  
          title: Text("Flutter GridView Demo"),  
          backgroundColor: Colors.red,  
        ),  
        body: Column(
          children: [
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
              onPressed: () => _controller.clear(),
              icon: Icon(Icons.clear),
    ),
  ),
              ),
                     ),
            Container(  
                padding: EdgeInsets.all(12.0),  
                child: GridView.builder(  
                  itemCount: images.length,  
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
                      crossAxisCount: 3,  
                      crossAxisSpacing: 4.0,  
                      mainAxisSpacing: 4.0  
                  ),  
                  itemBuilder: (BuildContext context, int index){  
                    return Image.network(images[index]);  
                  },  
                )),
          ],
        ),  
      ),  
    );  
  }  
}  