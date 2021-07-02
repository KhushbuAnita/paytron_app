import 'dart:async';
import 'dart:convert';
import 'dart:developer' as dev;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';

Future<Album> createAlbum(String cn, String amt, String op) async {
  var queryParams = {
    'cn': cn,
    'amt': amt,
    'op': op,
    'uid': 'testalpha1@gmail.com',
    'pwd': 'testalpha1@123',
    "cir": 5,
    "reqid": 12544172981251
  };
  Xml2Json xml2json = new Xml2Json();
  final endpointUrl =
      'https://alpha1.mobikwik.com/recharge.do?uid=testalpha1@gmail.com&pwd=testalpha1@123&cn=$cn&op=$op&cir=5&amt=$amt&reqid=12544172981250';
  final response = await http.get(Uri.parse(endpointUrl), headers: {
    'ContentType': 'application/json',
    'X-MClient': '14',
    'Charset': 'utf-8'
  });
  dev.log(response.body);

  if (response.statusCode == 200) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    xml2json.parse(response.body);
    var jsonData = xml2json.toParker();
    return Album.fromJson(jsonDecode(jsonData));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }
}

class Album {
  final String status;

  final String txId;
  final String balance;
  final String discountprice;

  Album(
      {required this.status,
      required this.txId,
      required this.balance,
      required this.discountprice});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
        status: json['cn'],
        txId: json['amt'],
        balance: json['op'],
        discountprice: json['discount']);
  }
}

class Recharge extends StatefulWidget {
  Recharge({Key? key}) : super(key: key);

  @override
  _RechargeState createState() => _RechargeState();
}

class _RechargeState extends State<Recharge> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  Future<Album>? _futureAlbum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Data Example'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        child: (_futureAlbum == null) ? buildColumn() : buildFutureBuilder(),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: _controller,
          decoration: InputDecoration(hintText: 'Enter Mobile No.'),
        ),
        TextField(
          controller: _controller1,
          decoration: InputDecoration(hintText: 'Enter Amount'),
        ),
        TextField(
          controller: _controller2,
          decoration: InputDecoration(hintText: 'Enter Operator.'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _futureAlbum = createAlbum("9812312341", "50", "29");
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
        if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        if (snapshot.hasData) {
          return Text(snapshot.data!.status);
        }
        return CircularProgressIndicator();
      },
    );
  }
}
