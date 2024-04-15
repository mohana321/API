import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'modal.dart';
class cat extends StatefulWidget {
  const cat({super.key});

  @override
  State<cat> createState() => _catState();
}

class _catState extends State<cat> {

  Future<Catfact> fetch() async {
    var result = await http.get(
      Uri.parse("https://catfact.ninja/fact")
    );
    return Catfact.fromJson(jsonDecode(result.body));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

        ],
      ),
    );
  }
}

