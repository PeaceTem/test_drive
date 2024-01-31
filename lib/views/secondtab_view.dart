import 'package:flutter/material.dart';
import 'package:test_drive/views/gridtab_view.dart';
import 'package:test_drive/views/return_data_view.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({super.key});


  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 25,
          bottom: const TabBar(
            tabs: [
              Tab(text: "items", icon: Icon(Icons.menu_book_rounded)),
              Tab(text: "data", icon: Icon(Icons.data_array)),
              Tab(text: "tab3", icon: Icon(Icons.tab_outlined)),
              Tab(text: "tab4", icon: Icon(Icons.tab_rounded)),
            ],
          ),
        ),
        
        extendBodyBehindAppBar: true,

        body: const TabBarView(
          children: [
            GridTab(),
            HomeScreen(),
            Icon(Icons.tab_outlined),
            Icon(Icons.tab_sharp),
          ],
        ),
      )
      );
    
    
    
  }
}
