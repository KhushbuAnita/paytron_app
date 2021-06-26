import 'package:flutter/material.dart';
import 'package:paytron_app/ui/Edit.dart';
import 'package:paytron_app/ui/Remove.dart';
import 'package:paytron_app/ui/Share.dart';
import 'package:paytron_app/ui/ViewHistory.dart';

class Bank extends StatefulWidget {
  const Bank({ Key? key }) : super(key: key);

  @override
  _BankState createState() => _BankState();
}

class _BankState extends State<Bank> {

  final TextEditingController  _controller= new TextEditingController();
  int i=0;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

    home: Scaffold(
      
        //AppBar
      body: Container(
       
        child: Column(
          
          children: [
            
Padding(
  padding: const EdgeInsets.all(16.0),
  child:   Container(
    decoration: BoxDecoration(
   color: Colors.blueAccent,
    borderRadius: BorderRadius.all(Radius.circular(20))
  ),
   
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
      
        children: [
      
            
      
                     Icon(Icons.person, size: 30,color: Colors.white,),
      
                     Container(
      
                       height: 30,
      
                       child: Row(
      
                         children: [
      
                           SizedBox(
      
                                              width:220,
      
                                              child: Text('Bank of Maharastra',style: TextStyle(
      color: Colors.white,
  ),)),
      
                           SizedBox(
      
                                              width: 70,
      
                                              child: Text('hello'),
                                                
      
         ),
      
                       
      
         
      
        ],
      
                       )
                     )
        ])
    )
  )
)
          ])
      ),
    
      
       
    
  

      
    )
     
    );
   
  }
}

