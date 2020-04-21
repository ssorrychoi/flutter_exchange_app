// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:convert';
import 'dart:math';

import 'package:exchange/models/exchangeResult.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:exchange/main.dart';
import 'package:http/http.dart' as http;

void main() {
  test('Http 테스트', () async {
    List<dynamic> list = [];
    var res = await http.get('https://www.koreaexim.go.kr/site/program/financial/exchangeJSON?authkey=YuJDk6yVp0Sby5cz6FB7rWsUrBYkvOKU&searchdate=20200421&data=AP01');
    expect(res.statusCode.toString(),'200');

//    ExchangeResult result = ExchangeResult.fromJson(jsonDecode(res.body));

//    print(result.result);

  });
}
