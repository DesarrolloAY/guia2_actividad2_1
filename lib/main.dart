//import 'dart:io';
import 'package:flutter/material.dart'; // Material app
import 'package:guia2_actividad2_1/screens/hone_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  //statelesswidget "clase dinamica"
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //hacer wrap del container
    return const MaterialApp(
      debugShowCheckedModeBanner: false, //widget constante
      title: "Libro de las Plantas",
      home: PlantsBook(),
    );
  }
}

class PlantsBook extends StatelessWidget {
  const PlantsBook({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber.shade300,
          title: Text(
            'Medicina Natural',
            style: TextStyle(color: const Color.fromARGB(255, 8, 8, 8)),
          ),
          bottom: TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.question_mark), text: 'Question'),
              Tab(icon: Icon(Icons.people), text: 'People'),
              Tab(icon: Icon(Icons.info), text: 'Info'),
            ],
          ),
        ),
        body: TabBarView(children: [HomeScreen()]),
      ),
    );
  }
}
