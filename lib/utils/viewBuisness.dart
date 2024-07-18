import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Viewbuisness extends StatefulWidget {
  const Viewbuisness({super.key});

  @override
  State<Viewbuisness> createState() => _ViewbuisnessState();
}

class _ViewbuisnessState extends State<Viewbuisness> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("View Buisness")),
    );
  }
}
