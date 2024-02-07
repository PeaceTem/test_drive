import 'package:flutter/material.dart';
import 'dart:math';
import 'package:test_drive/models/item.dart';

List<Color?> backgroundColors(){
  List<List<Color?>> colors = [
    [Colors.blue[100],Colors.blue[900]],
    [Colors.amber[100], Colors.amber[900]], 
    [Colors.purple[100],Colors.purple[900]]
  ];

  int randomNumber = Random().nextInt(colors.length);
  return colors[randomNumber];
}



  List<Item> items = [
    Item("1", "Science & Technology", "10", "45s", Colors.blue[100], Colors.blue[900]),
    Item("2", "Science & Technology", "10", "385s", Colors.amber[100], Colors.amber[900]),
    Item("3", "Science & Technology", "10", "5s", Colors.purple[100], Colors.purple[900]),
    Item("4", "Science & Technology", "10", "59s", Colors.amber[100], Colors.amber[900]),
    Item("5", "Science & Technology", "10", "38s", Colors.blue[100], Colors.blue[900]),
    Item("6", "Science & Technology", "10", "45s", Colors.purple[100], Colors.purple[900]),
    Item("7", "Science & Technology", "10", "68s", Colors.amber[100], Colors.amber[900]),
    Item("8", "Science & Technology", "10", "35s", Colors.blue[100], Colors.blue[900]),
    Item("9", "Science & Technology", "10", "58s", Colors.amber[100], Colors.amber[900]),
    Item("10", "Science & Technology", "10", "45s", Colors.purple[100], Colors.purple[900]),
    Item("11", "Science & Technology", "10", "84s", Colors.amber[100], Colors.amber[900]),
    Item("12", "Science & Technology", "10", "45s", Colors.blue[100], Colors.blue[900]),
    Item("13", "Science & Technology", "10", "74s", Colors.purple[100], Colors.purple[900]),
    Item("14", "Science & Technology", "10", "45s", Colors.amber[100], Colors.amber[900]),
    Item("15", "Science & Technology", "10", "15s", Colors.blue[100], Colors.blue[900]),
    Item("16", "Science & Technology", "10", "38s", Colors.amber[100], Colors.amber[900]),
    Item("17", "Science & Technology", "10", "45s", Colors.purple[100], Colors.purple[900]),
    Item("18", "Science & Technology", "10", "75s", Colors.amber[100], Colors.amber[900]),
    Item("19", "Science & Technology", "10", "43s", Colors.blue[100], Colors.blue[900]),
    Item("20", "Science & Technology", "10", "60", Colors.amber[100], Colors.amber[900]),
    Item("21", "Science & Technology", "10", "45s", Colors.purple[100], Colors.purple[900]),
    Item("22", "Science & Technology", "10", "24s", Colors.amber[100], Colors.amber[900]),

  ];



class CurvedSurface extends StatelessWidget{
  const CurvedSurface({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      // body: BottomNavigationBarExample(),
      // body: Spotify(),
      body: Material(
        color: Colors.purple[400], 
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        const SizedBox(height: 120),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 248, 242, 247),
              borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.elliptical(40, 30), topEnd: Radius.elliptical(40, 30)
              )
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
              child: ListView.separated(
                padding: const EdgeInsets.all(10),
                itemCount: items.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 12,
                  );
                },
                itemBuilder: (context, index) {
                  final item = items[index];
                  final colors = backgroundColors();
                  return ListItem(
                    index: (index + 1).toString(),
                    title: item.title,
                    subTitle: item.subTitle,
                    seconds: item.seconds,
                    foregroundColor: colors[0],
                    backgroundColor: colors[1],
                  );
                },
              )
              )
            )
            ),
      ],
    )
        )

    ); 
  }
}

class ListItem extends StatelessWidget{
  const ListItem({
    super.key,
    required this.index,
    required this.title,
    required this.subTitle,
    required this.seconds,
    required this.foregroundColor,
    required this.backgroundColor,
    });

  final String index;
  final String title;
  final String subTitle;
  final String seconds;
  final Color? foregroundColor;
  final Color? backgroundColor;
  

  @override
  Widget build(BuildContext context){
    return Material(
      elevation: 6,
      color: foregroundColor,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: backgroundColor,
              child: Text(index, 
              style: const TextStyle(
                color: Colors.white, 
                fontWeight: FontWeight.w400,
                fontSize: 25
                )
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(title,
                  style: const TextStyle(
                    fontSize: 16, 
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 11, 5, 68)
                  ),
                  ),
                  // SizedBox(height: 2,),s
                  Text(subTitle,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 11, 5, 68)
                  ),
                  ),
                ],
              )
              ),
            const SizedBox(width: 8),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Icon(
                  Icons.alarm,
                  size: 12,
                  color: backgroundColor,),
                const SizedBox(height: 8,),
                Text(seconds,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 11, 5, 68)
                  ),
                  ),
              ],
            ),
          ]
          ), 
      ),
    );
  }
}
