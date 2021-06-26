import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


Future<Album> createAlbum(String op, String amt) async {
var queryParams = {
 'op':op,
       'amt':amt,
    
};

final endpointUrl ='https://alpha1.mobikwik.com/recharge/v1/rechargePlansAPI/1';
final queryString = Uri.parse('queryParameters: queryParams').query;
final requestUrl = endpointUrl + '?' + queryString;
final response = await http.get(Uri.parse(requestUrl), headers: {'ContentType':'application/json','X-MClient':'14','Charset': 'utf-8'});

  if (response.statusCode == 200) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
  
   return Album.fromJson(jsonDecode(response.body));
    
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }
}

class Album {
  
  final String op;
  final String amt;
 

  Album({  required this.op, required this.amt});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
     
      op: json['op'] as String,
      amt: json['amt'] as String,
    
    );
  }
}

class Plan extends StatefulWidget {
  const Plan({ Key? key }) : super(key: key);

  @override
  _PlanState createState() => _PlanState();
}

class _PlanState extends State<Plan> {

  final TextEditingController _controller = TextEditingController(text: '338');
  final TextEditingController _controller1 = TextEditingController(text: '47');
  
  Future<Album>? _futureAlbum;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Create Data Example'),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: (_futureAlbum == null) ? buildColumn() : buildFutureBuilder(),
        ),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: _controller,
          decoration: InputDecoration(hintText: 'Enter Operator '),
        ),
        TextField(
          controller: _controller1,
          decoration: InputDecoration(hintText: 'Enter Amount'),
         
        ),
       
        ElevatedButton(
          onPressed: () {
            setState(() {
              _futureAlbum = createAlbum(_controller.text,_controller1.text);
              
            });
          },
          child: Text('Create Data'),
        ),
      ],
    );
  }

  FutureBuilder<Album> buildFutureBuilder() {
    return FutureBuilder<Album>(
      future: _futureAlbum,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data!.op);
        } 
       else if (snapshot.hasData) {
          return Text(snapshot.data!.amt);

        }
       else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return CircularProgressIndicator();
      },
    );

  }
}