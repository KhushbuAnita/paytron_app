import 'package:flutter/material.dart';

class BankAccount extends StatefulWidget {
  const BankAccount({ Key? key }) : super(key: key);

  @override
  _BankAccountState createState() => _BankAccountState();
}

class _BankAccountState extends State<BankAccount> {

   final TextEditingController  _controller= new TextEditingController();
    int i=0;

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,

    home: Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text('Select a bank linked with 9304582309'),
            Text('we may have to send a sms from your mobile number to verify your device.standard sms charges may apply'),
            Text('is your bank account linked with different number?',style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 25,
          ),)
          ],
        ),
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
      
                                              child: Text('Nazia \n You:\$20-Paid',style: TextStyle(
      color: Colors.white,
  ),)),
      
                           SizedBox(
      
                                              width: 70,
      
                                              child: Text('25/03/2021',style: TextStyle(
      color: Colors.white,
  ),)),
                                                
      
      
                                              ],
      
                                                       ),
      
                       )
      
         
      
        ],
      
      
      
       ),
    ),
  ),
) ,

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
      
                                              child: Text('Nazia \n You:\$20-Paid',style: TextStyle(
      color: Colors.white,
  ),)),
      
                           SizedBox(
      
                                              width: 70,
      
                                              child: Text('25/03/2021',style: TextStyle(
      color: Colors.white,
  ),)),
                                                
      
      
                                              ],
      
                                                       ),
      
                       )
      
         
      
        ],
      
      
      
       ),
    ),
  ),
) ,
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
      
                                              child: Text('Nazia \n You:\$20-Paid',style: TextStyle(
      color: Colors.white,
  ),)),
      
                           SizedBox(
      
                                              width: 70,
      
                                              child: Text('25/03/2021',style: TextStyle(
      color: Colors.white,
  ),)),
                                                
      
      
                                              ],
      
                                                       ),
      
                       )
      
         
      
        ],
      
      
      
       ),
    ),
  ),
) 
],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        // isExtended: true,
       label: Text('Add Bank Account'),
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