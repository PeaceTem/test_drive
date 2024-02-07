import 'package:flutter/material.dart';
import 'package:test_drive/views/interactivity/ontap_view.dart';
import 'package:test_drive/views/interactivity/swipe_to_dismiss.dart';
import 'package:test_drive/views/interactivity/textfield_view.dart';
import 'package:test_drive/views/interactivity/retrieve_value.dart';
import 'package:test_drive/views/interactivity/manage_focus.dart';
import 'package:test_drive/views/interactivity/handle_changes.dart';
import 'package:test_drive/views/interactivity/form_validation.dart';




class Interactivity extends StatefulWidget {
  const Interactivity({super.key});

  final String title = "Interactivity";

  @override
  State<Interactivity> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Interactivity> {
  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    OnTapPage(),
    DismissSwipe(),
    MyCustomForm(),
    RetrieveForm(),
    FocusForm(),
    RetrieveInput(),
    FormWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue[900],
              ),
              child: const Text('Olugbongaga'),
            ),
            const DrawerButtonIcon(),
            ListTile(
              title: const Text('On tap'),
              selected: _selectedIndex == 0,
              onTap: () {
                // Update the state of the app
                _onItemTapped(0);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Swipe to dismiss'),
              selected: _selectedIndex == 1,
              onTap: () {
                // Update the state of the app
                _onItemTapped(1);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('TextField'),
              selected: _selectedIndex == 2,
              onTap: () {
                // Update the state of the app
                _onItemTapped(2);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Retrieve value of text field'),
              selected: _selectedIndex == 3,
              onTap: () {
                // Update the state of the app
                _onItemTapped(3);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Manage Focus'),
              selected: _selectedIndex == 4,
              onTap: () {
                // Update the state of the app
                _onItemTapped(4);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Retrieve Input Value'),
              selected: _selectedIndex == 5,
              onTap: () {
                // Update the state of the app
                _onItemTapped(5);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Form Validation'),
              selected: _selectedIndex == 6,
              onTap: () {
                // Update the state of the app
                _onItemTapped(6);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

