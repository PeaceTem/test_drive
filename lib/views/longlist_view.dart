import 'package:flutter/material.dart';




class LongList extends StatelessWidget {

  const LongList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = List<String>.generate(10000, (i) => 'Item $i');


    return Scaffold(

        body: ListView.builder(
          itemCount: items.length,
          prototypeItem: ListTile(
            title: Text(items.first),
          ),
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
        ),
      );
  }
}



