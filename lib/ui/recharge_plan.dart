import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';


Future<Album> fetchAlbum(String cn) async {
var queryParams = {
  'cn':cn
  
 
};
Xml2Json xml2json=new Xml2Json();
final endpointUrl ='https://alpha1.mobikwik.com/recharge.do?uid=testalpha1@gmail.com&pwd=testalpha1@123&cir=5&reqid=12544172981251';
final queryString = Uri.parse('queryParameters: $queryParams').query;
final requestUrl = endpointUrl + '?' + queryString;
final response = await http.get(Uri.parse(requestUrl), headers: {'ContentType':'application/json','X-MClient':'14','checksSum':'c/Jb9GVtPI+fW1sOgKlgdRyfVICd/u6LiiLH9IOLcIM=','Charset': 'utf-8'});

  if (response.statusCode == 200) {                                                                                                                                                                                                                                                                             
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
   print(response.body);
   
   return Album.fromJson(json.decode(response.body));
    
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }
}

class Album {
  
  final String cn;
  
  Album({  required this.cn});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
     cn: json['cn'] ,
     
      
    );
  }

  Map<String,dynamic> toJson()=>{
    "cn":cn,
  };
}

class RechargePlan extends StatefulWidget {
  const RechargePlan({ Key? key }) : super(key: key);

  @override
  _RechargePlanState createState() => _RechargePlanState();
}

class _RechargePlanState extends State<RechargePlan> {
 
  final TextEditingController _controller = TextEditingController();
  
  Future<Album>? _futureAlbum;


   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Select Recharge Plan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Select Recharge Plan'),
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
          decoration: InputDecoration(hintText: 'Search Plan'),
        ),
      
        ElevatedButton(
          onPressed: () {
            setState(() {
              _futureAlbum = fetchAlbum(_controller.text);
              
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
          return Text(snapshot.data.toString());
        } 
       else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return CircularProgressIndicator();
      },
    );

  }
}