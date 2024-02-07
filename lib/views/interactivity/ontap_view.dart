

// ADD MATERIAL TOUCH TO APP
import 'package:flutter/material.dart';


class OnTapPage extends StatelessWidget {

  const OnTapPage({super.key});
  static const String title = "OnTap";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: const Center(
        child: MyButton(),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    // The InkWell wraps the custom flat button widget.
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      splashColor: const Color(0xFFDE2312),
      // When the user taps the button, show a snackbar.
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Tap'),
        ));
      },
      child: const Padding(
        padding: EdgeInsets.all(12),
        child: Text('Flat Button'),
      ),
    );
  }
}




