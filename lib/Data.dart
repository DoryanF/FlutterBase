import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

Future<Data> fetchData() async{
  final response = await http
  .get(Uri.parse("https://v2.jokeapi.dev/joke/Any?lang=fr"));

  if(response.statusCode == 200)
    {
      return Data.fromJson(jsonDecode(response.body)) ;
    }
  else
    {
      throw Exception('Failed to load joke');
    }

}


class Data {
   final String setup;
   final String delivery;

  const Data({
    required this.setup,
    required this.delivery,
  });

  factory Data.fromJson(Map<String, dynamic> json){
    return Data(setup: json["setup"], delivery: json["delivery"]);
  }
}