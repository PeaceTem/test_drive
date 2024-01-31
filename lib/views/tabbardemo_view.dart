import 'package:flutter/material.dart';
import 'package:test_drive/views/navigation_view.dart';
import 'package:test_drive/views/longlist_view.dart';
import 'package:test_drive/views/cartab_view.dart';
import 'package:test_drive/views/secondtab_view.dart';



class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 16,
            bottom: const TabBar(
              tabs: [
                Tab(text: "cars", icon: Icon(Icons.directions_car)),
                Tab(text: "items", icon: Icon(Icons.menu_book_rounded)),
                Tab(text: "receipts", icon: Icon(Icons.receipt_long)),
                Tab(text: "routes", icon: Icon(Icons.router_rounded)),
                // Tab(text: "draw", icon: Icon(Icons.draw_rounded)),
              ],
            ),
            // title: const Text('Vehicles'),
          ),

          extendBodyBehindAppBar: true,

          body: const TabBarView(
            children: [
              CarTab(),
              SecondTab(),
              LongList(),
              FirstRoute(),
            ],
          ),
        ),
      );
  }
}







