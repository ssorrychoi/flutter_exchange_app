import 'dart:convert';

import 'package:exchange/models/exchangeResult.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:date_format/date_format.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Exchange(),
    );
  }
}

class Exchange extends StatefulWidget {
  @override
  _ExchangeState createState() => _ExchangeState();
}

class _ExchangeState extends State<Exchange> {

  List<ExchangeResult> ex_result = <ExchangeResult>[];


  Future<ExchangeResult> fetchData() async{
    var today = formatDate(DateTime.now(),[yyyy,mm,dd]);
    var res = await http.get('https://www.koreaexim.go.kr/site/program/financial/exchangeJSON?authkey=YuJDk6yVp0Sby5cz6FB7rWsUrBYkvOKU&searchdate=${today}&data=AP01');
    final List<ExchangeResult> parsedResponse = jsonDecode(res.body).map<ExchangeResult>((json)=>ExchangeResult.fromJson(json)).toList();
    setState(() {
      ex_result.clear();
      ex_result.addAll(parsedResponse);
    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Info'),),
      body: Center(
        child: ListView.builder(
          itemCount: this.ex_result.length,
            itemBuilder: (context,index){
          final post = this.ex_result[index];
          return ListTile(
              title: Text(post.curNm),);
        }),
      )
    );
  }
}
