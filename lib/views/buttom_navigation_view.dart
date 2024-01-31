import 'package:flutter/material.dart';
import 'package:test_drive/views/profile_view.dart';
import 'package:test_drive/views/drawertab_view.dart';
import 'package:test_drive/views/sliverappbar_view.dart';


class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    DrawerTab(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Profile(),
    // StretchableSliverAppBar(),
    SliverAppBarExample(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('BottomNavigationBar Sample'),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face_5),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.burst_mode_sharp),
            label: 'Spotify',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}





// Nav 2

// import 'package:flutter/material.dart';

// /// Flutter code sample for [NavigationBar].

// void main() => runApp(const NavigationBarApp());

// class NavigationBarApp extends StatelessWidget {
//   const NavigationBarApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(useMaterial3: true),
//       home: const NavigationExample(),
//     );
//   }
// }

// class NavigationExample extends StatefulWidget {
//   const NavigationExample({super.key});

//   @override
//   State<NavigationExample> createState() => _NavigationExampleState();
// }

// class _NavigationExampleState extends State<NavigationExample> {
//   int currentPageIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     final ThemeData theme = Theme.of(context);
//     return Scaffold(
//       bottomNavigationBar: NavigationBar(
//         onDestinationSelected: (int index) {
//           setState(() {
//             currentPageIndex = index;
//           });
//         },
//         indicatorColor: Colors.amber,
//         selectedIndex: currentPageIndex,
//         destinations: const <Widget>[
//           NavigationDestination(
//             selectedIcon: Icon(Icons.home),
//             icon: Icon(Icons.home_outlined),
//             label: 'Home',
//           ),
//           NavigationDestination(
//             icon: Badge(child: Icon(Icons.notifications_sharp)),
//             label: 'Notifications',
//           ),
//           NavigationDestination(
//             icon: Badge(
//               label: Text('2'),
//               child: Icon(Icons.messenger_sharp),
//             ),
//             label: 'Messages',
//           ),
//         ],
//       ),
//       body: <Widget>[
//         /// Home page
//         Card(
//           shadowColor: Colors.transparent,
//           margin: const EdgeInsets.all(8.0),
//           child: SizedBox.expand(
//             child: Center(
//               child: Text(
//                 'Home page',
//                 style: theme.textTheme.titleLarge,
//               ),
//             ),
//           ),
//         ),

//         /// Notifications page
//         const Padding(
//           padding: EdgeInsets.all(8.0),
//           child: Column(
//             children: <Widget>[
//               Card(
//                 child: ListTile(
//                   leading: Icon(Icons.notifications_sharp),
//                   title: Text('Notification 1'),
//                   subtitle: Text('This is a notification'),
//                 ),
//               ),
//               Card(
//                 child: ListTile(
//                   leading: Icon(Icons.notifications_sharp),
//                   title: Text('Notification 2'),
//                   subtitle: Text('This is a notification'),
//                 ),
//               ),
//             ],
//           ),
//         ),

//         /// Messages page
//         ListView.builder(
//           reverse: true,
//           itemCount: 2,
//           itemBuilder: (BuildContext context, int index) {
//             if (index == 0) {
//               return Align(
//                 alignment: Alignment.centerRight,
//                 child: Container(
//                   margin: const EdgeInsets.all(8.0),
//                   padding: const EdgeInsets.all(8.0),
//                   decoration: BoxDecoration(
//                     color: theme.colorScheme.primary,
//                     borderRadius: BorderRadius.circular(8.0),
//                   ),
//                   child: Text(
//                     'Hello',
//                     style: theme.textTheme.bodyLarge!
//                         .copyWith(color: theme.colorScheme.onPrimary),
//                   ),
//                 ),
//               );
//             }
//             return Align(
//               alignment: Alignment.centerLeft,
//               child: Container(
//                 margin: const EdgeInsets.all(8.0),
//                 padding: const EdgeInsets.all(8.0),
//                 decoration: BoxDecoration(
//                   color: theme.colorScheme.primary,
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//                 child: Text(
//                   'Hi!',
//                   style: theme.textTheme.bodyLarge!
//                       .copyWith(color: theme.colorScheme.onPrimary),
//                 ),
//               ),
//             );
//           },
//         ),
//       ][currentPageIndex],
//     );
//   }
// }



// Nav 3


// import 'package:flutter/material.dart';

// /// Flutter code sample for [BottomNavigationBar].

// void main() => runApp(const BottomNavigationBarExampleApp());

// class BottomNavigationBarExampleApp extends StatelessWidget {
//   const BottomNavigationBarExampleApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: BottomNavigationBarExample(),
//     );
//   }
// }

// class BottomNavigationBarExample extends StatefulWidget {
//   const BottomNavigationBarExample({super.key});

//   @override
//   State<BottomNavigationBarExample> createState() =>
//       _BottomNavigationBarExampleState();
// }

// class _BottomNavigationBarExampleState
//     extends State<BottomNavigationBarExample> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Index 0: Home',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 1: Business',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 2: School',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 3: Settings',
//       style: optionStyle,
//     ),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('BottomNavigationBar Sample'),
//       ),
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//             backgroundColor: Colors.red,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//             label: 'Business',
//             backgroundColor: Colors.green,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             label: 'School',
//             backgroundColor: Colors.purple,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: 'Settings',
//             backgroundColor: Colors.pink,
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }



// Nav 4

// import 'package:flutter/material.dart';

// /// Flutter code sample for [BottomNavigationBar].

// void main() => runApp(const BottomNavigationBarExampleApp());

// class BottomNavigationBarExampleApp extends StatelessWidget {
//   const BottomNavigationBarExampleApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: BottomNavigationBarExample(),
//     );
//   }
// }

// class BottomNavigationBarExample extends StatefulWidget {
//   const BottomNavigationBarExample({super.key});

//   @override
//   State<BottomNavigationBarExample> createState() =>
//       _BottomNavigationBarExampleState();
// }

// class _BottomNavigationBarExampleState
//     extends State<BottomNavigationBarExample> {
//   int _selectedIndex = 0;
//   final ScrollController _homeController = ScrollController();

//   Widget _listViewBody() {
//     return ListView.separated(
//         controller: _homeController,
//         itemBuilder: (BuildContext context, int index) {
//           return Center(
//             child: Text(
//               'Item $index',
//             ),
//           );
//         },
//         separatorBuilder: (BuildContext context, int index) => const Divider(
//               thickness: 1,
//             ),
//         itemCount: 50);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('BottomNavigationBar Sample'),
//       ),
//       body: _listViewBody(),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.open_in_new_rounded),
//             label: 'Open Dialog',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         onTap: (int index) {
//           switch (index) {
//             case 0:
//               // only scroll to top when current index is selected.
//               if (_selectedIndex == index) {
//                 _homeController.animateTo(
//                   0.0,
//                   duration: const Duration(milliseconds: 500),
//                   curve: Curves.easeOut,
//                 );
//               }
//             case 1:
//               showModal(context);
//           }
//           setState(
//             () {
//               _selectedIndex = index;
//             },
//           );
//         },
//       ),
//     );
//   }

//   void showModal(BuildContext context) {
//     showDialog<void>(
//       context: context,
//       builder: (BuildContext context) => AlertDialog(
//         content: const Text('Example Dialog'),
//         actions: <TextButton>[
//           TextButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             child: const Text('Close'),
//           )
//         ],
//       ),
//     );
//   }
// }

