import 'package:flutter/material.dart';
import 'package:test_drive/views/tiktok_view.dart';


class Profile extends StatelessWidget{
  const Profile({super.key});

  @override
  Widget build(BuildContext context){
    const TextStyle textStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
    Text text = const Text("Profile", style: textStyle);

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.wallet_giftcard),
        title: text,
        actions: const <Widget>[
          ElevatedButton(onPressed: null, child: Icon(Icons.notifications)),
          ElevatedButton(onPressed: null, child: Icon(Icons.search_rounded)),
          // ElevatedButton(onPressed: null, child: Icon(Icons.settings)),
          ],
      ),

      // floatingActionButton: const ElevatedButton(onPressed: null, child: Icon(Icons.play_arrow, size: 25)),
      // ListView()
      // body: const SingleChildScrollView(
      //   child: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   mainAxisSize: MainAxisSize.min,
      //   children: <Widget>[
      //     UserDetails(),
      //     Text("My name is Olumide"),
      //     SingleChildScrollView(child: TikTok(),),
      //     // Expanded(child: ),
      //   ],
      // ),
      // ),
      
      // body: ListView(
      //   children: const <Widget>[
      //     UserDetails(),
      //     // TikTok(),
      //     TikTokVideos(),
      //   ],
      // ),
      // body: const TikTokVideos(),
      body: const TikTok(),
    );
  }
}

