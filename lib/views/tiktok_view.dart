import 'package:flutter/material.dart';




class TikTokVideos extends StatefulWidget {
  const TikTokVideos({super.key});

  @override
  State<TikTokVideos> createState() => _Videos();
}

class _Videos extends State<TikTokVideos> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 12, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ListTile(
              title: const Text('Home'),
              selected: _selectedIndex == 0,
              onTap: () {
                // Update the state of the app
                _onItemTapped(0);
                // Then close the drawer
                // make the listtile have a border bottom
                // Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Business'),
              selected: _selectedIndex == 1,
              onTap: () {
                // Update the state of the app
                _onItemTapped(1);
                // Then close the drawer
                // Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('School'),
              selected: _selectedIndex == 2,
              onTap: () {
                // Update the state of the app
                _onItemTapped(2);
                // Then close the drawer
                // Navigator.pop(context);
              },
            ),
          ],
        ),
        Container(child: _widgetOptions[_selectedIndex]),
      ],
    );
  }
}




class TikTok extends StatelessWidget{
  const TikTok({super.key});

  @override
  Widget build(BuildContext context){
    return  DefaultTabController(
        length: 2,
        initialIndex: 1,
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            // toolbarHeight: 16,
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.now_widgets)),
                Tab(icon: Icon(Icons.favorite)),
                // Tab(icon: Icon(Icons.delete_forever)),
              ],
            ),
          ),
          body: const TabBarView(
            // viewportFraction: 0.5,
            children: [
              // Text("My name"),
              // Text("My name"),
              Center(child: Icon(Icons.now_widgets)),
              Center(child: Icon(Icons.favorite)),
            ],
          ),
        ),
      );
  }
}


