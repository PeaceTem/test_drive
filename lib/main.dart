
import 'package:flutter/material.dart';
// import 'package:test_drive/views/buttom_navigation_view.dart';
// import 'package:test_drive/views/sliverappbar_view.dart';
// import 'package:test_drive/views/drag_and_drop_view.dart';
// import 'package:test_drive/views/curved_surface_view.dart';
import 'package:test_drive/views/interactivity/interactivity_drawertab_view.dart';


class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    // add Scaffold later
    return const Interactivity();
  }
}

void main() {
  runApp(
    const MaterialApp(
      title: "Olugbongaga",
      debugShowCheckedModeBanner: false,
      // home: ExampleDragAndDrop()
      home: HomePage()
    ));
}



















