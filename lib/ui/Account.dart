import 'package:flutter/material.dart';
import 'package:paytron_app/ui/Bank.dart';
import 'package:paytron_app/ui/BankTransfer.dart';
import 'package:paytron_app/ui/Upi.dart';

class Account extends StatefulWidget {
  const Account({ Key? key }) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {

   final TextEditingController  _controller= new TextEditingController();
  int i=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

    home: Scaffold(
      appBar: AppBar(
        title: Text('Send Money'),
      ),
        //AppBar
      body: Container(
       
        child: Column(
          
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
Container(child: TabScreen(),height: 300,),
           ] ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        // isExtended: true,
        child: Icon(Icons.add),
        backgroundColor: Colors.blueAccent,
        onPressed: () {
          setState(() {
            i++;
          });
        },
      ),
    )
     
      );
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
              tabs: [  
                Tab(icon: Icon(Icons.contacts), text: "Tab 1"),  
                Tab(icon: Icon(Icons.camera_alt), text: "Tab 2")  
              ],  
            ),  
          ),  
          body: TabBarView(  
            children: [  
              BankTransfer(),  
              Upi(),  
            ],  
          ),  
        ),  
      ),  
    );  
  }  
}  